<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home.aspx.vb" Inherits="UNSC.Home" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Dashboard Login">
    <meta name="theme-color" content="#BAE8E8">

    <title>Dashboard Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">


    <link href="Css/Login.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

    <link rel="shortcut icon" type="image/x-icon" href="~/Images/favicon.ico" />

</head>
<body>

    <%--<div class="container-fluid w-50" style="position: absolute; z-index: 999">

        <div class="col-auto col-color" style="position: absolute; z-index: 999">
            <a href="javascript:void(0)" id="menu" data-bs-target="#sidebar" data-bs-toggle="collapse" class="d-flex align-items-top h-100 px-2 py-2 text-decoration-none"><i class="fa-solid fa-bars"></i></a>
        </div>
        <div class="row flex-nowrap w-25 mx-0 px-0">
            <div class="col-auto col-color">
                <div id="sidebar" class="collapse collapse-horizontal text-end">
                    <div id="sidebar-nav" data-accordion="false" class="list-group text-sm-start">

                        <button class="dropdown-btn">ADD/UPDATE COMPANY<i class="fa fa-caret-down"></i></button>
                        <div class="dropdown-container">
                            <a class="dropdown-listitem" href="MC.aspx">Mgt Company</a>
                      
                        </div>

                        <div class="COMPANY BIO DATA">
                            <button class="dropdown-btn">COMPANY BIO DATA<i class="fa fa-caret-down"></i></button>
                            <div class="dropdown-container">
                               <a class="dropdown-listitem" href="Dean_DecisionMaker.aspx">Decision Maker</a>
                           
                            </div>
                        </div>

                        <div class="FSC RECORDS">
                            <a class="dropdown-link" href="Search_Fsc_Records.aspx">FSC RECORDS</a>
                        </div>

                        <div class="MAIL REFERENCE">
                            <a class="dropdown-link" href="MailReference.aspx">MAIL REFERENCE</a>
                        </div>

                        <div class="RENEWAL FORMS">
                            <a class="dropdown-link" href="../Main/Renewal/GBC1.aspx">RENEWAL FORMS</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>

    <div class="container">
        <div class="row">
            <div class="col logo-container">
                <asp:Label ID="properties" runat="server"></asp:Label>

                <img src="~\Images\transparentlogo.png" runat="server" style="position: absolute; z-index: 0; opacity: 5%; height: 250px" />

                <%--advert pro 0 0 586.502 107.25--%>
                <%--generate new text (keep size 150, copy between g tags + copy viewbox attribute):   https://akashraj9828.github.io/svg-text-animation-generator/--%>

                <svg width="60%" height="100%" viewBox="0 0 586.502 107.25" xmlns="http://www.w3.org/2000/svg" style="z-index: 100">
                    <g id="svgGroup" stroke-linecap="round" fill-rule="evenodd" font-size="9pt" stroke="#000" stroke-width="0.25mm" fill="none" style="stroke: #000; stroke-width: 0.25mm; fill: none">
                        <path d="M 55.352 0 L 55.352 105 L 47.102 105.75 Q 37.352 106.8 31.802 106.8 A 52.086 52.086 0 0 1 24.569 106.315 A 44.489 44.489 0 0 1 21.377 105.75 A 40.228 40.228 0 0 1 12.941 102.896 A 45.539 45.539 0 0 1 11.702 102.3 Q 6.302 99.6 3.152 94.35 A 21.317 21.317 0 0 1 0.605 87.684 Q 0.002 84.797 0.002 81.45 L 0.002 53.1 A 29.922 29.922 0 0 1 1.111 44.671 A 20.288 20.288 0 0 1 12.752 31.5 A 28.924 28.924 0 0 1 19.343 29.408 Q 23.189 28.65 27.752 28.65 Q 33.602 28.65 39.077 30 Q 44.552 31.35 48.602 33.75 L 48.602 0 L 55.352 0 Z M 6.602 53.55 L 6.602 81.6 A 22.212 22.212 0 0 0 7.264 87.202 A 14.287 14.287 0 0 0 13.727 96.075 Q 20.852 100.5 32.702 100.5 Q 39.902 100.5 48.602 99 L 48.602 39.75 A 33.357 33.357 0 0 0 44.291 37.764 Q 42.104 36.929 39.58 36.262 A 56.197 56.197 0 0 0 38.852 36.075 A 47.16 47.16 0 0 0 30.471 34.739 A 41.863 41.863 0 0 0 27.752 34.65 A 30.634 30.634 0 0 0 20.961 35.364 A 21.784 21.784 0 0 0 12.602 39.15 Q 7.033 43.327 6.633 52.157 A 30.812 30.812 0 0 0 6.602 53.55 Z" id="0" vector-effect="non-scaling-stroke" />
                        <path d="M 123.902 60.3 L 123.902 105 Q 107.702 106.65 100.502 106.65 A 68.951 68.951 0 0 1 90.648 105.99 Q 81.628 104.685 75.452 100.8 Q 67.295 95.669 66.293 83.269 A 44.927 44.927 0 0 1 66.152 79.65 L 66.152 67.2 A 32.499 32.499 0 0 1 66.893 59.999 Q 67.941 55.392 70.472 52.161 A 17.328 17.328 0 0 1 76.652 47.25 A 22.247 22.247 0 0 1 81.828 45.463 Q 85.286 44.7 89.552 44.7 Q 96.902 44.7 104.402 46.95 Q 111.902 49.2 117.152 53.1 A 22.661 22.661 0 0 0 116.302 46.742 A 17.515 17.515 0 0 0 111.902 39.225 A 13.76 13.76 0 0 0 107.369 36.276 Q 101.838 33.95 92.252 34.05 L 92.702 28.65 A 72.176 72.176 0 0 1 100.203 29.012 Q 107.794 29.808 112.486 32.356 A 18.087 18.087 0 0 1 113.927 33.225 A 25.076 25.076 0 0 1 118.116 36.696 Q 120.713 39.412 121.87 42.602 A 15.202 15.202 0 0 1 122.327 44.1 Q 123.398 48.382 123.74 54.327 A 103.993 103.993 0 0 1 123.902 60.3 Z M 117.152 99.3 L 117.152 58.65 A 61.938 61.938 0 0 0 110.379 55.451 A 82.122 82.122 0 0 0 103.952 53.175 A 54.364 54.364 0 0 0 96.457 51.395 A 41.781 41.781 0 0 0 89.852 50.85 A 24.439 24.439 0 0 0 84.526 51.398 Q 80.75 52.241 77.945 54.378 A 15.384 15.384 0 0 0 77.477 54.75 A 11.786 11.786 0 0 0 73.952 59.875 Q 72.752 63.115 72.752 67.65 L 72.752 80.7 A 25.012 25.012 0 0 0 73.392 86.559 A 14.858 14.858 0 0 0 80.027 96.075 A 26.072 26.072 0 0 0 86.741 98.994 Q 89.981 99.926 93.883 100.333 A 62.397 62.397 0 0 0 100.352 100.65 A 75.2 75.2 0 0 0 104.454 100.525 Q 108.021 100.328 112.685 99.823 A 273.478 273.478 0 0 0 117.152 99.3 Z" id="1" vector-effect="non-scaling-stroke" />
                        <path d="M 134.702 85.95 L 141.152 85.95 A 14.921 14.921 0 0 0 147.169 96.401 A 18.358 18.358 0 0 0 147.977 96.975 Q 153.902 100.95 162.452 100.95 A 27.389 27.389 0 0 0 169.974 99.954 A 22.896 22.896 0 0 0 176.102 97.2 Q 181.503 93.738 181.918 87.463 A 16.121 16.121 0 0 0 181.952 86.4 A 13.27 13.27 0 0 0 181.426 82.58 A 10.616 10.616 0 0 0 179.102 78.45 Q 176.252 75.3 172.127 73.425 A 62.366 62.366 0 0 0 169.263 72.217 Q 165.799 70.847 160.952 69.3 A 190.602 190.602 0 0 1 156.141 67.694 Q 151.879 66.204 148.877 64.875 Q 144.302 62.85 140.852 59.25 A 14.705 14.705 0 0 1 136.982 51.491 A 18.597 18.597 0 0 1 136.802 50.25 A 6.12 6.12 0 0 1 136.723 49.723 Q 136.662 49.169 136.653 48.405 A 22.766 22.766 0 0 1 136.652 48.15 A 18.251 18.251 0 0 1 138.87 39.486 A 21.836 21.836 0 0 1 139.352 38.625 Q 142.052 34.05 147.827 31.05 A 25 25 0 0 1 154.073 28.848 Q 156.94 28.224 160.259 28.088 A 46.137 46.137 0 0 1 162.152 28.05 A 38.406 38.406 0 0 1 166.577 28.294 A 29.146 29.146 0 0 1 170.552 29.025 Q 174.131 29.955 176.207 30.954 A 14.28 14.28 0 0 1 176.402 31.05 Q 178.367 32.033 178.887 32.358 A 2.715 2.715 0 0 1 178.952 32.4 L 176.552 38.1 Q 176.131 37.819 174.462 36.948 A 141.664 141.664 0 0 0 174.227 36.825 A 17.668 17.668 0 0 0 172.787 36.164 Q 171.269 35.541 169.202 34.95 Q 166.052 34.05 162.152 34.05 Q 154.052 34.05 148.352 38.025 Q 142.735 41.942 143.382 49.283 A 18.502 18.502 0 0 0 143.402 49.5 A 9.609 9.609 0 0 0 147.323 56.647 A 12.914 12.914 0 0 0 148.652 57.525 Q 153.452 60.3 162.902 63.15 A 195.775 195.775 0 0 1 168.287 64.962 Q 173.055 66.649 176.402 68.175 Q 181.502 70.5 185.102 74.925 A 15.682 15.682 0 0 1 188.277 81.799 A 22.193 22.193 0 0 1 188.702 86.25 A 19.791 19.791 0 0 1 186.59 95.426 A 20.288 20.288 0 0 1 182.027 101.25 Q 176.682 106.055 167.345 107.012 A 48.023 48.023 0 0 1 162.452 107.25 A 42.021 42.021 0 0 1 155.416 106.69 Q 151.377 106.004 148.007 104.477 A 26.151 26.151 0 0 1 147.677 104.325 A 26.658 26.658 0 0 1 142.652 101.289 A 20.158 20.158 0 0 1 138.227 96.6 Q 135.002 91.8 134.702 85.95 Z" id="2" vector-effect="non-scaling-stroke" />
                        <path d="M 210.302 0 L 210.302 33.9 A 29.178 29.178 0 0 1 215.614 31.295 A 37.613 37.613 0 0 1 219.827 30 Q 225.302 28.65 231.152 28.65 Q 238.058 28.65 243.084 30.274 A 23.462 23.462 0 0 1 246.152 31.5 A 21.179 21.179 0 0 1 254.854 38.494 Q 257.669 42.479 258.526 47.984 A 33.241 33.241 0 0 1 258.902 53.1 L 258.902 105 L 252.302 105 L 252.302 53.4 Q 252.302 46.542 249.371 42.282 A 13.57 13.57 0 0 0 246.377 39.15 Q 240.452 34.65 231.302 34.65 A 43.646 43.646 0 0 0 221.045 35.902 A 48.504 48.504 0 0 0 220.352 36.075 Q 214.802 37.5 210.302 39.9 L 210.302 105 L 203.552 105 L 203.552 0 L 210.302 0 Z" id="3" vector-effect="non-scaling-stroke" />
                        <path d="M 286.352 0 L 286.352 33.75 A 27.858 27.858 0 0 1 290.813 31.554 Q 292.97 30.71 295.468 30.083 A 45.782 45.782 0 0 1 295.802 30 Q 301.352 28.65 307.202 28.65 A 45.737 45.737 0 0 1 313.932 29.118 Q 317.517 29.652 320.526 30.795 A 25.668 25.668 0 0 1 322.202 31.5 A 21.179 21.179 0 0 1 330.904 38.494 Q 333.719 42.479 334.576 47.984 A 33.241 33.241 0 0 1 334.952 53.1 L 334.952 81.45 Q 334.952 88.674 332.143 93.758 A 19.172 19.172 0 0 1 331.802 94.35 Q 328.652 99.6 323.252 102.3 A 41.67 41.67 0 0 1 315.403 105.309 A 37.726 37.726 0 0 1 313.577 105.75 A 47.252 47.252 0 0 1 306.221 106.717 A 55.78 55.78 0 0 1 303.152 106.8 Q 298.903 106.8 292.192 106.185 A 276.223 276.223 0 0 1 287.852 105.75 L 279.602 105 L 279.602 0 L 286.352 0 Z M 328.352 81.6 L 328.352 53.55 Q 328.352 43.65 322.352 39.15 A 21.905 21.905 0 0 0 313.622 35.283 A 30.962 30.962 0 0 0 307.202 34.65 A 44.586 44.586 0 0 0 298.229 35.591 A 51.164 51.164 0 0 0 296.102 36.075 Q 290.402 37.5 286.352 39.75 L 286.352 99 Q 295.052 100.5 302.252 100.5 Q 310.928 100.5 317.071 98.128 A 24.757 24.757 0 0 0 321.227 96.075 A 14.497 14.497 0 0 0 327.961 86.002 A 23.435 23.435 0 0 0 328.352 81.6 Z" id="4" vector-effect="non-scaling-stroke" />
                        <path d="M 403.202 57.6 L 403.202 77.4 A 37.789 37.789 0 0 1 402.019 87.089 A 28.536 28.536 0 0 1 396.302 98.25 Q 389.402 106.5 375.452 106.5 A 37.16 37.16 0 0 1 367.124 105.625 Q 361.431 104.316 357.343 101.048 A 21.894 21.894 0 0 1 354.377 98.175 A 29.404 29.404 0 0 1 347.569 82.469 A 39.366 39.366 0 0 1 347.252 77.4 L 347.252 57.6 A 44.74 44.74 0 0 1 347.998 49.156 Q 349.582 40.924 354.527 35.775 A 23.471 23.471 0 0 1 365.414 29.45 Q 369.064 28.434 373.41 28.244 A 46.65 46.65 0 0 1 375.452 28.2 A 34.723 34.723 0 0 1 384.01 29.195 A 23.839 23.839 0 0 1 395.852 36.075 Q 402.933 43.662 403.192 56.608 A 49.538 49.538 0 0 1 403.202 57.6 Z M 396.452 78.45 L 396.452 57.45 A 37.753 37.753 0 0 0 395.943 51.032 Q 395.34 47.545 394.024 44.799 A 16.823 16.823 0 0 0 390.677 40.05 Q 384.902 34.35 375.452 34.35 A 27.378 27.378 0 0 0 368.688 35.141 A 19.405 19.405 0 0 0 359.852 39.975 A 17.284 17.284 0 0 0 355.581 46.817 Q 354.002 51.294 354.002 57.45 L 354.002 78.45 A 26.856 26.856 0 0 0 354.985 85.885 A 20.976 20.976 0 0 0 359.627 94.275 A 18.353 18.353 0 0 0 369.73 99.937 A 27.552 27.552 0 0 0 375.452 100.5 A 27.102 27.102 0 0 0 381.629 99.838 Q 386.518 98.694 389.865 95.573 A 17.067 17.067 0 0 0 391.052 94.35 Q 396.452 88.2 396.452 78.45 Z" id="5" vector-effect="non-scaling-stroke" />
                        <path d="M 471.752 60.3 L 471.752 105 Q 455.552 106.65 448.352 106.65 A 68.951 68.951 0 0 1 438.498 105.99 Q 429.478 104.685 423.302 100.8 Q 415.145 95.669 414.143 83.269 A 44.927 44.927 0 0 1 414.002 79.65 L 414.002 67.2 A 32.499 32.499 0 0 1 414.743 59.999 Q 415.791 55.392 418.322 52.161 A 17.328 17.328 0 0 1 424.502 47.25 A 22.247 22.247 0 0 1 429.678 45.463 Q 433.136 44.7 437.402 44.7 Q 444.752 44.7 452.252 46.95 Q 459.752 49.2 465.002 53.1 A 22.661 22.661 0 0 0 464.152 46.742 A 17.515 17.515 0 0 0 459.752 39.225 A 13.76 13.76 0 0 0 455.219 36.276 Q 449.688 33.95 440.102 34.05 L 440.552 28.65 A 72.176 72.176 0 0 1 448.053 29.012 Q 455.644 29.808 460.336 32.356 A 18.087 18.087 0 0 1 461.777 33.225 A 25.076 25.076 0 0 1 465.966 36.696 Q 468.563 39.412 469.72 42.602 A 15.202 15.202 0 0 1 470.177 44.1 Q 471.248 48.382 471.59 54.327 A 103.993 103.993 0 0 1 471.752 60.3 Z M 465.002 99.3 L 465.002 58.65 A 61.938 61.938 0 0 0 458.229 55.451 A 82.122 82.122 0 0 0 451.802 53.175 A 54.364 54.364 0 0 0 444.307 51.395 A 41.781 41.781 0 0 0 437.702 50.85 A 24.439 24.439 0 0 0 432.376 51.398 Q 428.6 52.241 425.795 54.378 A 15.384 15.384 0 0 0 425.327 54.75 A 11.786 11.786 0 0 0 421.802 59.875 Q 420.602 63.115 420.602 67.65 L 420.602 80.7 A 25.012 25.012 0 0 0 421.242 86.559 A 14.858 14.858 0 0 0 427.877 96.075 A 26.072 26.072 0 0 0 434.591 98.994 Q 437.831 99.926 441.733 100.333 A 62.397 62.397 0 0 0 448.202 100.65 A 75.2 75.2 0 0 0 452.304 100.525 Q 455.871 100.328 460.535 99.823 A 273.478 273.478 0 0 0 465.002 99.3 Z" id="6" vector-effect="non-scaling-stroke" />
                        <path d="M 493.052 29.85 L 492.752 35.85 Q 500.252 28.5 512.552 28.5 A 35.398 35.398 0 0 1 515.455 28.632 Q 518.463 28.881 522.466 29.602 A 122.569 122.569 0 0 1 523.802 29.85 L 522.002 36.15 Q 517.052 34.65 512.102 34.65 A 34.036 34.036 0 0 0 505.693 35.224 A 24.688 24.688 0 0 0 498.677 37.65 Q 493.052 40.65 493.052 45.9 L 493.052 105 L 486.302 105 L 486.302 29.85 L 493.052 29.85 Z" id="7" vector-effect="non-scaling-stroke" />
                        <path d="M 586.502 0 L 586.502 105 L 578.252 105.75 Q 568.502 106.8 562.952 106.8 A 52.086 52.086 0 0 1 555.719 106.315 A 44.489 44.489 0 0 1 552.527 105.75 A 40.228 40.228 0 0 1 544.091 102.896 A 45.539 45.539 0 0 1 542.852 102.3 Q 537.452 99.6 534.302 94.35 A 21.317 21.317 0 0 1 531.755 87.684 Q 531.152 84.797 531.152 81.45 L 531.152 53.1 A 29.922 29.922 0 0 1 532.261 44.671 A 20.288 20.288 0 0 1 543.902 31.5 A 28.924 28.924 0 0 1 550.493 29.408 Q 554.339 28.65 558.902 28.65 Q 564.752 28.65 570.227 30 Q 575.702 31.35 579.752 33.75 L 579.752 0 L 586.502 0 Z M 537.752 53.55 L 537.752 81.6 A 22.212 22.212 0 0 0 538.414 87.202 A 14.287 14.287 0 0 0 544.877 96.075 Q 552.002 100.5 563.852 100.5 Q 571.052 100.5 579.752 99 L 579.752 39.75 A 33.357 33.357 0 0 0 575.441 37.764 Q 573.254 36.929 570.73 36.262 A 56.197 56.197 0 0 0 570.002 36.075 A 47.16 47.16 0 0 0 561.621 34.739 A 41.863 41.863 0 0 0 558.902 34.65 A 30.634 30.634 0 0 0 552.111 35.364 A 21.784 21.784 0 0 0 543.752 39.15 Q 538.183 43.327 537.783 52.157 A 30.812 30.812 0 0 0 537.752 53.55 Z" id="8" vector-effect="non-scaling-stroke" />
                    </g>
                </svg>
            </div>

            <div class="col main-container">
                <div class="d-flex align-items-end text-center justify-contents-center mb-5">
                    <img src="~\Images\transparentlogo.png" runat="server" style="height: 60px" />
                    <h1 class="logoheader">Your Company Name</h1>
                </div>

                <form class="login-form" runat="server">
                    <div class="form-input">
                        <div class="label-container">
                            <asp:Label ID="lblUsername" runat="server">Username</asp:Label>
                        </div>
                        <div>
                            <asp:TextBox ID="txtUsername" CssClass="input-container" runat="server" required="" placeholder="Enter username" AutoPostBack="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-input">
                        <div class="label-container-password d-flex justify-content-between">
                            <asp:Label ID="lblPassword" runat="server">Password</asp:Label>
                            <asp:Label ID="lblPasswordLastChange" runat="server" Font-Size="12px"></asp:Label>
                        </div>

                        <asp:Label ID="lblNumberOfDays" runat="server" Visible="false"></asp:Label>
                        <asp:Label ID="lblDateDif" runat="server" Text="" Visible="false"></asp:Label>
                        <asp:Label ID="lblDatePassword" runat="server" Text="" Visible="false"></asp:Label>
                        <div>
                            <asp:TextBox ID="txtPassword" CssClass="input-container" runat="server" required="" placeholder="Enter password" type="password" value="" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-input">
                        <div class="label-container">
                            <asp:Label ID="lblLoginType" runat="server">Login Type</asp:Label>
                        </div>
                        <div>
                            <asp:DropDownList ID="ddlType" CssClass="input-container ps-3" runat="server" aria-label="Login Type">
                                <asp:ListItem Value="0">Select A Type</asp:ListItem>
                                <asp:ListItem Value="1">User</asp:ListItem>
                                <asp:ListItem Value="2">Manager</asp:ListItem>
                                  <asp:ListItem Value="3">Test</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div id="containererror" class="container-error" runat="server" visible="false">
                        <asp:Label ID="lblMessage" runat="server" Font-Bold="true"></asp:Label>
                    </div>

                    <div class="text-center">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-dark form-submit" Text="Sign In" OnClick="btnSubmit_Click"></asp:Button>
                    </div>
                    <div class="forgot-password">
                        <h2>
                            <a href="ForgetPassword.aspx">Forgot Password?</a>
                        </h2>
                    </div>
                </form>
               
                <div class="hwrap">
                    <div class="hmove">
                        <div class="hitem">
                            <i class="fa-solid fa-utensils"></i>
                            <asp:Label ID="lblDate" runat="server"></asp:Label>
                        </div>
                        <div class="hitem">(<asp:Label ID="lblLunch" runat="server"></asp:Label>)</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function setTextAnimation(delay, duration, strokeWidth, timingFunction, strokeColor, repeat) {
            let paths = document.querySelectorAll("path");
            let mode = repeat ? 'infinite' : 'forwards'
            for (let i = 0; i < paths.length; i++) {
                const path = paths[i];
                const length = path.getTotalLength();
                path.style["stroke-dashoffset"] = `${length}px`;
                path.style["stroke-dasharray"] = `${length}px`;
                path.style["stroke-width"] = `${strokeWidth}px`;
                path.style["stroke"] = `${strokeColor}`;
                path.style["animation"] = `${duration}s svg-text-anim ${mode} ${timingFunction}`;
                path.style["animation-delay"] = `${i * delay}s`;

                //activate for specific number of iterations and put repeat false
                //path.style["animationIterationCount"] = `10`;

            }
        }
        //setTextAnimation(0.1, 6, 0.5, 'linear', '#10375c', true);
        setTextAnimation(0.1, 6, 0.5, 'linear', '#10375c', true);
    </script>

    <script>
        /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */

        var dropdown = document.getElementsByClassName("dropdown-btn");

        var i;
        for (i = 0; i < dropdown.length; i++) {

            dropdown[i].addEventListener("click", function () {
                this.classList.toggle("active");

                var dropdownContent = this.nextElementSibling;
                if (dropdownContent.style.display === "block") {
                    dropdownContent.style.display = "none";
                } else {
                    dropdownContent.style.display = "block";
                }
            });
        }
    </script>
</body>
</html>
