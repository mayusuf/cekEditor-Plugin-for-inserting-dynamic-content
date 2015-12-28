<?php
    $srvrcon = mysql_connect("localhost", "root", "") or die(mysql_error());
    $dbcon = mysql_select_db("mydatabase", $srvrcon) or die(mysql_error());

    $key = $_POST['key'];

    $qry = mysql_query("SELECT * FROM select_data WHERE data_option = '$key'");
    $row = mysql_num_rows($qry);

    if($row)
    {
        $ary = mysql_fetch_array($qry);
        echo $ary['data_value'];
    }
    else
    {
        echo "";
    }
?>