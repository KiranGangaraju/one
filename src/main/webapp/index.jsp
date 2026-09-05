<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Grandeur — Luxe E‑Commerce</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,600;0,700;1,400&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
  <style>
    /* ----- GRAND RESET & VARIABLES ----- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #0c0b0e;
      --bg-card: #18161b;
      --bg-surface: #221f26;
      --gold: #d4af37;
      --gold-light: #f4e3b0;
      --gold-faint: rgba(212, 175, 55, 0.10);
      --text: #f2efe9;
      --text-muted: #9b96a3;
      --border-gold: rgba(212, 175, 55, 0.25);
      --shadow-gold: 0 12px 48px rgba(212, 175, 55, 0.08);
      --radius: 20px;
      --radius-sm: 12px;
      --transition: 0.4s cubic-bezier(0.22, 1, 0.36, 1);
    }

    body {
      background: var(--bg);
      color: var(--text);
      font-family: 'Inter', sans-serif;
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
    }

    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }
    input { font-family: inherit; }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* ----- UTILITY ----- */
    .gold { color: var(--gold); }
    .muted { color: var(--text-muted); }
    .text-center { text-align: center; }

    /* ----- BUTTONS (GRAND) ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 14px 36px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      letter-spacing: 0.5px;
      transition: var(--transition);
      border: 1px solid transparent;
      background: transparent;
    }

    .btn-primary {
      background: var(--gold);
      color: #0c0b0e;
      border-color: var(--gold);
      box-shadow: 0 4px 20px rgba(212, 175, 55, 0.20);
    }
    .btn-primary:hover {
      background: #c9a536;
      border-color: #c9a536;
      transform: translateY(-3px);
      box-shadow: 0 12px 36px rgba(212, 175, 55, 0.30);
    }

    .btn-outline-gold {
      border-color: var(--border-gold);
      color: var(--gold);
    }
    .btn-outline-gold:hover {
      background: var(--gold);
      color: #0c0b0e;
      border-color: var(--gold);
      transform: translateY(-3px);
    }

    .btn-ghost-white {
      border-color: rgba(255, 255, 255, 0.15);
      color: #fff;
    }
    .btn-ghost-white:hover {
      background: rgba(255, 255, 255, 0.06);
      border-color: rgba(255, 255, 255, 0.30);
      transform: translateY(-3px);
    }

    /* ----- HEADER (GRAND) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(12, 11, 14, 0.78);
      backdrop-filter: blur(18px) saturate(1.2);
      -webkit-backdrop-filter: blur(18px);
      border-bottom: 1px solid rgba(212, 175, 55, 0.12);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 14px 0;
      min-height: 74px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-family: 'Cormorant Garamond', serif;
      font-weight: 700;
      font-size: 28px;
      letter-spacing: 1px;
      color: var(--text);
    }
    .brand .gold {
      color: var(--gold);
      font-weight: 600;
    }
    .brand i {
      font-size: 26px;
      color: var(--gold);
    }

    nav.main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
    }
    nav.main-nav li a {
      padding: 8px 18px;
      border-radius: 40px;
      font-size: 14px;
      font-weight: 500;
      color: var(--text-muted);
      transition: var(--transition);
      letter-spacing: 0.3px;
    }
    nav.main-nav li a:hover,
    nav.main-nav li a.active {
      background: rgba(212, 175, 55, 0.08);
      color: var(--gold);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .header-actions .icon-btn {
      width: 44px;
      height: 44px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 18px;
      color: var(--text-muted);
      transition: var(--transition);
      position: relative;
    }
    .header-actions .icon-btn:hover {
      background: rgba(212, 175, 55, 0.08);
      color: var(--gold);
    }

    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--gold);
      color: #0c0b0e;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid var(--bg);
    }

    .mobile-toggle {
      display: none;
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.03);
      color: var(--text);
      font-size: 20px;
      border: 1px solid rgba(255, 255, 255, 0.06);
    }
    #mobileMenu {
      display: none;
      background: var(--bg);
      border-top: 1px solid rgba(212, 175, 55, 0.08);
      padding: 16px 0 24px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 14px;
      padding: 12px 18px;
      border-radius: var(--radius-sm);
      color: var(--text-muted);
      font-weight: 500;
      transition: var(--transition);
    }
    #mobileMenu ul li a:hover {
      background: rgba(212, 175, 55, 0.06);
      color: var(--gold);
    }

    /* ----- HERO (GRAND) ----- */
    .hero {
      position: relative;
      min-height: 600px;
      display: flex;
      align-items: center;
      padding: 60px 0 70px;
      margin: 20px 24px 0;
      border-radius: var(--radius);
      overflow: hidden;
      background: linear-gradient(145deg, #121016 0%, #1f1b24 100%);
      border: 1px solid rgba(212, 175, 55, 0.10);
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1601924994987-69e26d50dc26?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
      opacity: 0.28;
      z-index: 0;
    }
    .hero .container {
      position: relative;
      z-index: 1;
    }
    .hero .gold-tag {
      display: inline-block;
      background: rgba(212, 175, 55, 0.15);
      color: var(--gold);
      padding: 6px 22px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 13px;
      letter-spacing: 2px;
      text-transform: uppercase;
      margin-bottom: 18px;
      border: 1px solid rgba(212, 175, 55, 0.15);
    }
    .hero h1 {
      font-family: 'Cormorant Garamond', serif;
      font-size: 68px;
      font-weight: 700;
      line-height: 1.05;
      max-width: 660px;
      margin-bottom: 16px;
      color: #fff;
    }
    .hero h1 .gold {
      color: var(--gold);
    }
    .hero p {
      font-size: 17px;
      color: rgba(255, 255, 255, 0.70);
      max-width: 460px;
      margin-bottom: 32px;
      font-weight: 300;
      letter-spacing: 0.2px;
    }
    .hero .actions {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }

    /* ----- SECTION ----- */
    .section {
      padding: 64px 0;
    }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 16px;
      margin-bottom: 40px;
      flex-wrap: wrap;
    }
    .section-header .title-group h2 {
      font-family: 'Cormorant Garamond', serif;
      font-size: 38px;
      font-weight: 600;
      letter-spacing: 0.5px;
      color: #fff;
    }
    .section-header .title-group p {
      color: var(--text-muted);
      font-size: 15px;
      margin-top: 4px;
      font-weight: 300;
    }
    .section-header .view-all {
      color: var(--gold);
      font-weight: 500;
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 14px;
      transition: var(--transition);
      border-bottom: 1px solid transparent;
      padding-bottom: 4px;
    }
    .section-header .view-all:hover {
      border-bottom-color: var(--gold);
      gap: 14px;
    }

    /* ----- CATEGORIES (GRAND) ----- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }
    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 28px 14px;
      text-align: center;
      border: 1px solid rgba(255, 255, 255, 0.03);
      transition: var(--transition);
      cursor: pointer;
      backdrop-filter: blur(4px);
    }
    .cat-card:hover {
      transform: translateY(-8px);
      border-color: var(--gold);
      box-shadow: var(--shadow-gold);
    }
    .cat-card .icon-wrap {
      width: 64px;
      height: 64px;
      border-radius: 50%;
      background: rgba(212, 175, 55, 0.08);
      display: grid;
      place-items: center;
      margin: 0 auto 14px;
      font-size: 26px;
      color: var(--gold);
      transition: var(--transition);
    }
    .cat-card:hover .icon-wrap {
      background: var(--gold);
      color: #0c0b0e;
    }
    .cat-card h4 {
      font-size: 16px;
      font-weight: 600;
      letter-spacing: 0.3px;
    }
    .cat-card .count {
      font-size: 13px;
      color: var(--text-muted);
      margin-top: 4px;
    }

    /* ----- PRODUCTS (GRAND) ----- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      border: 1px solid rgba(255, 255, 255, 0.03);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-8px);
      border-color: var(--gold);
      box-shadow: var(--shadow-gold);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--bg-surface);
      aspect-ratio: 1 / 1;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.05);
    }
    .product-card .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--gold);
      color: #0c0b0e;
      padding: 4px 16px;
      border-radius: 40px;
      font-size: 11px;
      font-weight: 700;
      letter-spacing: 0.6px;
    }
    .product-card .badge.sale {
      background: #b8860b;
      color: #fff;
    }
    .product-card .wish-btn {
      position: absolute;
      top: 14px;
      right: 14px;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: rgba(12, 11, 14, 0.60);
      backdrop-filter: blur(8px);
      display: grid;
      place-items: center;
      color: var(--text-muted);
      font-size: 16px;
      transition: var(--transition);
      border: 1px solid rgba(255, 255, 255, 0.05);
    }
    .product-card .wish-btn:hover {
      color: var(--gold);
      background: rgba(12, 11, 14, 0.85);
      border-color: var(--gold);
    }
    .product-card .body {
      padding: 18px 18px 10px;
      flex: 1;
    }
    .product-card .body .category-tag {
      font-size: 11px;
      color: var(--text-muted);
      text-transform: uppercase;
      letter-spacing: 0.8px;
      font-weight: 500;
    }
    .product-card .body h5 {
      font-size: 16px;
      font-weight: 600;
      margin: 4px 0 6px;
      line-height: 1.3;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: baseline;
      gap: 10px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 19px;
      color: var(--gold);
    }
    .product-card .body .old-price {
      color: var(--text-muted);
      text-decoration: line-through;
      font-size: 14px;
    }
    .product-card .body .rating {
      color: var(--gold);
      font-size: 13px;
      margin-top: 4px;
    }
    .product-card .body .rating span {
      color: var(--text-muted);
      margin-left: 4px;
    }
    .product-card .footer {
      padding: 0 18px 18px;
    }
    .product-card .footer .add-btn {
      width: 100%;
      padding: 12px;
      border-radius: 60px;
      background: rgba(212, 175, 55, 0.06);
      border: 1px solid rgba(212, 175, 55, 0.15);
      color: var(--gold);
      font-weight: 600;
      font-size: 14px;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .product-card .footer .add-btn:hover {
      background: var(--gold);
      color: #0c0b0e;
      border-color: var(--gold);
    }
    .product-card .footer .add-btn.added {
      background: #2a7a62;
      border-color: #2a7a62;
      color: #fff;
    }

    /* ----- DEAL (GRAND) ----- */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      border: 1px solid rgba(212, 175, 55, 0.08);
    }
    .deal-wrap .deal-img {
      flex: 0 0 48%;
      min-height: 300px;
      background: var(--bg-surface);
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 44px 48px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      background: rgba(212, 175, 55, 0.12);
      color: var(--gold);
      padding: 6px 18px;
      border-radius: 60px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 1px;
      align-self: flex-start;
      margin-bottom: 12px;
      border: 1px solid rgba(212, 175, 55, 0.10);
    }
    .deal-wrap .deal-content h3 {
      font-family: 'Cormorant Garamond', serif;
      font-size: 34px;
      font-weight: 600;
      margin-bottom: 4px;
    }
    .deal-wrap .deal-content .desc {
      color: var(--text-muted);
      margin-bottom: 16px;
      font-weight: 300;
    }
    .deal-wrap .deal-content .price-big {
      font-size: 38px;
      font-weight: 700;
      color: var(--gold);
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 22px;
      font-weight: 300;
      color: var(--text-muted);
      text-decoration: line-through;
      margin-left: 12px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 14px;
      color: var(--text-muted);
      margin: 6px 0 18px;
    }
    .deal-wrap .deal-content .stock strong {
      color: var(--gold);
    }
    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 10px 0 20px;
    }
    .timer-box {
      background: var(--bg-surface);
      border: 1px solid rgba(212, 175, 55, 0.06);
      padding: 10px 18px;
      border-radius: var(--radius-sm);
      min-width: 68px;
      text-align: center;
    }
    .timer-box .num {
      font-size: 28px;
      font-weight: 700;
      color: var(--gold);
      line-height: 1.2;
    }
    .timer-box .label {
      font-size: 11px;
      color: var(--text-muted);
      text-transform: uppercase;
      letter-spacing: 0.8px;
    }

    /* ----- TESTIMONIALS (GRAND) ----- */
    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 4px; }
    .testimonials-scroll::-webkit-scrollbar-thumb { background: var(--gold); border-radius: 60px; }
    .testimonial-card {
      flex: 0 0 340px;
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 28px 28px 24px;
      border: 1px solid rgba(255, 255, 255, 0.02);
      scroll-snap-align: start;
      transition: var(--transition);
    }
    .testimonial-card:hover {
      border-color: rgba(212, 175, 55, 0.15);
      box-shadow: var(--shadow-gold);
    }
    .testimonial-card .stars { color: var(--gold); font-size: 16px; letter-spacing: 2px; margin-bottom: 10px; }
    .testimonial-card blockquote { font-size: 15px; line-height: 1.6; color: var(--text); font-style: italic; margin-bottom: 14px; }
    .testimonial-card .author { display: flex; align-items: center; gap: 14px; }
    .testimonial-card .author .avatar { width: 48px; height: 48px; border-radius: 50%; object-fit: cover; border: 2px solid rgba(212, 175, 55, 0.15); }
    .testimonial-card .author .name { font-weight: 600; font-size: 15px; }
    .testimonial-card .author .role { font-size: 13px; color: var(--text-muted); }

    /* ----- NEWSLETTER (GRAND) ----- */
    .newsletter-wrap {
      background: linear-gradient(145deg, #1a1720, #121016);
      border-radius: var(--radius);
      padding: 56px 60px;
      border: 1px solid rgba(212, 175, 55, 0.06);
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 32px;
      flex-wrap: wrap;
    }
    .newsletter-wrap .text h3 {
      font-family: 'Cormorant Garamond', serif;
      font-size: 32px;
      font-weight: 600;
    }
    .newsletter-wrap .text p {
      color: var(--text-muted);
      font-weight: 300;
    }
    .newsletter-wrap form {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 480px;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 200px;
      padding: 16px 22px;
      border-radius: 60px;
      border: 1px solid rgba(255, 255, 255, 0.06);
      background: rgba(255, 255, 255, 0.02);
      color: #fff;
      font-size: 15px;
      transition: var(--transition);
      outline: none;
    }
    .newsletter-wrap form input:focus {
      border-color: var(--gold);
      background: rgba(255, 255, 255, 0.04);
    }
    .newsletter-wrap form input::placeholder { color: var(--text-muted); }
    .newsletter-wrap form .btn {
      background: var(--gold);
      color: #0c0b0e;
      border-color: var(--gold);
      padding: 16px 36px;
    }
    .newsletter-wrap form .btn:hover { background: #c9a536; border-color: #c9a536; }
    #newsletterMsg { margin-top: 12px; font-size: 14px; width: 100%; color: var(--gold); }

    /* ----- FOOTER (GRAND) ----- */
    footer {
      margin-top: 16px;
      padding: 48px 0 28px;
      border-top: 1px solid rgba(212, 175, 55, 0.04);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 32px;
    }
    .footer-grid .brand-col .brand { font-size: 24px; margin-bottom: 8px; }
    .footer-grid .brand-col p { color: var(--text-muted); font-size: 14px; max-width: 300px; font-weight: 300; }
    .footer-grid .brand-col .socials { display: flex; gap: 12px; margin-top: 16px; }
    .footer-grid .brand-col .socials a {
      width: 42px; height: 42px; border-radius: 50%;
      background: rgba(255, 255, 255, 0.02);
      border: 1px solid rgba(255, 255, 255, 0.04);
      display: grid; place-items: center;
      color: var(--text-muted);
      transition: var(--transition);
    }
    .footer-grid .brand-col .socials a:hover { background: var(--gold); color: #0c0b0e; border-color: var(--gold); }
    .footer-grid .col h5 { font-weight: 600; font-size: 14px; margin-bottom: 14px; color: #fff; letter-spacing: 0.5px; }
    .footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 8px; }
    .footer-grid .col ul li a { color: var(--text-muted); font-size: 14px; transition: var(--transition); font-weight: 300; }
    .footer-grid .col ul li a:hover { color: var(--gold); }
    .footer-bottom { text-align: center; padding-top: 20px; border-top: 1px solid rgba(255, 255, 255, 0.02); color: var(--text-muted); font-size: 13px; }

    /* ----- RESPONSIVE ----- */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 28px; }
    }
    @media (max-width: 992px) {
      .hero h1 { font-size: 48px; }
      .hero { min-height: 420px; margin: 16px 16px 0; padding: 40px 0; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 220px; }
      .deal-wrap .deal-content { padding: 28px 30px; }
      .newsletter-wrap { flex-direction: column; text-align: center; padding: 36px 28px; }
      .newsletter-wrap form { max-width: 100%; }
    }
    @media (max-width: 768px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 16px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
      .hero h1 { font-size: 34px; }
      .section-header .title-group h2 { font-size: 28px; }
      .deal-wrap .deal-content h3 { font-size: 26px; }
      .deal-wrap .deal-content .price-big { font-size: 30px; }
      .timer-box { min-width: 56px; padding: 8px 12px; }
      .timer-box .num { font-size: 20px; }
      .footer-grid { grid-template-columns: 1fr; gap: 20px; }
      .brand { font-size: 22px; }
      .header-actions .icon-btn { width: 38px; height: 38px; font-size: 16px; }
      .cart-count { width: 18px; height: 18px; font-size: 10px; }
      .testimonial-card { flex: 0 0 280px; }
    }
    @media (max-width: 480px) {
      .hero { margin: 10px 10px 0; min-height: 300px; border-radius: var(--radius-sm); padding: 24px 0; }
      .hero h1 { font-size: 28px; }
      .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .categories-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .container { padding: 0 14px; }
      .deal-wrap .deal-content { padding: 20px 16px; }
      .deal-wrap .deal-img { flex: 0 0 160px; }
      .newsletter-wrap { padding: 24px 16px; }
      .newsletter-wrap .text h3 { font-size: 24px; }
      .product-card .body { padding: 12px 12px 6px; }
      .product-card .body h5 { font-size: 13px; }
      .product-card .body .price { font-size: 15px; }
      .product-card .footer { padding: 0 12px 12px; }
      .product-card .footer .add-btn { font-size: 12px; padding: 10px; }
      .timer-box { min-width: 46px; padding: 6px 8px; }
      .timer-box .num { font-size: 16px; }
      .cat-card { padding: 16px 10px; }
      .cat-card .icon-wrap { width: 48px; height: 48px; font-size: 20px; }
    }
  </style>
</head>
<body>
  <!-- HEADER -->
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:10px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#"><i class="fas fa-crown"></i><span>Grand<span class="gold">eur</span></span></a>
      </div>
      <nav class="main-nav" id="mainNav">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Collections</a></li>
          <li><a href="#products"><i class="fas fa-gem"></i> Luxe</a></li>
          <li><a href="#deals"><i class="fas fa-clock"></i> Offer</a></li>
          <li><a href="#testimonials"><i class="fas fa-quote-right"></i> Voices</a></li>
        </ul>
      </nav>
      <div style="display:flex;align-items:center;gap:6px;">
        <div class="header-actions">
          <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrap">
            <button class="icon-btn" id="cartBtn"><i class="fas fa-shopping-bag"></i></button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>
    <!-- mobile menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Collections</a></li>
          <li><a href="#products"><i class="fas fa-gem"></i> Luxe</a></li>
          <li><a href="#deals"><i class="fas fa-clock"></i> Offer</a></li>
          <li><a href="#testimonials"><i class="fas fa-quote-right"></i> Voices</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account</a></li>
          <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main>
    <!-- HERO -->
    <section class="hero" aria-label="Grand hero">
      <div class="container">
        <div class="gold-tag"><i class="fas fa-crown"></i> 2026 · Exceptional</div>
        <h1>Where <span class="gold">Timeless</span><br>Elegance Meets Craft</h1>
        <p>Discover a curated world of luxury — each piece chosen for its story, quality, and enduring beauty.</p>
        <div class="actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Explore Collection</button>
          <button class="btn btn-ghost-white" id="exploreDeals"><i class="fas fa-gift"></i> Exclusive Offer</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories">
      <div class="container">
        <div class="section-header">
          <div class="title-group"><h2>Curated Collections</h2><p>discover by passion</p></div>
          <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="categories-grid" id="categoriesGrid"></div>
      </div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products">
      <div class="container">
        <div class="section-header">
          <div class="title-group"><h2>Signature Pieces</h2><p>timeless designs, modern soul</p></div>
          <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="products-grid" id="productsGrid"></div>
      </div>
    </section>

    <!-- DEAL -->
    <section class="section" id="deals">
      <div class="container">
        <div class="section-header">
          <div class="title-group"><h2>✦ Golden Hour</h2><p>limited edition, unlimited allure</p></div>
        </div>
        <div class="deal-wrap">
          <div class="deal-img"><img src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=800&q=80" alt="Luxury watch" loading="lazy"></div>
          <div class="deal-content">
            <span class="tag"><i class="fas fa-bolt"></i> 48h exclusive</span>
            <h3>Heritage Chronograph</h3>
            <p class="desc">Precision engineering meets refined aesthetics. A statement for the discerning.</p>
            <div><span class="price-big">$2,850 <span class="old">$3,650</span></span></div>
            <p class="stock">Only <strong>7</strong> pieces available</p>
            <div class="timer-grid" id="dealTimer">
              <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
              <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
              <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
              <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
            </div>
            <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Secure now</button>
          </div>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section" id="testimonials">
      <div class="container">
        <div class="section-header">
          <div class="title-group"><h2>Whispers of Excellence</h2><p>what our patrons say</p></div>
        </div>
        <div class="testimonials-scroll" id="testimonialsList"></div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section">
      <div class="container">
        <div class="newsletter-wrap">
          <div class="text"><h3>Join the Inner Circle</h3><p>Access private sales & first looks</p></div>
          <form id="newsletterForm" onsubmit="return false;">
            <input type="email" id="newsletterEmail" placeholder="Your e‑mail address" aria-label="Email" required />
            <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
            <div id="newsletterMsg"></div>
          </form>
        </div>
      </div>
    </section>
  </main>

  <!-- FOOTER -->
  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="brand-col">
          <div class="brand"><i class="fas fa-crown"></i><span>Grand<span class="gold">eur</span></span></div>
          <p>Luxury redefined. Each piece tells a story of craftsmanship and timeless style.</p>
          <div class="socials">
            <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
            <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="#" aria-label="Pinterest"><i class="fab fa-pinterest-p"></i></a>
            <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="col"><h5>Maison</h5><ul><li><a href="#">About</a></li><li><a href="#">Boutique</a></li><li><a href="#">Press</a></li><li><a href="#">Journal</a></li></ul></div>
        <div class="col"><h5>Concierge</h5><ul><li><a href="#">Help</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul></div>
        <div class="col"><h5>Legacy</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li><li><a href="#">Sitemap</a></li></ul></div>
      </div>
      <div class="footer-bottom">&copy; <span id="year"></span> Grandeur — all rights reserved.</div>
    </div>
  </footer>

  <script>
    // ===== DATA =====
    const CATEGORIES = [
      { id: 'watches', name: 'Watches', icon: 'fa-clock', count: 16 },
      { id: 'jewelry', name: 'Jewelry', icon: 'fa-gem', count: 28 },
      { id: 'leather', name: 'Leather', icon: 'fa-briefcase', count: 14 },
      { id: 'fragrance', name: 'Fragrance', icon: 'fa-spa', count: 11 },
      { id: 'accessories', name: 'Accessories', icon: 'fa-glasses', count: 22 },
      { id: 'home', name: 'Home', icon: 'fa-crown', count: 19 }
    ];

    const PRODUCTS = [
      { id: 1, title: 'Oris Aquis Date', price: 2200, oldPrice: 2600, rating: 5, reviews: 47, badge: 'New', img: 'https://images.unsplash.com/photo-1524592094714-0f0654e20314?auto=format&fit=crop&w=600&q=80', category: 'Watches' },
      { id: 2, title: 'Gold Cufflinks', price: 420, rating: 4, reviews: 34, badge: '', img: 'https://images.unsplash.com/photo-1617038220319-276d3cfab638?auto=format&fit=crop&w=600&q=80', category: 'Jewelry' },
      { id: 3, title: 'Portefeuille Chester', price: 650, oldPrice: 790, rating: 5, reviews: 62, badge: 'Sale', img: 'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?auto=format&fit=crop&w=600&q=80', category: 'Leather' },
      { id: 4, title: 'Eau de Parfum No.7', price: 180, rating: 5, reviews: 91, badge: 'Exclusive', img: 'https://images.unsplash.com/photo-1594035910387-fea47794261f?auto=format&fit=crop&w=600&q=80', category: 'Fragrance' },
      { id: 5, title: 'Sunglasses Classic', price: 310, rating: 4, reviews: 28, badge: '', img: 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 6, title: 'Marble Tray', price: 280, rating: 4, reviews: 19, badge: 'New', img: 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?auto=format&fit=crop&w=600&q=80', category: 'Home' },
      { id: 7, title: 'Travel Duffle', price: 890, oldPrice: 1050, rating: 5, reviews: 44, badge: 'Sale', img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'Leather' },
      { id: 8, title: 'Pilot Chronograph', price: 3850, rating: 5, reviews: 33, badge: '', img: 'https://images.unsplash.com/photo-1539874754764-5a96559165b0?auto=format&fit=crop&w=600&q=80', category: 'Watches' }
    ];

    const TESTIMONIALS = [
      { name: 'Isabella Rossi', role: 'Collector', avatar: 'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&w=80&q=80', text: 'Exceptional quality and service. The watch is a masterpiece.', stars: 5 },
      { name: 'Liam O’Connor', role: 'Connoisseur', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'Every detail is considered. Grandeur redefines luxury.', stars: 5 },
      { name: 'Elena Vogt', role: 'Designer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text: 'The curation is impeccable — I found pieces I could not find elsewhere.', stars: 4 },
      { name: 'Marcus Thorne', role: 'Entrepreneur', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text: 'From packaging to product, a truly grand experience.', stars: 5 }
    ];

    // ===== STATE =====
    let cartCount = 0;

    // ===== DOM REFS =====
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const testimonialsList = document.getElementById('testimonialsList');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');

    // ===== RENDER =====
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(c => {
        const el = document.createElement('div');
        el.className = 'cat-card';
        el.innerHTML = `<div class="icon-wrap"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4><div class="count">${c.count} pieces</div>`;
        el.addEventListener('click', () => { document.getElementById('products').scrollIntoView({ behavior: 'smooth' }); });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const el = document.createElement('div');
        el.className = 'product-card';
        const badgeClass = p.badge === 'Sale' ? 'sale' : '';
        const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
        const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
        const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        el.innerHTML = `
          <div class="img-wrap">
            <img src="${p.img}" alt="${p.title}" loading="lazy">
            ${badgeHtml}
            <button class="wish-btn"><i class="far fa-heart"></i></button>
          </div>
          <div class="body">
            <div class="category-tag">${p.category}</div>
            <h5>${p.title}</h5>
            <div class="price-row"><span class="price">$${p.price.toLocaleString()}</span>${oldPriceHtml}</div>
            <div class="rating">${stars} <span>(${p.reviews})</span></div>
          </div>
          <div class="footer"><button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button></div>
        `;
        productsGrid.appendChild(el);
      });
      productsGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          addToCart(Number(this.dataset.id), this);
        });
      });
    }

    function renderTestimonials() {
      testimonialsList.innerHTML = '';
      TESTIMONIALS.forEach(t => {
        const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
        const el = document.createElement('div');
        el.className = 'testimonial-card';
        el.innerHTML = `
          <div class="stars">${stars}</div>
          <blockquote>“${t.text}”</blockquote>
          <div class="author">
            <img class="avatar" src="${t.avatar}" alt="${t.name}" loading="lazy">
            <div><div class="name">${t.name}</div><div class="role">${t.role}</div></div>
          </div>
        `;
        testimonialsList.appendChild(el);
      });
    }

    function addToCart(id, btnEl) {
      cartCount++;
      cartCountEl.textContent = cartCount;
      if (btnEl) {
        const orig = btnEl.innerHTML;
        btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
        btnEl.classList.add('added');
        setTimeout(() => { btnEl.innerHTML = orig; btnEl.classList.remove('added'); }, 1600);
      }
    }

    // ===== DEAL TIMER =====
    (function() {
      const target = new Date(Date.now() + (27 * 60 + 12) * 60 * 1000);
      function tick() {
        const diff = target - new Date();
        if (diff <= 0) { document.getElementById('dealDays').textContent = '0'; document.getElementById('dealHours').textContent = '00'; document.getElementById('dealMinutes').textContent = '00'; document.getElementById('dealSeconds').textContent = '00'; return; }
        document.getElementById('dealDays').textContent = Math.floor(diff / (24*3600*1000));
        document.getElementById('dealHours').textContent = String(Math.floor((diff % (24*3600*1000))/(3600*1000))).padStart(2,'0');
        document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600*1000))/(60*1000))).padStart(2,'0');
        document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60*1000))/1000)).padStart(2,'0');
      }
      tick(); setInterval(tick, 1000);
    })();

    // ===== EVENTS =====
    document.getElementById('shopNow').addEventListener('click', () => document.getElementById('products').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('buyDeal').addEventListener('click', function() {
      cartCount++;
      cartCountEl.textContent = cartCount;
      const orig = this.innerHTML;
      this.innerHTML = '<i class="fas fa-check"></i> Secured';
      this.style.background = '#2a7a62';
      setTimeout(() => { this.innerHTML = orig; this.style.background = ''; }, 1800);
    });
    document.getElementById('cartBtn').addEventListener('click', () => alert(`🛒 Your cart: ${cartCount} item${cartCount !== 1 ? 's' : ''}.`));
    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) { msg.textContent = 'Please enter a valid email.'; msg.style.color = '#d4af37'; return; }
      msg.textContent = '✨ Welcome to the inner circle!'; msg.style.color = '#d4af37';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => msg.textContent = '', 3200);
    });
    mobileToggle.addEventListener('click', () => {
      const open = mobileMenu.style.display === 'block';
      mobileMenu.style.display = open ? 'none' : 'block';
      mobileToggle.innerHTML = open ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
    });
    mobileMenu.querySelectorAll('a').forEach(a => a.addEventListener('click', () => {
      mobileMenu.style.display = 'none';
      mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
    }));
    window.addEventListener('resize', () => { if (window.innerWidth > 768) { mobileMenu.style.display = 'none'; mobileToggle.innerHTML = '<i class="fas fa-bars"></i>'; } });
    document.getElementById('year').textContent = new Date().getFullYear();

    // ===== INIT =====
    renderCategories();
    renderProducts(PRODUCTS);
    renderTestimonials();
    cartCountEl.textContent = '0';
    console.log('✨ Grandeur — luxury e‑commerce experience.');
  </script>
</body>
</html>
