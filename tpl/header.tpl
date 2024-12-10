<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Ixian Block Explorer</title>
    <meta name="description"
          content="Ixian is a fully scalable, decentralized platform that enables encrypted data streaming and high volume of micro-transactions.">
    <meta name="keywords" content="Ixian,DLT,Blockchain,Cryptocurrency,Crypto,IxiCash,Explorer,Spixi">

    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

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


<body id="page-top">

<main class="main">
    <div class="mainContent">
        <div class="bg-3 posSticky">
            <nav class="navbar-expand-lg navbar-light header pageLimitWrapper">
                <a class="navbar-brand" href="index.php">
                    <img src="gfx/ixiscope-logotype.svg" alt="ixiscope-logo" width="118px" /></a>

                <ul class="navbar-nav collapse navbar-collapse headerUl" id="navbarSupportedContent">
                    <li>
                        <a class="headerItem" href="index.php">Blocks</a>
                    </li>
                    <li>
                        <a class="headerItem" href="?p=nodes">Nodes</a>
                    </li>
                    <li>
                        <a class="headerItem" href="?p=network">Statistics</a>
                    </li>
                    <li>
                        <a class="headerItem" href="?p=top">Top 20</a>
                    </li>
                    <li>
                        <a class="headerItem" href="?p=emissions">IxiCash Emissions</a>
                    </li>
                    <li>
                        <i class="fas fa-moon themeToggle" id="theme-toggle"></i>
                    </li>
                </ul>

                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </nav>
        </div>


            <script>
                document.addEventListener('DOMContentLoaded', () => {
                    const themeToggleButton = document.getElementById('theme-toggle');
                    const rootElement = document.documentElement;

                    // Load saved theme from localStorage
                    const savedTheme = localStorage.getItem('theme');
                    if (savedTheme) {
                        rootElement.classList.add(savedTheme);
                    }

                    themeToggleButton.addEventListener('click', () => {
                        // Toggle the dark-mode class
                        rootElement.classList.toggle('dark-mode');

                        // Save the current theme to localStorage
                        if (rootElement.classList.contains('dark-mode')) {
                            localStorage.setItem('theme', 'dark-mode');
                        } else {
                            localStorage.removeItem('theme');
                        }
                    });
                });
            </script>

            <?php if($this->alert > 0) {?>
            <div class="alertContainer">
            <div class="alertCardWarning">
            <i class="fas fa-hourglass-start"></i>
            <p>IXIscope DLT Node is synchronizing. Data may be out of date, please try again later.</p>
            </div>
            </div>
            <?php }?>