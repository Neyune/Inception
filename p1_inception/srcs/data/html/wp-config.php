<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'db_name' );

/** Database username */
define( 'DB_USER', 'user_name' );

/** Database password */
define( 'DB_PASSWORD', 'user_pass' );

/** Database hostname */
define( 'DB_HOST', 'mysql' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '``t)$nv5jk h|v:Lqf0h/,>jU Bjt`hRM*^`4(Znf{IpncVjntP{xEk1.N`t2{V-' );
define( 'SECURE_AUTH_KEY',   '?,y_zBa8%0$v+4y=eoey]Zi+OpNI{SgZ:Jx.TeK-6{RcxF!F)K=W$e{>(eSY(^}{' );
define( 'LOGGED_IN_KEY',     'E2P%w/qyJzs/Vk(n07!gGQt&^O=cflEZ}1Xf%hMekLROg9Q{fmqj.#Ke!(=+w$c>' );
define( 'NONCE_KEY',         'BXML~TeY^WhZlJ#xvSM(@@2t*M]v+0}5Aom{_0}OHevBQ7Rfd50*$Xvf_@TMx>!W' );
define( 'AUTH_SALT',         '<]vZb-eQ}+F_;p<._x7` &qfHIA($$Ay`Ol$rl0zVt9N`}`QK6l<)|Pj/:?^>xMW' );
define( 'SECURE_AUTH_SALT',  '`OANuiFchYG[pOoI-C 1E)h}d:(x)+y30$X-M>?,a?6:>B;J}3B*iW-DWCtPayXo' );
define( 'LOGGED_IN_SALT',    'c7cQ^a1Z3^&%.fge -rn)e~v4aMQ7:Bh8IRpO=k,f_F7*X3]A eLT%y@-+Ct0@a^' );
define( 'NONCE_SALT',        '[VaTzm<$lkyywK|3vYij?(>oGZ8fj=7;jcp2c5uKULv|Swna4[&wKP>]&PL%6#f}' );
define( 'WP_CACHE_KEY_SALT', '398^KN9846~owB|G+&9Eeu60MMIN/sc~c%9a>KC#VWlu]ga%igSNjqQ|J6mchqjx' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
