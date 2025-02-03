<?php    
// get latest users for stats widget    
$rows1 = [];    $get_rows = $db->query("SELECT users.user_id,users.user_name,users.user_picture,users.user_activated,users.user_gender FROM users WHERE users.user_activated = '1' LIMIT 8") or _error('SQL_ERROR');    while ($row = $get_rows->fetch_assoc()) {    $row['user_picture'] = get_picture($row['user_picture'], $row['user_gender']);    $row['connection'] = $user->connection($row['user_id']);    $rows1[] = $row;    }   $smarty->assign('rows1', $rows1);         
// get latest users online now for stats widget    
$rows4 = [];    $get_rows = $db->query("SELECT users.user_id,users.user_name,users.user_picture,users.user_activated,users.user_last_seen,users.user_gender FROM users WHERE users.user_activated = '1' AND user_last_seen >= SUBTIME(NOW(), SEC_TO_TIME(".secure($system['offline_time']).")) AND user_chat_enabled = '1'  LIMIT 8") or _error('SQL_ERROR');    while ($row = $get_rows->fetch_assoc()) {    $row['user_picture'] = get_picture($row['user_picture'], $row['user_gender']);    $row['connection'] = $user->connection($row['user_id']);    $rows4[] = $row;    }   $smarty->assign('rows4', $rows4);
// Get total online user count
$totalOnlineUsers = 0;$totalOnlineQuery = $db->query("SELECT COUNT(user_id) as total_online FROM users WHERE users.user_activated = '1' AND user_last_seen >= SUBTIME(NOW(), SEC_TO_TIME(".secure($system['offline_time']).")) AND user_chat_enabled = '1'") or _error('SQL_ERROR');while ($row = $totalOnlineQuery->fetch_assoc()) {    $totalOnlineUsers = $row['total_online'];}$smarty->assign('totalOnlineUsers', $totalOnlineUsers);      
// get latest male users for stats widget    
$rows2 = [];    $get_rows = $db->query("SELECT users.user_id,users.user_name,users.user_picture,users.user_activated,users.user_gender FROM users WHERE users.user_activated = '1' AND users.user_gender = '1' LIMIT 8") or _error('SQL_ERROR');    while ($row = $get_rows->fetch_assoc()) {    $row['user_picture'] = get_picture($row['user_picture'], $row['user_gender']);    $row['connection'] = $user->connection($row['user_id']);    $rows2[] = $row;    }   $smarty->assign('rows2', $rows2);
// Get total boys user count
$totalBoyesUsers = 0;$totalBoyesQuery = $db->query("SELECT COUNT(user_id) as total_boyes FROM users WHERE users.user_activated = '1' AND users.user_gender = '1'") or _error('SQL_ERROR');while ($row = $totalBoyesQuery->fetch_assoc()) {    $totalBoyesUsers = $row['total_boyes'];}$smarty->assign('totalBoyesUsers', $totalBoyesUsers);
// get latest female users for stats widget    
$rows3 = [];    $get_rows = $db->query("SELECT users.user_id,users.user_name,users.user_picture,users.user_activated,users.user_gender FROM users WHERE users.user_activated = '1' AND users.user_gender = '2' LIMIT 8") or _error('SQL_ERROR');    while ($row = $get_rows->fetch_assoc()) {    $row['user_picture'] = get_picture($row['user_picture'], $row['user_gender']);    $row['connection'] = $user->connection($row['user_id']);    $rows3[] = $row;    }   $smarty->assign('rows3', $rows3);
// Get total girls user count
$totalGirlsUsers = 0;$totalGirlsQuery = $db->query("SELECT COUNT(user_id) as total_girls FROM users WHERE users.user_activated = '1' AND users.user_gender = '2'") or _error('SQL_ERROR');while ($row = $totalGirlsQuery->fetch_assoc()) {    $totalGirlsUsers = $row['total_girls'];}$smarty->assign('totalGirlsUsers', $totalGirlsUsers);
// get users birthdays today for stats widget    
$rows5 = [];    $get_rows = $db->query("SELECT users.user_id,users.user_name,users.user_picture,users.user_activated,users.user_birthdate,users.user_gender from users WHERE DAY(user_birthdate) = DAY(CURDATE()) and MONTH(user_birthdate) = MONTH(CURDATE()) LIMIT 8") or _error('SQL_ERROR');    while ($row = $get_rows->fetch_assoc()) {        $row['user_picture'] = get_picture($row['user_picture'], $row['user_gender']);        $row['connection'] = $user->connection($row['user_id']);        $rows5[] = $row;    }   $smarty->assign('rows5', $rows5);
// Get total birthday user count
$totalBirthdayUsers = 0;$totalBirthdayQuery = $db->query("SELECT COUNT(user_id) as total_girls FROM users WHERE DAY(user_birthdate) = DAY(CURDATE()) and MONTH(user_birthdate) = MONTH(CURDATE())") or _error('SQL_ERROR');while ($row = $totalBirthdayQuery->fetch_assoc()) {    $totalBirthdayUsers = $row['total_girls'];}$smarty->assign('totalBirthdayUsers', $totalBirthdayUsers);     
// Get total user count for stats widget  
$rowtotalusers = [];  $totalusers = $db->query("SELECT COUNT(user_id) FROM users WHERE users.user_activated = '1'") or _error('SQL_ERROR');  while ($row = $totalusers->fetch_assoc()) {  $rowtotalusers[] = $row;  }  $smarty->assign('rowtotalusers', $rowtotalusers);    
// Get total male user count for stats widget  
$rowtotalmaleusers = [];  $totalmaleusers = $db->query("SELECT COUNT(user_gender) FROM users WHERE users.user_gender = '1'") or _error('SQL_ERROR');  while ($row = $totalmaleusers->fetch_assoc()) {  $rowtotalmaleusers[] = $row;  }  $smarty->assign('rowtotalmaleusers', $rowtotalmaleusers);    
// Get total female user count for stats widget  
$rowtotalfemaleusers = [];  $totalfemaleusers = $db->query("SELECT COUNT(user_id) FROM users WHERE users.user_gender = '2'") or _error('SQL_ERROR');  while ($row = $totalfemaleusers->fetch_assoc()) {  $rowtotalfemaleusers[] = $row;  }  $smarty->assign('rowtotalfemaleusers', $rowtotalfemaleusers);  
// Get total blog count for stats widget  
$rowtotalblog = 0;  $totalblog = $db->query("SELECT COUNT(article_id) as total_blogs FROM posts_articles") or _error('SQL_ERROR');  while ($row = $totalblog->fetch_assoc()) {  $rowtotalblog = $row['total_blogs'];  }  $smarty->assign('rowtotalblog', $rowtotalblog);
// Get total group count for stats widget  
$rowtotalgroup = 0;  $totalgroup = $db->query("SELECT COUNT(group_id) as total_groups FROM `groups`") or _error('SQL_ERROR');  while ($row = $totalgroup->fetch_assoc()) {  $rowtotalgroup = $row['total_groups'];  }  $smarty->assign('rowtotalgroup', $rowtotalgroup);
// Get total pages count for stats widget 
$rowtotalpage = 0;  $totalpage = $db->query("SELECT COUNT(page_id) as total_pages FROM pages") or _error('SQL_ERROR');  while ($row = $totalpage->fetch_assoc()) {  $rowtotalpage = $row['total_pages'];  }  $smarty->assign('rowtotalpage', $rowtotalpage);
// Get total events count for stats widget  
$rowtotalevent= 0;  $totalevent = $db->query("SELECT COUNT(event_id) as total_events FROM events") or _error('SQL_ERROR');  while ($row = $totalevent->fetch_assoc()) {  $rowtotalevent = $row['total_events'];  }  $smarty->assign('rowtotalevent', $rowtotalevent);
// Get total marketplace count for stats widget  
$rowtotalproduct= 0;  $totalproduct = $db->query("SELECT COUNT(product_id) as total_products FROM posts_products") or _error('SQL_ERROR');  while ($row = $totalproduct->fetch_assoc()) {  $rowtotalproduct = $row['total_products']; }  $smarty->assign('rowtotalproduct', $rowtotalproduct);
?>
