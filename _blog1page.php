<?php
    // 페이지네이션

    if(isset($_GET['current_page'])) {
        $current_page = $_GET['current_page'];
    } else {
        $current_page = 1;
    }

    $show_item = 3;
    $start_item = ($current_page - 1) * $show_item;
    
    // 마지막 페이지 구하기
    require('_conn.php');
    $sql = "SELECT * FROM `blog1` WHERE `del_flg`=0";
    $count = mysqli_query($conn, $sql)->num_rows;
    $end_page = ceil($count/$show_item);

    //조회
    $sql = "SELECT * FROM `blog1` WHERE `del_flg`=0 ORDER BY no DESC LIMIT $start_item, $show_item";
    $result = mysqli_query($conn, $sql);
    
    
    $prev_page = $current_page - 1;
    $next_page = $current_page + 1;

?>