<!DOCTYPE html>
<html>
    <?php
    // libreries
    require_once "contenido/ini.php";
    // head
    require_once RAIZ."contenido/head.php";
    // connect db
    require_once RAIZ."php/connect.php";

    // require_once RAIZ."php/funct-basic.php";

    ?>
<body>
    <div>
        <?php
            if(!isset($_SESSION["user"]))
            {
        ?>
        <div id="content">
        <?php
            require_once RAIZ."contenido/login.php";
        ?>
        </div>
        <?php
            }
            else
            {
                if($_SESSION["user"]["user_role"] == 1) 
                {
                
        ?>
    <!-- Container Content -->
        <div class="wrapper">
            <!-- Sidebar    -->
            <?php require_once RAIZ."contenido/aside2.php"; ?>
            <!-- Page Content   -->
            <div id="content">
                <?php
                        // echo($cargando);
                ?>
                <!-- Nav Web -->
                <?php require_once RAIZ."contenido/nav.php";?>

                <div class="bd-example">
                    <?php require_once RAIZ."contenido/welcome.php";?>
                </div>
                
                <div id="forms">
                    <br>
                    <!-- Section News Generator -->
                    <div class="bd-example">
                        <?php require_once RAIZ."contenido/gen-nov.php";?>
                    </div>
                    <br>
                    <!-- Form Shift Arrivals and Departures -->
                    <div class="bd-example" id="form-depart">
                        <?php require_once RAIZ."contenido/form/form-c1.php";?> 
                    </div>
                    
                    <!-- Form Level Unkeep -->
                    <div class="bd-example" id="form-unkeep">
                        <?php require_once RAIZ."contenido/form/form-lvl.php";?>
                    </div>
                    
                    <!-- Form Temp Frigdes -->
                    <div class="bd-example" id="form-fridge">
                        <?php require_once RAIZ."contenido/prueba2.php";?>
                    </div>
                    
                    <!-- Form Data Rooms -->
                    <div class="bd-example" id="form-floor">
                        <?php require_once RAIZ."contenido/form/form-floors.php";?>
                    </div>
                    
                    <!-- Form Data Reception -->
                    <div class="bd-example" id="form-recep">
                        <?php require_once RAIZ."contenido/form/form-recep.php";?>
                    </div>
                    
                    <!-- Form Data VIP Guests -->
                    <div class="bd-example" id="form-vip">
                        <?php require_once RAIZ."contenido/form/form-viprecep.php";?>
                    </div>

                    <br>
                    <br>
                </div>
                <div id="dashboard">
                    <?php require_once RAIZ."contenido/dashboard.php";?>
                </div>

                <div id="news">
                    <?php require_once RAIZ."contenido/list-news.php";?>
                </div>
                
                <div id="reports">
                    <?php require_once RAIZ."contenido/views.php";?>
                </div>

                
            <!-- Footer -->
            <?php require_once RAIZ."contenido/footer.php"; ?>
            </div>
        </div>
        <?php
                }else if($_SESSION["user"]["user_role"] == 2) {
        ?>
        <div class="wrapper">
        <!-- Sidebar    -->
        <?php require_once RAIZ."contenido/aside2.php"; ?>
        <!-- Page Content   -->
            <div id="content">
                <!-- Nav Web -->
                <?php require_once RAIZ."contenido/nav.php";?>
                <div class="bd-example">
                    <?php require_once RAIZ."contenido/welcome.php";?>
                </div>
                <!-- Section News Generator -->
                <div id="form2">
                    <div class="bd-example">
                        <?php require_once RAIZ."contenido/gen-nov.php";?>
                    </div>
                </div>
                <div id="dashboard2">
                    <div class="line"></div>
                    <?php require_once RAIZ."contenido/dashboard.php";?>
                </div>
                <div id="news2">
                    <div class="line"></div>
                    <?php require_once RAIZ."contenido/list-news.php";?>
                </div>
                <div id="backup">
                    <div class="line"></div>
                    <?php require_once RAIZ."contenido/form/form-backup.php";?>
                </div>
                <br>
                <div id="adminpanel">
                    <div class="line"></div>
                    <?php require_once RAIZ."contenido/form/form-register.php";?>
                </div>
                <div id="reports2">
                    <div class="line"></div>
                    <?php require_once RAIZ."contenido/views.php";?>
                </div>
                
            <!-- Footer -->
            <?php require_once RAIZ."contenido/footer.php"; ?>
            </div>
            
        </div>
        <?php
                }
            }
        ?>
        <?php require_once RAIZ."contenido/footer.php"; ?>
    </div>
</body>
</html>