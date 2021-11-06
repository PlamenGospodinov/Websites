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
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'raftsite' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         '<?S^2UMXr,d^j8e!gy;{>ZmFeYVx:/5r>oeBfua#i.ri0Y*+@-!BJdb0~9[Y<=5w' );
define( 'SECURE_AUTH_KEY',  '<;WvC;2A~g1$PP0#Y%T0Y,0j+E-m:J$z&fCm{|HcVc<N}`f,^t%Sn6f!aSp#bA5^' );
define( 'LOGGED_IN_KEY',    '0j^^1G{?}H#EpDxrqdKSF!0{_bU@q^6ALG!3I.3Y7Q0H9W6z1=i|5ILQVaTu%L=$' );
define( 'NONCE_KEY',        ')[i1D.wK.m-oPTK+!YAxL]SAU`8TI-f0kU+5$WRZZ5hEcY^!f1Eyd&&_hU`W Ytd' );
define( 'AUTH_SALT',        '=iF7B~#|BjD~l*%Wt<-8__ V$_3;sJC)JACx$}z5An-yoSyiH&K-c56gT!^G-D-,' );
define( 'SECURE_AUTH_SALT', 'cv ;)vA-O53MCv]%cNbL@{vOHB=f1~1pTHUg[[nG_aRjFx@bvztDtsZD0E4cQFs&' );
define( 'LOGGED_IN_SALT',   'R-v}~Y7?#$EihYq(^-1;UK7|.jKc{30Hq(s1oGqXw@?i(!wtOdk`[{;oaRXXP%yf' );
define( 'NONCE_SALT',       ' P#+%Sd`|8Do1hV-C>vvwtub31(jVfe:AZbtUB9LQmafj-~N-FEhRLjwGT{93y=f' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
