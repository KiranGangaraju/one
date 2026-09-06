<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Éclat — Luxe Atelier</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,600;0,700;1,400&family=Manrope:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg-deep: #0b0a0c;
      --bg-surface: #161316;
      --bg-card: #1e1a20;
      --gold: #c9a84c;
      --gold-soft: #e4d0a0;
      --gold-glow: rgba(201, 168, 76, 0.15);
      --text-primary: #f2ede8;
      --text-muted: #a09aa8;
      --border-subtle: rgba(201, 168, 76, 0.15);
      --shadow-elevated: 0 20px 50px rgba(0,0,0,0.6);
      --radius-xl: 24px;
      --radius-md: 14px;
      --transition: 0.35s cubic-bezier(0.25, 0.46, 0.45, 0.94);
    }

    body {
      background: var(--bg-deep);
      color: var(--text-primary);
      font-family: 'Manrope', sans-serif;
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
    }

    a { color: inherit; text-decoration: none; }
    img { max-width: 100%; display: block; }
    button { background: none; border: none; color: inherit; font-family: inherit; cursor: pointer; }
    input { font-family: inherit; }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* ----- buttons ----- */
    .btn-gold {
      background: var(--gold);
      color: #0b0a0c;
      font-weight: 600;
      padding: 14px 36px;
      border-radius: 60px;
      border: 1px solid var(--gold);
      transition: var(--transition);
      display: inline-flex;
      align-items: center;
      gap: 10px;
      letter-spacing: 0.3px;
      font-size: 15px;
      box-shadow: 0 6px 24px rgba(201, 168, 76, 0.15);
    }
    .btn-gold:hover {
      background: #b8973c;
      border-color: #b8973c;
      transform: translateY(-2px);
      box-shadow: 0 12px 32px rgba(201, 168, 76, 0.25);
    }

    .btn-outline {
      background: transparent;
      border: 1px solid rgba(201, 168, 76, 0.25);
      color: var(--gold);
      padding: 14px 36px;
      border-radius: 60px;
      font-weight: 500;
      transition: var(--transition);
      display: inline-flex;
      align-items: center;
      gap: 10px;
      font-size: 15px;
    }
    .btn-outline:hover {
      background: var(--gold);
      color: #0b0a0c;
      border-color: var(--gold);
      transform: translateY(-2px);
    }

    .btn-ghost {
      border: 1px solid rgba(255,255,255,0.06);
      color: #fff;
      padding: 12px 28px;
      border-radius: 60px;
      transition: var(--transition);
      font-weight: 500;
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.04);
      border-color: rgba(255,255,255,0.15);
    }

    /* ----- header ----- */
    .header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(11, 10, 12, 0.75);
      backdrop-filter: blur(16px);
      -webkit-backdrop-filter: blur(16px);
      border-bottom: 1px solid rgba(201, 168, 76, 0.07);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 14px 0;
      min-height: 70px;
    }

    .brand {
      font-family: 'Playfair Display', serif;
      font-size: 28px;
      font-weight: 700;
      letter-spacing: 2px;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .brand .gold {
      color: var(--gold);
    }
    .brand i {
      color: var(--gold);
      font-size: 24px;
    }

    .nav-links {
      display: flex;
      gap: 4px;
      list-style: none;
    }
    .nav-links a {
      padding: 8px 18px;
      border-radius: 40px;
      font-size: 14px;
      font-weight: 500;
      color: var(--text-muted);
      transition: var(--transition);
    }
    .nav-links a:hover,
    .nav-links a.active {
      background: rgba(201, 168, 76, 0.07);
      color: var(--gold);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 2px;
    }
    .icon-btn {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      color: var(--text-muted);
      transition: var(--transition);
      font-size: 18px;
    }
    .icon-btn:hover {
      background: rgba(201, 168, 76, 0.07);
      color: var(--gold);
    }

    .cart-badge {
      position: relative;
    }
    .cart-badge .count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: var(--gold);
      color: #0b0a0c;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid var(--bg-deep);
    }

    .mobile-toggle {
      display: none;
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: rgba(255,255,255,0.02);
      border: 1px solid rgba(255,255,255,0.04);
      font-size: 20px;
      color: var(--text-primary);
    }
    #mobileMenu {
      display: none;
      background: var(--bg-deep);
      border-top: 1px solid rgba(201, 168, 76, 0.06);
      padding: 16px 0 24px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 14px;
      padding: 12px 20px;
      border-radius: var(--radius-md);
      color: var(--text-muted);
      font-weight: 500;
      transition: var(--transition);
    }
    #mobileMenu ul li a:hover {
      background: rgba(201, 168, 76, 0.05);
      color: var(--gold);
    }

    /* ----- hero ----- */
    .hero {
      position: relative;
      margin: 20px 24px 0;
      border-radius: var(--radius-xl);
      overflow: hidden;
      background: linear-gradient(135deg, #131016, #1e1922);
      border: 1px solid rgba(201, 168, 76, 0.06);
      padding: 70px 0 80px;
      min-height: 520px;
      display: flex;
      align-items: center;
    }
    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1601924994987-69e26d50dc26?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
      opacity: 0.18;
      z-index: 0;
    }
    .hero .container {
      position: relative;
      z-index: 1;
    }
    .hero .label {
      display: inline-block;
      background: rgba(201, 168, 76, 0.10);
      padding: 6px 24px;
      border-radius: 60px;
      color: var(--gold);
      font-size: 13px;
      font-weight: 600;
      letter-spacing: 2px;
      text-transform: uppercase;
      border: 1px solid rgba(201, 168, 76, 0.08);
      margin-bottom: 18px;
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: 68px;
      font-weight: 700;
      line-height: 1.05;
      max-width: 700px;
      color: #fff;
    }
    .hero h1 .gold {
      color: var(--gold);
    }
    .hero p {
      font-size: 17px;
      color: rgba(255,255,255,0.6);
      max-width: 480px;
      margin: 14px 0 32px;
      font-weight: 300;
    }
    .hero .actions {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }

    /* ----- section ----- */
    .section {
      padding: 60px 0;
    }
    .section-head {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 16px;
      margin-bottom: 36px;
      flex-wrap: wrap;
    }
    .section-head .title-group h2 {
      font-family: 'Playfair Display', serif;
      font-size: 36px;
      font-weight: 600;
      letter-spacing: 0.5px;
    }
    .section-head .title-group p {
      color: var(--text-muted);
      font-size: 15px;
      font-weight: 300;
    }
    .section-head .link-more {
      color: var(--gold);
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 500;
      font-size: 14px;
      border-bottom: 1px solid transparent;
      transition: var(--transition);
      padding-bottom: 4px;
    }
    .section-head .link-more:hover {
      border-bottom-color: var(--gold);
      gap: 14px;
    }

    /* ----- categories ----- */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }
    .cat-item {
      background: var(--bg-surface);
      border-radius: var(--radius-md);
      padding: 24px 12px;
      text-align: center;
      border: 1px solid rgba(255,255,255,0.02);
      transition: var(--transition);
      cursor: pointer;
    }
    .cat-item:hover {
      transform: translateY(-6px);
      border-color: var(--gold);
      box-shadow: 0 12px 40px rgba(201, 168, 76, 0.06);
    }
    .cat-item .icon-wrap {
      width: 60px;
      height: 60px;
      border-radius: 50%;
      background: rgba(201, 168, 76, 0.06);
      display: grid;
      place-items: center;
      margin: 0 auto 12px;
      font-size: 24px;
      color: var(--gold);
      transition: var(--transition);
    }
    .cat-item:hover .icon-wrap {
      background: var(--gold);
      color: #0b0a0c;
    }
    .cat-item h4 {
      font-size: 16px;
      font-weight: 600;
    }
    .cat-item .count {
      font-size: 13px;
      color: var(--text-muted);
    }

    /* ----- products ----- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product-card {
      background: var(--bg-surface);
      border-radius: var(--radius-md);
      overflow: hidden;
      border: 1px solid rgba(255,255,255,0.02);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-8px);
      border-color: var(--gold);
      box-shadow: 0 16px 48px rgba(0,0,0,0.5);
    }
    .product-card .media {
      position: relative;
      background: var(--bg-card);
      aspect-ratio: 1 / 1;
      overflow: hidden;
    }
    .product-card .media img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .media img {
      transform: scale(1.04);
    }
    .product-card .tag {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--gold);
      color: #0b0a0c;
      padding: 4px 16px;
      border-radius: 40px;
      font-size: 11px;
      font-weight: 700;
      letter-spacing: 0.5px;
    }
    .product-card .tag.sale {
      background: #a67c2b;
      color: #fff;
    }
    .product-card .wish {
      position: absolute;
      top: 14px;
      right: 14px;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: rgba(0,0,0,0.5);
      backdrop-filter: blur(6px);
      display: grid;
      place-items: center;
      color: var(--text-muted);
      border: 1px solid rgba(255,255,255,0.04);
      transition: var(--transition);
    }
    .product-card .wish:hover {
      color: var(--gold);
      border-color: var(--gold);
    }
    .product-card .info {
      padding: 16px 16px 8px;
      flex: 1;
    }
    .product-card .info .cat {
      font-size: 11px;
      color: var(--text-muted);
      text-transform: uppercase;
      letter-spacing: 0.6px;
      font-weight: 500;
    }
    .product-card .info h5 {
      font-size: 16px;
      font-weight: 600;
      margin: 4px 0 6px;
    }
    .product-card .info .price-row {
      display: flex;
      align-items: baseline;
      gap: 10px;
    }
    .product-card .info .price {
      font-weight: 700;
      font-size: 18px;
      color: var(--gold);
    }
    .product-card .info .old {
      color: var(--text-muted);
      text-decoration: line-through;
      font-size: 14px;
    }
    .product-card .info .stars {
      color: var(--gold);
      font-size: 13px;
      margin-top: 4px;
    }
    .product-card .info .stars span {
      color: var(--text-muted);
      margin-left: 6px;
    }
    .product-card .foot {
      padding: 0 16px 16px;
    }
    .product-card .foot .add {
      width: 100%;
      padding: 12px;
      border-radius: 60px;
      background: rgba(201, 168, 76, 0.05);
      border: 1px solid rgba(201, 168, 76, 0.12);
      color: var(--gold);
      font-weight: 600;
      font-size: 14px;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .product-card .foot .add:hover {
      background: var(--gold);
      color: #0b0a0c;
      border-color: var(--gold);
    }
    .product-card .foot .add.added {
      background: #2a7a62;
      border-color: #2a7a62;
      color: #fff;
    }

    /* ----- spotlight ----- */
    .spotlight {
      display: flex;
      gap: 0;
      background: var(--bg-surface);
      border-radius: var(--radius-xl);
      overflow: hidden;
      border: 1px solid rgba(201, 168, 76, 0.05);
    }
    .spotlight .img-side {
      flex: 0 0 46%;
      min-height: 280px;
      background: var(--bg-card);
    }
    .spotlight .img-side img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .spotlight .content {
      flex: 1;
      padding: 44px 44px 40px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .spotlight .content .badge {
      background: rgba(201, 168, 76, 0.10);
      color: var(--gold);
      padding: 6px 20px;
      border-radius: 60px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 1px;
      align-self: flex-start;
      margin-bottom: 12px;
      border: 1px solid rgba(201, 168, 76, 0.06);
    }
    .spotlight .content h3 {
      font-family: 'Playfair Display', serif;
      font-size: 34px;
      font-weight: 600;
    }
    .spotlight .content .desc {
      color: var(--text-muted);
      font-weight: 300;
      margin: 4px 0 14px;
    }
    .spotlight .content .price-big {
      font-size: 36px;
      font-weight: 700;
      color: var(--gold);
    }
    .spotlight .content .price-big .old {
      font-size: 20px;
      font-weight: 300;
      color: var(--text-muted);
      text-decoration: line-through;
      margin-left: 12px;
    }
    .spotlight .content .stock {
      font-size: 14px;
      color: var(--text-muted);
      margin: 6px 0 18px;
    }
    .spotlight .content .stock strong {
      color: var(--gold);
    }
    .timer-group {
      display: flex;
      gap: 12px;
      margin: 8px 0 20px;
    }
    .timer-box {
      background: var(--bg-card);
      border: 1px solid rgba(201, 168, 76, 0.05);
      padding: 10px 18px;
      border-radius: var(--radius-md);
      min-width: 64px;
      text-align: center;
    }
    .timer-box .num {
      font-size: 26px;
      font-weight: 700;
      color: var(--gold);
      line-height: 1.2;
    }
    .timer-box .lbl {
      font-size: 11px;
      color: var(--text-muted);
      text-transform: uppercase;
      letter-spacing: 0.6px;
    }

    /* ----- testimonials ----- */
    .testimonial-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
    }
    .testimonial-scroll::-webkit-scrollbar { height: 4px; }
    .testimonial-scroll::-webkit-scrollbar-thumb { background: var(--gold); border-radius: 60px; }
    .testimonial-card {
      flex: 0 0 340px;
      background: var(--bg-surface);
      border-radius: var(--radius-md);
      padding: 28px 28px 24px;
      border: 1px solid rgba(255,255,255,0.02);
      scroll-snap-align: start;
      transition: var(--transition);
    }
    .testimonial-card:hover {
      border-color: rgba(201, 168, 76, 0.12);
    }
    .testimonial-card .stars { color: var(--gold); font-size: 16px; letter-spacing: 2px; margin-bottom: 8px; }
    .testimonial-card blockquote { font-size: 15px; line-height: 1.6; font-style: italic; color: var(--text-primary); margin-bottom: 14px; }
    .testimonial-card .author { display: flex; align-items: center; gap: 14px; }
    .testimonial-card .author .avatar { width: 48px; height: 48px; border-radius: 50%; object-fit: cover; border: 2px solid rgba(201, 168, 76, 0.10); }
    .testimonial-card .author .name { font-weight: 600; }
    .testimonial-card .author .role { font-size: 13px; color: var(--text-muted); }

    /* ----- newsletter ----- */
    .newsletter {
      background: linear-gradient(135deg, #141115, #1d1922);
      border-radius: var(--radius-xl);
      padding: 52px 56px;
      border: 1px solid rgba(201, 168, 76, 0.04);
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 32px;
      flex-wrap: wrap;
    }
    .newsletter .text h3 {
      font-family: 'Playfair Display', serif;
      font-size: 30px;
      font-weight: 600;
    }
    .newsletter .text p {
      color: var(--text-muted);
      font-weight: 300;
    }
    .newsletter form {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 480px;
    }
    .newsletter form input {
      flex: 1;
      min-width: 200px;
      padding: 16px 24px;
      border-radius: 60px;
      border: 1px solid rgba(255,255,255,0.04);
      background: rgba(255,255,255,0.02);
      color: #fff;
      font-size: 15px;
      outline: none;
      transition: var(--transition);
    }
    .newsletter form input:focus {
      border-color: var(--gold);
      background: rgba(255,255,255,0.04);
    }
    .newsletter form input::placeholder { color: var(--text-muted); }
    #newsletterMsg { margin-top: 10px; font-size: 14px; color: var(--gold); width: 100%; }

    /* ----- footer ----- */
    footer {
      padding: 48px 0 24px;
      border-top: 1px solid rgba(201, 168, 76, 0.03);
      margin-top: 8px;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 28px;
    }
    .footer-grid .brand-col p {
      color: var(--text-muted);
      font-size: 14px;
      max-width: 300px;
      font-weight: 300;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 12px;
      margin-top: 14px;
    }
    .footer-grid .brand-col .socials a {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: rgba(255,255,255,0.02);
      border: 1px solid rgba(255,255,255,0.04);
      display: grid;
      place-items: center;
      color: var(--text-muted);
      transition: var(--transition);
    }
    .footer-grid .brand-col .socials a:hover {
      background: var(--gold);
      color: #0b0a0c;
      border-color: var(--gold);
    }
    .footer-grid .col h5 {
      font-weight: 600;
      font-size: 14px;
      margin-bottom: 14px;
      color: #fff;
      letter-spacing: 0.5px;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }
    .footer-grid .col ul li a {
      color: var(--text-muted);
      font-size: 14px;
      transition: var(--transition);
      font-weight: 300;
    }
    .footer-grid .col ul li a:hover { color: var(--gold); }
    .footer-bottom {
      text-align: center;
      padding-top: 18px;
      border-top: 1px solid rgba(255,255,255,0.02);
      color: var(--text-muted);
      font-size: 13px;
    }

    /* ----- responsive ----- */
    @media (max-width: 1200px) {
      .product-grid { grid-template-columns: repeat(3,1fr); }
      .cat-grid { grid-template-columns: repeat(3,1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 992px) {
      .hero h1 { font-size: 48px; }
      .hero { min-height: 400px; padding: 50px 0; margin: 16px 16px 0; }
      .spotlight { flex-direction: column; }
      .spotlight .img-side { flex: 0 0 200px; }
      .spotlight .content { padding: 28px 30px; }
      .newsletter { flex-direction: column; text-align: center; padding: 36px 28px; }
      .newsletter form { max-width: 100%; }
    }
    @media (max-width: 768px) {
      .nav-links { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .product-grid { grid-template-columns: repeat(2,1fr); gap: 16px; }
      .cat-grid { grid-template-columns: repeat(2,1fr); gap: 12px; }
      .hero h1 { font-size: 34px; }
      .section-head .title-group h2 { font-size: 28px; }
      .spotlight .content h3 { font-size: 26px; }
      .spotlight .content .price-big { font-size: 28px; }
      .timer-box { min-width: 52px; padding: 8px 12px; }
      .timer-box .num { font-size: 18px; }
      .footer-grid { grid-template-columns: 1fr; gap: 20px; }
      .brand { font-size: 22px; }
      .testimonial-card { flex: 0 0 280px; }
    }
    @media (max-width: 480px) {
      .hero { margin: 10px 10px 0; min-height: 280px; border-radius: var(--radius-md); padding: 28px 0; }
      .hero h1 { font-size: 26px; }
      .product-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .container { padding: 0 14px; }
      .spotlight .content { padding: 18px 16px; }
      .newsletter { padding: 20px 16px; }
      .newsletter .text h3 { font-size: 22px; }
      .product-card .info { padding: 12px 12px 4px; }
      .product-card .info h5 { font-size: 13px; }
      .product-card .info .price { font-size: 15px; }
      .product-card .foot { padding: 0 12px 12px; }
      .product-card .foot .add { font-size: 12px; padding: 10px; }
      .cat-item { padding: 16px 8px; }
      .cat-item .icon-wrap { width: 44px; height: 44px; font-size: 18px; }
      .timer-box { min-width: 44px; padding: 6px 8px; }
      .timer-box .num { font-size: 14px; }
    }
  </style>
</head>
<body>
  <header class="header">
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:10px;">
        <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#"><i class="fas fa-crown"></i><span>Écl<span class="gold">at</span></span></a>
      </div>
      <ul class="nav-links">
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Collections</a></li>
        <li><a href="#products"><i class="fas fa-gem"></i> Atelier</a></li>
        <li><a href="#spotlight"><i class="fas fa-clock"></i> Édition</a></li>
        <li><a href="#testimonials"><i class="fas fa-quote-right"></i> Témoignages</a></li>
      </ul>
      <div class="header-actions">
        <button class="icon-btn"><i class="far fa-user"></i></button>
        <button class="icon-btn"><i class="far fa-heart"></i></button>
        <div class="cart-badge">
          <button class="icon-btn" id="cartBtn"><i class="fas fa-shopping-bag"></i></button>
          <span class="count" id="cartCount">0</span>
        </div>
      </div>
    </div>
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Collections</a></li>
          <li><a href="#products"><i class="fas fa-gem"></i> Atelier</a></li>
          <li><a href="#spotlight"><i class="fas fa-clock"></i> Édition</a></li>
          <li><a href="#testimonials"><i class="fas fa-quote-right"></i> Témoignages</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account</a></li>
          <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main>
    <!-- HERO -->
    <section class="hero">
      <div class="container">
        <div class="label"><i class="fas fa-crown"></i> 2026 · L'Art de Vivre</div>
        <h1>L'élégance <span class="gold">intemporelle</span><br>à portée de main</h1>
        <p>Une sélection méticuleuse de pièces rares, où l'artisanat rencontre l'audace.</p>
        <div class="actions">
          <button class="btn-gold" id="exploreBtn"><i class="fas fa-arrow-right"></i> Découvrir</button>
          <button class="btn-outline" id="offerBtn"><i class="fas fa-gift"></i> Offre exclusive</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories">
      <div class="container">
        <div class="section-head">
          <div class="title-group"><h2>Univers de luxe</h2><p>par passion</p></div>
          <a href="#" class="link-more">Tout voir <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="cat-grid" id="categoryGrid"></div>
      </div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products">
      <div class="container">
        <div class="section-head">
          <div class="title-group"><h2>Pièces d'exception</h2><p>l'âme du savoir-faire</p></div>
          <a href="#" class="link-more">Collection complète <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="product-grid" id="productGrid"></div>
      </div>
    </section>

    <!-- SPOTLIGHT -->
    <section class="section" id="spotlight">
      <div class="container">
        <div class="section-head">
          <div class="title-group"><h2>✦ Édition limitée</h2><p>l'audace d'un instant</p></div>
        </div>
        <div class="spotlight">
          <div class="img-side"><img src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=800&q=80" alt="montre luxe" loading="lazy"></div>
          <div class="content">
            <span class="badge"><i class="fas fa-bolt"></i> 48h · exclusivité</span>
            <h3>Chronographe Héritage</h3>
            <p class="desc">L'horlogerie réinventée : précision suisse, allure intemporelle.</p>
            <div><span class="price-big">$2,850 <span class="old">$3,650</span></span></div>
            <p class="stock">Seulement <strong>7</strong> pièces disponibles</p>
            <div class="timer-group" id="timerGroup">
              <div class="timer-box"><div class="num" id="days">0</div><div class="lbl">Jours</div></div>
              <div class="timer-box"><div class="num" id="hours">00</div><div class="lbl">Heures</div></div>
              <div class="timer-box"><div class="num" id="minutes">00</div><div class="lbl">Min</div></div>
              <div class="timer-box"><div class="num" id="seconds">00</div><div class="lbl">Sec</div></div>
            </div>
            <button class="btn-gold" id="buyNow"><i class="fas fa-cart-plus"></i> Sécuriser</button>
          </div>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section" id="testimonials">
      <div class="container">
        <div class="section-head">
          <div class="title-group"><h2>Échos d'excellence</h2><p>ce qu'ils en disent</p></div>
        </div>
        <div class="testimonial-scroll" id="testimonialList"></div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section">
      <div class="container">
        <div class="newsletter">
          <div class="text"><h3>Rejoignez le cercle</h3><p>Ventes privées, premières visions</p></div>
          <form id="newsletterForm">
            <input type="email" id="newsletterEmail" placeholder="votre adresse e‑mail" required>
            <button class="btn-gold" type="submit"><i class="fas fa-paper-plane"></i> S'abonner</button>
            <div id="newsletterMsg"></div>
          </form>
        </div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="brand-col">
          <div class="brand"><i class="fas fa-crown"></i><span>Écl<span class="gold">at</span></span></div>
          <p>L'élégance à chaque geste. Des pièces qui racontent une histoire d'art et de passion.</p>
          <div class="socials">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-pinterest-p"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="col"><h5>La Maison</h5><ul><li><a href="#">À propos</a></li><li><a href="#">Boutique</a></li><li><a href="#">Presse</a></li><li><a href="#">Journal</a></li></ul></div>
        <div class="col"><h5>Conciergerie</h5><ul><li><a href="#">Aide</a></li><li><a href="#">Livraison</a></li><li><a href="#">Retours</a></li><li><a href="#">Contact</a></li></ul></div>
        <div class="col"><h5>Héritage</h5><ul><li><a href="#">Confidentialité</a></li><li><a href="#">Conditions</a></li><li><a href="#">Cookies</a></li><li><a href="#">Plan</a></li></ul></div>
      </div>
      <div class="footer-bottom">&copy; <span id="year"></span> Éclat — tous droits réservés.</div>
    </div>
  </footer>

  <script>
    // ----- DATA -----
    const categories = [
      { id: 'montres', name: 'Montres', icon: 'fa-clock', count: 16 },
      { id: 'bijoux', name: 'Bijoux', icon: 'fa-gem', count: 28 },
      { id: 'maroquinerie', name: 'Maroquinerie', icon: 'fa-briefcase', count: 14 },
      { id: 'parfums', name: 'Parfums', icon: 'fa-spa', count: 11 },
      { id: 'accessoires', name: 'Accessoires', icon: 'fa-glasses', count: 22 },
      { id: 'maison', name: 'Maison', icon: 'fa-crown', count: 19 }
    ];

    const products = [
      { id: 1, title: 'Oris Aquis Date', price: 2200, oldPrice: 2600, rating: 5, reviews: 47, badge: 'Nouveau', img: 'https://images.unsplash.com/photo-1524592094714-0f0654e20314?auto=format&fit=crop&w=600&q=80', category: 'Montres' },
      { id: 2, title: 'Boutons de manche or', price: 420, rating: 4, reviews: 34, badge: '', img: 'https://images.unsplash.com/photo-1617038220319-276d3cfab638?auto=format&fit=crop&w=600&q=80', category: 'Bijoux' },
      { id: 3, title: 'Portefeuille Chester', price: 650, oldPrice: 790, rating: 5, reviews: 62, badge: 'Vente', img: 'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?auto=format&fit=crop&w=600&q=80', category: 'Maroquinerie' },
      { id: 4, title: 'Eau de Parfum N°7', price: 180, rating: 5, reviews: 91, badge: 'Exclusif', img: 'https://images.unsplash.com/photo-1594035910387-fea47794261f?auto=format&fit=crop&w=600&q=80', category: 'Parfums' },
      { id: 5, title: 'Lunettes Iconiques', price: 310, rating: 4, reviews: 28, badge: '', img: 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=600&q=80', category: 'Accessoires' },
      { id: 6, title: 'Plateau en marbre', price: 280, rating: 4, reviews: 19, badge: 'Nouveau', img: 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?auto=format&fit=crop&w=600&q=80', category: 'Maison' },
      { id: 7, title: 'Sac de voyage', price: 890, oldPrice: 1050, rating: 5, reviews: 44, badge: 'Vente', img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'Maroquinerie' },
      { id: 8, title: 'Chronographe Pilote', price: 3850, rating: 5, reviews: 33, badge: '', img: 'https://images.unsplash.com/photo-1539874754764-5a96559165b0?auto=format&fit=crop&w=600&q=80', category: 'Montres' }
    ];

    const testimonials = [
      { name: 'Isabella Rossi', role: 'Collectionneuse', avatar: 'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&w=80&q=80', text: 'Une qualité et un service exceptionnels. La montre est une œuvre d\'art.', stars: 5 },
      { name: 'Liam O’Connor', role: 'Connaisseur', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'Chaque détail est soigné. Éclat redéfinit le luxe.', stars: 5 },
      { name: 'Elena Vogt', role: 'Designer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text: 'La curation est irréprochable — des pièces uniques.', stars: 4 },
      { name: 'Marcus Thorne', role: 'Entrepreneur', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text: 'De l\'emballage au produit, une expérience grandiose.', stars: 5 }
    ];

    // ----- STATE -----
    let cart = 0;

    // ----- DOM REFS -----
    const categoryGrid = document.getElementById('categoryGrid');
    const productGrid = document.getElementById('productGrid');
    const testimonialList = document.getElementById('testimonialList');
    const cartCount = document.getElementById('cartCount');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');

    // ----- RENDER -----
    function renderCategories() {
      categoryGrid.innerHTML = '';
      categories.forEach(c => {
        const div = document.createElement('div');
        div.className = 'cat-item';
        div.innerHTML = `<div class="icon-wrap"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4><div class="count">${c.count} pièces</div>`;
        div.addEventListener('click', () => document.getElementById('products').scrollIntoView({ behavior: 'smooth' }));
        categoryGrid.appendChild(div);
      });
    }

    function renderProducts(list) {
      productGrid.innerHTML = '';
      list.forEach(p => {
        const card = document.createElement('div');
        card.className = 'product-card';
        const badgeClass = p.badge === 'Vente' ? 'sale' : '';
        const badgeHtml = p.badge ? `<span class="tag ${badgeClass}">${p.badge}</span>` : '';
        const oldHtml = p.oldPrice ? `<span class="old">$${p.oldPrice.toLocaleString()}</span>` : '';
        const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        card.innerHTML = `
          <div class="media">
            <img src="${p.img}" alt="${p.title}" loading="lazy">
            ${badgeHtml}
            <button class="wish"><i class="far fa-heart"></i></button>
          </div>
          <div class="info">
            <div class="cat">${p.category}</div>
            <h5>${p.title}</h5>
            <div class="price-row"><span class="price">$${p.price.toLocaleString()}</span>${oldHtml}</div>
            <div class="stars">${stars} <span>(${p.reviews})</span></div>
          </div>
          <div class="foot"><button class="add" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Ajouter</button></div>
        `;
        productGrid.appendChild(card);
      });
      productGrid.querySelectorAll('.add').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          addToCart(Number(this.dataset.id), this);
        });
      });
    }

    function renderTestimonials() {
      testimonialList.innerHTML = '';
      testimonials.forEach(t => {
        const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
        const div = document.createElement('div');
        div.className = 'testimonial-card';
        div.innerHTML = `
          <div class="stars">${stars}</div>
          <blockquote>“${t.text}”</blockquote>
          <div class="author">
            <img class="avatar" src="${t.avatar}" alt="${t.name}" loading="lazy">
            <div><div class="name">${t.name}</div><div class="role">${t.role}</div></div>
          </div>
        `;
        testimonialList.appendChild(div);
      });
    }

    function addToCart(id, btnEl) {
      cart++;
      cartCount.textContent = cart;
      if (btnEl) {
        const orig = btnEl.innerHTML;
        btnEl.innerHTML = '<i class="fas fa-check"></i> Ajouté';
        btnEl.classList.add('added');
        setTimeout(() => { btnEl.innerHTML = orig; btnEl.classList.remove('added'); }, 1500);
      }
    }

    // ----- TIMER -----
    (function() {
      const target = new Date(Date.now() + (23 * 60 + 47) * 60 * 1000);
      function update() {
        const diff = target - new Date();
        if (diff <= 0) {
          document.getElementById('days').textContent = '0';
          document.getElementById('hours').textContent = '00';
          document.getElementById('minutes').textContent = '00';
          document.getElementById('seconds').textContent = '00';
          return;
        }
        document.getElementById('days').textContent = Math.floor(diff / (24*3600*1000));
        document.getElementById('hours').textContent = String(Math.floor((diff % (24*3600*1000))/(3600*1000))).padStart(2,'0');
        document.getElementById('minutes').textContent = String(Math.floor((diff % (3600*1000))/(60*1000))).padStart(2,'0');
        document.getElementById('seconds').textContent = String(Math.floor((diff % (60*1000))/1000)).padStart(2,'0');
      }
      update(); setInterval(update, 1000);
    })();

    // ----- EVENTS -----
    document.getElementById('exploreBtn').addEventListener('click', () => document.getElementById('products').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('offerBtn').addEventListener('click', () => document.getElementById('spotlight').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('buyNow').addEventListener('click', function() {
      cart++;
      cartCount.textContent = cart;
      const orig = this.innerHTML;
      this.innerHTML = '<i class="fas fa-check"></i> Sécurisé';
      this.style.background = '#2a7a62';
      setTimeout(() => { this.innerHTML = orig; this.style.background = ''; }, 1800);
    });
    document.getElementById('cartBtn').addEventListener('click', () => alert(`🛒 Votre panier : ${cart} article${cart !== 1 ? 's' : ''}.`));

    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) { msg.textContent = 'Veuillez entrer un e‑mail valide.'; msg.style.color = '#c9a84c'; return; }
      msg.textContent = '✨ Bienvenue dans le cercle Éclat !';
      msg.style.color = '#c9a84c';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => msg.textContent = '', 3000);
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

    // ----- INIT -----
    renderCategories();
    renderProducts(products);
    renderTestimonials();
    cartCount.textContent = '0';
  </script>
</body>
</html>
