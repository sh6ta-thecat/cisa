<?php

declare(strict_types=1);

session_start([
    'cookie_lifetime' => 86400,
    'cookie_httponly' => true,
    'cookie_samesite' => 'Lax'
]);

define("DB_HOST", "127.0.0.1");
define("DB_NAME", "cisa");
define("DB_USER", "root");
define("DB_PASS", "");
define("BASE_URL", "http://localhost/sisa");
define("QR_BASE_URL", BASE_URL . '/modules/scan_qr.php?id=');
