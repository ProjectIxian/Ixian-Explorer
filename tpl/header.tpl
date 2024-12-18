<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>IXIscope</title>
    <meta name="description"
          content="Ixian is a fully scalable, decentralized platform that enables encrypted data streaming and high volume of micro-transactions.">
    <meta name="keywords" content="Ixian,DLT,Blockchain,Cryptocurrency,Crypto,IxiCash,Explorer,Spixi">

    <link href="vendor/fontawesome-free-6.7.1-web/css/all.css" rel="stylesheet" type="text/css">
    <link href="css/sb-admin-2.css" rel="stylesheet">
    <link href="css/explorer.css" rel="stylesheet">
    <link href="css/header.css" rel="stylesheet">
    <link href="css/footer.css" rel="stylesheet">

    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

</head>
<body>
    <main class="mainContent">
        <div class="bg-3 posSticky">
            <div class="navSearchMobile">
                <form class="navSearchInput" method="get">
                    <input type="hidden" name="p" value="search"/>
                    <input class="input" aria-label="Search" name="q" value="<?php echo $this->q;?>" type="text" placeholder="Type or paste blocks, addresses or transaction ID"/>
                    <button type="submit" class="button btn-p">Go <i class="fa fa-arrow-right"></i></button>
                </form>
            </div>
            <nav class="navbar navbar-expand-lg navbar-light header pageLimitWrapper">
                <div class="navLeftSide">
                    <a class="navbar-brand" href="index.php">
                        <img src="gfx/ixiscope-logotype.svg" alt="ixiscope-logo" width="118px" />
                    </a>
                    <form class="navSearchInput navLeftSideInput" method="get">
                        <input type="hidden" name="p" value="search"/>
                        <input class="input" aria-label="Search" name="q" value="<?php echo $this->q;?>" type="text" placeholder="Type or paste blocks, addresses or transaction ID"/>
                        <button type="submit" class="button btn-p">Go <i class="fa fa-arrow-right"></i></button>
                    </form>
                </div>

                <button class="navbar-toggler menuButton" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                    <ul class="navbar-nav headerUl">
                        <li>
                            <a class="headerItem label-sm" href="index.php">Blocks</a>
                        </li>
                        <li>
                            <a class="headerItem label-sm" href="?p=nodes">Nodes</a>
                        </li>
                        <li>
                            <a class="headerItem label-sm" href="?p=network">Statistics</a>
                        </li>
                        <li>
                            <a class="headerItem label-sm" href="?p=top">Top 20</a>
                        </li>
                        <li>
                            <a class="headerItem label-sm" href="?p=emissions">IxiCash Emissions</a>
                        </li>
                        <li>
                            <i class="fa fa-moon themeToggle" id="theme-toggle"></i>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>

            <script>
                document.addEventListener('DOMContentLoaded', () => {
                    const currentSearch = window.location.search;
                    const themeToggleButton = document.getElementById('theme-toggle');
                    const rootElement = document.documentElement;

                    if (currentSearch === "") {
                        // Select the element to hide
                        const navSearchMobile = document.querySelector('.navSearchMobile');
                        const navLeftSideSearch = document.querySelector('.navLeftSideInput');

                        // Hide the element if it exists
                        if (navSearchMobile) {
                            navSearchMobile.style.display = 'none';
                            navLeftSideSearch.style.display = 'none';
                        }
                    }

                    const updateThemeIcon = () => {
                        if (rootElement.classList.contains('dark-mode')) {
                            themeToggleButton.classList.add('fa-sun');
                            themeToggleButton.classList.remove('fa-moon');
                        } else {
                            themeToggleButton.classList.add('fa-moon');
                            themeToggleButton.classList.remove('fa-sun');
                        }
                    };

                    // Load saved theme from localStorage
                    const savedTheme = localStorage.getItem('theme');
                    if (savedTheme) {
                        rootElement.classList.add(savedTheme);
                    }

                    updateThemeIcon();

                    themeToggleButton.addEventListener('click', () => {
                        // Toggle the dark-mode class
                        rootElement.classList.toggle('dark-mode');

                        // Save the current theme to localStorage
                        if (rootElement.classList.contains('dark-mode')) {
                            localStorage.setItem('theme', 'dark-mode');
                        } else {
                            localStorage.removeItem('theme');
                        }

                        updateThemeIcon();
                    });
                });
            </script>

            <?php if($this->alert > 0) {?>
            <div class="alertContainer">
            <div class="alertCardWarning">
            <i class="fa fa-hourglass-start"></i>
            <p class="body-sm"><span class="label-sm">IXIscope DLT Node is synchronizing.</span> Data may be out of date, please try again later.</p>
            </div>
            </div>
            <?php }?>