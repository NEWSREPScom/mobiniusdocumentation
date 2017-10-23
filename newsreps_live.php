<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
 | -------------------------------------------------------------------------
 | Message Delimiters.
 | -------------------------------------------------------------------------
 */
$config['delimiters_source'] = 'config'; 	// "config" = use the settings defined here, "form_validation" = use the settings defined in CI's form validation library

/*
|--------------------------------------------------------------------------
| REST token duration
|--------------------------------------------------------------------------
|
| If token is enabled, token must have a validation time of duration.
| 7200 seconds = 2 hours is set as default
*/
$config['token_duration'] = 60*60*24*3;		//3 months

/*
|--------------------------------------------------------------------------
| Category and subcategory divid id number
|--------------------------------------------------------------------------
|
| parent category ids are less than X
| subcategory ids are greater then X (equal X) 
|
*/
$config['category_divider'] = 11;	//Currently, X = 11;

/*
|--------------------------------------------------------------------------
| maximum withdrawal amount
|--------------------------------------------------------------------------
|
|
|
*/
$config['max_withdrawal'] = array(
  'SEK'=>99999, 
  'EUR'=>99999, 
  'USD'=>99999, 
  'GBP'=>99999, 
  'DKK'=>99999, 
  'NOK'=>99999, 
  'CNY'=>99999, 
  'KRW'=>99999, 
  'INR'=>99999
);

/*
|--------------------------------------------------------------------------
| minimum withdrawal amount
|--------------------------------------------------------------------------
|
|
|
*/
$config['min_withdrawal'] = array(
  'SEK'=>1, 
  'EUR'=>1, 
  'USD'=>1, 
  'GBP'=>1, 
  'DKK'=>1, 
  'NOK'=>1, 
  'CNY'=>1, 
  'KRW'=>1, 
  'INR'=>1
);

/*
|--------------------------------------------------------------------------
| fee list based on currency
|--------------------------------------------------------------------------
|
| optional price values for each currency
|
*/

$config['fee_list'] = array(
   'SEK' => array(1500),
   'DKK' => array(1500),
   'NOK' => array(1500),
   'EUR' => array(100, 200),
   'GBP' => array(150),
   'USD' => array(100, 200),
   'INR' => array(2500),
   'CNY' => array(600, 1200),
   'KRW' => array(85000, 170000)
);

/*
|--------------------------------------------------------------------------
| newstips prices
|--------------------------------------------------------------------------
|
| prices list for each currency
|
*/
$config['newstips_prices'] = array(
  'SEK'=>array('600', '1100', '1700', '2800', '4000'), 
  'EUR'=>array('60', '110', '170', '280', '400'),
  'USD'=>array('80','150', '235','390','550'),
  'GBP'=>array('50', '90', '140', '230', '325'),
  'DKK'=>array('460', '850', '1300', '2150', '3100'),
  'NOK'=>array('525', '960', '1500', '2450', '3500'),
  'CNY'=>array('500', '925', '1400', '2350', '3350'),
  'KRW'=>array('81000', '148000', '230000',	'380000',	'540000'),
  'INR'=>array('4000', '8500', '13500', '22000', '32000')
);

/*
|--------------------------------------------------------------------------
| enabled currencyies
|--------------------------------------------------------------------------
|
| Currencies are allowed to trade or exchange 
|
*/
$config['currencies'] = array_keys($config['fee_list']);

/*
|--------------------------------------------------------------------------
| base currency
|--------------------------------------------------------------------------
|
| for calculating the total amount concered with different currencies
|
*/

$config['base_currency'] = 'USD';

/*
|--------------------------------------------------------------------------
| maximum value of withdrawal
|--------------------------------------------------------------------------
|
| maximum value of 'base_currency' withdrawal
|
*/

$config['max_withdrawal_value'] = 200;

/*
|--------------------------------------------------------------------------
| withdrawal interval
|--------------------------------------------------------------------------
|
| duration limit between each withdrawal operation
|
*/

$config['withdrawal_interval'] = '+1 day';

/*
|--------------------------------------------------------------------------
| response status
|--------------------------------------------------------------------------
|
| which statuses can be sorted by response
| pending, accepted, declined, publish
|
*/
$config['response_statuses'] = array('pending', 'accepted', 'declined', 'published');

/*
|--------------------------------------------------------------------------
| db limit 
|--------------------------------------------------------------------------
|
| default numbers of db query limits  
|
*/
$config['db_limit'] = 25;

/*
|--------------------------------------------------------------------------
| max times of moderation
|--------------------------------------------------------------------------
|
| the max number of changing moderation times 
|
*/
$config['max_moderation_times'] = 2;

/*
|--------------------------------------------------------------------------
| task minimum hours
|--------------------------------------------------------------------------
|
| the minimum number of how may hours a task can last 
|
*/
$config['min_task_duration'] = 3;         //3hours

/*
|--------------------------------------------------------------------------
| task maximum hours
|--------------------------------------------------------------------------
|
| the maximum number of how may hours a task can last 
|
*/
$config['max_task_duration'] = 3*7*24;      //3 weeks

/*
|--------------------------------------------------------------------------
| task start acceptable delay
|--------------------------------------------------------------------------
|
| the acceptable delay of start time of a task 
|
*/
$config['task_start_delay'] = 1800;      //half hour

/*
|--------------------------------------------------------------------------
| task max schedule time
|--------------------------------------------------------------------------
|
| the max value of a scheduled task time
|
*/
$config['task_start_max_schedule'] = '+3 week';      //1 month

/*
|--------------------------------------------------------------------------
| newsfeed 
|--------------------------------------------------------------------------
|
| the max value of a scheduled task time
|
*/
$config['newsfeed_threshold'] = '-1 month';      //1 week(timestamp)

/*
|--------------------------------------------------------------------------
| server timezone
|--------------------------------------------------------------------------
|
| *this must follow the setting on the server
|
*/
$config['default_timezone'] = 'UTC';

/*
|--------------------------------------------------------------------------
| support mail address
|--------------------------------------------------------------------------
|
| maybe "support@newsreps.com"
|
*/
$config['support_mail'] = 'danni@newsreps.com';

/*
|--------------------------------------------------------------------------
| service mail address
|--------------------------------------------------------------------------
|
| maybe "support@newsreps.com"
|
*/
$config['service_mail'] = 'danni@newsreps.com';

/*
|--------------------------------------------------------------------------
| service mail name
|--------------------------------------------------------------------------
|
| 
|
*/
$config['service_name'] = 'Newsreps';

/*
|--------------------------------------------------------------------------
| PARSE configuration
|--------------------------------------------------------------------------
|
| PARSE push settings: id, key, url 
|
|    SetEnv PARSE_APPLICATION_ID NJyQuD08x39Xzj9FCVyXG1BWBd9xn1RssXIGVUe3
|
|    SetEnv PARSE_REST_API_KEY ASkYG5zu6RxIKigIvdx3xJwaaF7qso4SP1kDWPYg
|
|    SetEnv PARSE_CLIENT_KEY pJeuRXAzFEmBwkPIQio6q008HvJ7vH6IUOMAIg7Y
|
|
*/
//------------------iOS---------------------------------------
$config['parse']['app_id'] = $_SERVER['PARSE_APPLICATION_ID'];
$config['parse']['rest_key'] = $_SERVER['PARSE_REST_API_KEY'];
$config['parse']['client_key'] = $_SERVER['PARSE_CLIENT_KEY'];

//------------------Android test------------------------------
//$config['parse']['app_id'] = 'IaQP5UyAStqF1hifEey0OEslTxeeRX6c6Tr0Uv3x';
//$config['parse']['rest_key'] = 'dJyHv4Ljse2oCfLgrlbdJQ0T9FN1qx0wLlyUVYeh';
//$config['parse']['client_key'] = 'z7HdIGP5eFZErabR9j0yGRsCN89EHCZXokX4K2Jj';

//------------------API URL-----------------------------------
$config['parse']['url'] = 'https://api.parse.com/1/';

/*
|--------------------------------------------------------------------------
| S3 bucket configuration
|--------------------------------------------------------------------------
|
|
|
*/
$config['s3']['access_key'] = $_SERVER['AWS_ACCESS_KEY_ID'];  //'AKIAIKFY3RD6TJBHQXJQ'
$config['s3']['secret_key'] = $_SERVER['AWS_SECRET_KEY'];    //'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'
$config['s3']['bucket'] = $_SERVER['S3_BUCKET_NAME'];       //'newsreps-media'
$config['s3']['output'] = $_SERVER['S3_BUCKET_NAME'];       //access by zencode
$config['s3']['use_ssl'] = TRUE;
$config['s3']['verify_peer'] = TRUE;
$config['s3']['resource_url'] = $_SERVER['S3_RESOURCE_URL'];

/*
|--------------------------------------------------------------------------
| facebook api configuration
|--------------------------------------------------------------------------
|
|
|
*/
$config['facebook_app']['app_id'] = '1554766314760275';
$config['facebook_app']['app_secret'] = '677b829182e26d745d6592772a10314e';
//staging
//$config['facebook_app']['app_id'] = '1396899380618058';
//$config['facebook_app']['app_secret'] = 'e355abe0b53e984513c2fed6e90abd04';


/*
|--------------------------------------------------------------------------
| facebook web configuration
|--------------------------------------------------------------------------
|
|
|
*/
//cms
$config['facebook_web']['app_id'] = '1554766314760275';
$config['facebook_web']['app_secret'] = '677b829182e26d745d6592772a10314e';
//staging
//$config['facebook_web']['app_id'] = '1396899380618058';
//$config['facebook_web']['app_secret'] = 'e355abe0b53e984513c2fed6e90abd04';


/*
|--------------------------------------------------------------------------
| twitter app configuration
|--------------------------------------------------------------------------
|
|
|
*/
//cms
$config['twitter']['consumer_key'] = 'RH1qrRhaHGH4G6lmlCGw';
$config['twitter']['consumer_secret'] = 'wUFiTskyQEtciIKwEAonntCO9uQiIpDDv5HoWSd3aps';
//staging
//$config['twitter']['consumer_key'] = 'RH1qrRhaHGH4G6lmlCGw';
//$config['twitter']['consumer_secret'] = 'wUFiTskyQEtciIKwEAonntCO9uQiIpDDv5HoWSd3aps';
$config['twitter']['access_token'] = '1895397793-91SDaziWG5mzmrvaJAAkenExYy4KUYwUDY3w3F3';
$config['twitter']['access_secret'] = 'a9Qo3pez21FAZlMoIQxp8WSU35jVhjy2UhBo3Jj4AdmDj';

/*
| -------------------------------------------------------------------------
| profile upload setting
| -------------------------------------------------------------------------
|
*/
$config['api_profile']['upload_path'] = './temp/';
$config['api_profile']['allowed_types'] = 'jpg|png|jpeg';
$config['api_profile']['max_size'] = '4096';
$config['api_profile']['max_width'] = '4096';
$config['api_profile']['max_height'] = '4096';
$config['api_profile']['fieldname'] = 'multipart-data';

/*
| -------------------------------------------------------------------------
| media profile upload setting
| -------------------------------------------------------------------------
|
*/
$config['media_profile']['upload_path'] = './temp/';
$config['media_profile']['allowed_types'] = 'jpg|png|jpeg';
$config['media_profile']['max_size'] = '2048';
$config['media_profile']['max_width'] = '2048';
$config['media_profile']['max_height'] = '2048';
$config['media_profile']['fieldname'] = 'profile';

/*
| -------------------------------------------------------------------------
| app profile upload setting
| -------------------------------------------------------------------------
|
*/
$config['app_profile']['upload_path'] = './temp/';
$config['app_profile']['allowed_types'] = 'jpg|png|jpeg';
$config['app_profile']['max_size'] = '2048';
$config['app_profile']['max_width'] = '2048';
$config['app_profile']['max_height'] = '2048';
$config['app_profile']['fieldname'] = 'profile';

/*
| -------------------------------------------------------------------------
| upload: configuration
| -------------------------------------------------------------------------
| upload setting
*/ 
 $config['api_upload']['upload_path'] = './temp/';
 $config['api_upload']['allowed'] = 
	array(
		'photo' => 'gif|jpg|png|jpeg', 
		'video' => 'mov|3gp|mp4', 
		'audio' => 'mp3|aac|mp4|ogg|3gp',
	);
 $config['api_upload']['max_size'] = '131072';
 $config['api_upload']['max_width'] = '0';
 $config['api_upload']['max_height'] = '0';
 $config['api_upload']['fieldname'] = 'multipart-data';	//set name as the same here in html form upload 

/*
| -------------------------------------------------------------------------
| image processing configuration
| -------------------------------------------------------------------------
| default setting for image functions
*/
 $config['image']['image_library'] = 'gd2';
 $config['image']['source_image'] = './temp/';	//should append image name run-time
 $config['image']['create_thumb'] = TRUE;
 $config['image']['maintain_ratio'] = TRUE;
 $config['image']['width'] = 320;
 $config['image']['height'] = 480;


/*
| -------------------------------------------------------------------------
| database tables
| -------------------------------------------------------------------------
|
*/
$config['tables'] = array(
   'accounts'=>'accounts', 
   'accounts_transactions'=>'accounts_transactions', 
   'audios'=>'audios', 
   'buyers'=>'buyers', 
   'categories'=>'categories', 
   'categories_stories'=>'categories_stories', 
   'categories_tasks'=>'categories_tasks', 
   'comments'=>'comments', 
   'countries'=>'countries', 
   'groups'=>'groups', 
   'invoices'=>'invoices', 
   'likes'=>'likes', 
   'login_attempts'=>'login_attempts', 
   'notifications'=>'notifications', 
   'notifications_accounts'=>'notifications_accounts',  
   'notifications_responses'=>'notifications_responses', 
   'notifications_stories'=>'notifications_stories', 
   'notifications_tasks'=>'notifications_tasks', 
   'notifications_users'=>'notifications_users', 
   'reported_tasks'=>'reported_tasks', 
   'responses'=>'responses', 
   'sellers'=>'sellers', 
   'stories'=>'stories',  
   'tasks'=>'tasks', 
   'tasks_countries'=>'tasks_countries',
   'tasks_urls'=>'tasks_urls', 
   'transactions'=>'transactions', 
   'uploads'=>'uploads', 
   'users'=>'users', 
   'users_accounts'=>'users_accounts', 
   'users_groups'=>'users_groups', 
   'users_stories'=>'users_stories', 
   'videos'=>'videos'
);

/* End of file newsreps.php */
/* Location: ./application/config/newsreps.php */
