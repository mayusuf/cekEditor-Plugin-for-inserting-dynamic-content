<?php
    $srvrcon = mysql_connect("localhost", "root", "") or die(mysql_error());
    $dbcon = mysql_select_db("mydatabase", $srvrcon) or die(mysql_error());

    $str = '';
    $i = 0;

    $qry = mysql_query("SELECT * FROM select_value");
    $row = mysql_num_rows($qry);

    if($row)
    {
        $str = $str.'<select id="dropdown">';
        while($ary = mysql_fetch_array($qry))
        {
            $str = $str.'<option>'.$ary['option_value'].'</option>';
        }
        $str = $str.'</select>';
    }
?>