<?php
    require('_conn.php');
    $no = $_GET['no']; 

    // SELECT 조회, INSERT 삽입, DELETE 삭제, UPDATE 변경

    // DB에 남기고 del_flg만 변경해서 삭제 된 것 처럼 처리
    // $sql = "UPDATE `bbs1` SET `del_flg` = 1 WHERE `no`= $no";

    // 완전 삭제
    $sql = "DELETE FROM `bbs1` WHERE `no`=$no";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        echo "<script>alert('글 삭제가 완료되었습니다.');location.href='bbs.php'</script>";
    }
?>