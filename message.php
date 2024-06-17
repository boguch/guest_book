<?php
session_start();
$title = "Сообщения";
require_once "header.php";
?>
<?php


$mysql = new mysqli("MySQL-8.2","root","","users_test");
$mysql->query("SET NAMES 'utf8'");

$per_page = 5;
if (isset($_GET['page'])) {
    $page = $_GET['page'];
} else {
    $page = 1; 
}
$start_from = ($page - 1) * $per_page;


$sql = $mysql->query("SELECT * FROM `users` ORDER BY `users`.`id` DESC LIMIT $start_from, $per_page");
$sql_count = $mysql->query("SELECT COUNT(id) AS total FROM `users`");


$row_count = $sql_count->fetch_assoc();
$total_pages = ceil($row_count['total'] / $per_page);
?>
<section class="u-clearfix u-section-1" >

<div >
        <h1 style = "text-align:center">Сообщения </h1>
        <h3 style = "text-align:center">Страница <?php echo $page?></h3>
        <p style = "text-align:center">В данной таблице представлены все сообщения, введенные пользователями </p>
</div>

</section>


<section class="u-align-center u-clearfix u-section-2" >
      <div  class="u-clearfix u-sheet u-sheet-1">
        <div class="u-expanded-width u-table u-table-responsive u-table-1">
          <table class="u-table-entity u-table-entity-1" id = "table-id" >
            <colgroup>
              <col width="25%">
              <col width="25%">
              <col width="25%">
              <col width="25%">
            </colgroup>
            <thead class="u-palette-1-base u-table-header u-table-header-1">
              <tr style="height: 21px;">
                <th class="u-border-1 u-border-palette-1-base u-table-cell">Сообщение</th>
                <th class="u-border-1 u-border-palette-1-base u-table-cell">Имя пользователя</th>
                <th class="u-border-1 u-border-palette-1-base u-table-cell">Email пользователя</th>
                <th class="u-border-1 u-border-palette-1-base u-table-cell">Дата</th>
              </tr>
            </thead>

            <tbody class="u-table-body">
              


                <?php
                    while ($row_count = $sql->fetch_assoc()) {
                        echo "<tr style='height: 75px'>";
                        echo "<td class='u-border-1 u-border-grey-30 u-table-cell'>" . $row_count["text"] . "</td>";
                        echo "<td class='u-border-1 u-border-grey-30 u-table-cell'>" . $row_count["username"] . "</td>";
                        echo "<td class='u-border-1 u-border-grey-30 u-table-cell'>" . $row_count["email"] . "</td>";
                        echo "<td class='u-border-1 u-border-grey-30 u-table-cell'>" . $row_count["date"] . "</td>";
                        echo "</tr>";
                    }



                    $mysql->close();
                ?>

              
            </tbody>
          </table>
        </div>
      </div>
</section>


<?php
echo "<div style = 'text-align:center'>";
for ($i = 1; $i <= $total_pages; $i++) {
    
    echo "<a href='?page=$i'>$i</a> ";

}
echo "</div>";
?>

<script>
    new Tablesort(document.getElementById('table-id'));
</script>


</div>
</body> 

</html>



        

        
    

