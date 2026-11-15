/* Petits comportements du site : menu mobile, onglets, téléphone, retour en haut, formulaire */
(function () {
  // Menu mobile
  var menu = document.querySelector('.mobile-menu');
  document.querySelectorAll('[data-open-menu]').forEach(function (b) {
    b.addEventListener('click', function () { menu.classList.add('open'); });
  });
  document.querySelectorAll('[data-close-menu]').forEach(function (b) {
    b.addEventListener('click', function () { menu.classList.remove('open'); });
  });
  document.querySelectorAll('.mobile-menu .folder').forEach(function (b) {
    b.addEventListener('click', function () { b.parentElement.classList.toggle('open'); });
  });

  // "Afficher le téléphone" : 1er clic affiche le numéro, 2e clic appelle
  document.querySelectorAll('.reveal-phone').forEach(function (a) {
    a.addEventListener('click', function (e) {
      if (!a.dataset.shown) {
        e.preventDefault();
        a.textContent = a.dataset.phone;
        a.dataset.shown = '1';
      }
    });
  });

  // Onglets (page Présentation)
  document.querySelectorAll('.tabs').forEach(function (tabs) {
    var buttons = tabs.querySelectorAll('.tabs-nav button');
    var panels = tabs.querySelectorAll('.tab-panel');
    buttons.forEach(function (btn, i) {
      btn.addEventListener('click', function () {
        buttons.forEach(function (b) { b.classList.remove('active'); });
        panels.forEach(function (p) { p.classList.remove('active'); });
        btn.classList.add('active');
        panels[i].classList.add('active');
      });
    });
  });

  // Bouton retour en haut
  var top = document.getElementById('backtotop');
  if (top) {
    window.addEventListener('scroll', function () {
      top.classList.toggle('show', window.scrollY > 400);
    });
    top.addEventListener('click', function () { window.scrollTo({ top: 0, behavior: 'smooth' }); });
  }

  // Formulaire de contact (envoi via Web3Forms, sans recharger la page)
  var form = document.getElementById('contact-form');
  if (form) {
    form.addEventListener('submit', function (e) {
      e.preventDefault();
      var status = form.querySelector('.form-status');
      var btn = form.querySelector('button[type=submit]');
      btn.disabled = true;
      status.textContent = 'Envoi en cours…';
      var data = new FormData(form);
      data.set('subject', 'Site internet – ' + (data.get('Sujet') || 'Nouveau message'));
      data.set('from_name', ((data.get('Prénom') || '') + ' ' + (data.get('Nom') || '')).trim());
      fetch(form.action, { method: 'POST', body: data, headers: { Accept: 'application/json' } })
        .then(function (r) { return r.json(); })
        .then(function (res) {
          if (res.success) {
            form.reset();
            status.textContent = 'Merci, votre message a bien été envoyé.';
          } else {
            status.textContent = "Le message n'a pas pu être envoyé. Merci d'appeler le 06 98 02 05 42.";
          }
        })
        .catch(function () {
          status.textContent = "Le message n'a pas pu être envoyé. Merci d'appeler le 06 98 02 05 42.";
        })
        .finally(function () { btn.disabled = false; });
    });
  }
})();
