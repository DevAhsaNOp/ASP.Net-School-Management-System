<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>ST MARY'S LMS DASHBOARD</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- favicon
        ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
    <!-- Google Fonts
        ============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet" />
    <!-- Bootstrap CSS
        ============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Bootstrap CSS
        ============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <!-- owl.carousel CSS
        ============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css" />
    <link rel="stylesheet" href="css/owl.theme.css" />
    <link rel="stylesheet" href="css/owl.transitions.css" />
    <!-- animate CSS
        ============================================ -->
    <link rel="stylesheet" href="css/animate.css" />
    <!-- normalize CSS
        ============================================ -->
    <link rel="stylesheet" href="css/normalize.css" />
    <!-- meanmenu icon CSS
        ============================================ -->
    <link rel="stylesheet" href="css/meanmenu.min.css" />
    <!-- main CSS
        ============================================ -->
    <link rel="stylesheet" href="css/dmain.css" />
    <!-- educate icon CSS
        ============================================ -->
    <link rel="stylesheet" href="css/educate-custon-icon.css" />
    <!-- morrisjs CSS
        ============================================ -->
    <link rel="stylesheet" href="css/morrisjs/morris.css" />
    <!-- mCustomScrollbar CSS
        ============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css" />
    <!-- metisMenu CSS
        ============================================ -->
    <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css" />
    <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css" />
    <!-- calendar CSS
        ============================================ -->
    <link rel="stylesheet" href="css/calendar/fullcalendar.min.css" />
    <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css" />
    <!-- style CSS
        ============================================ -->
    <link rel="stylesheet" href="style.css" />
    <!-- responsive CSS
        ============================================ -->
    <link rel="stylesheet" href="css/responsive.css" />
    <!-- modernizr JS
        ============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <link rel="stylesheet" href="navstyle.css" />

</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
    <nav class="Lnavbar">
        <ul class="Lnavbar-nav">
            <li class="Llogo">
                <a href="#" class="Lnav-link ">
                    <span class="Llink-text Llogo-text">St Mary’s LMS</span>
                    <svg aria-hidden="true" focusable="false" data-prefix="fad" data-icon="angle-double-right"
                        role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
                        class="svg-inline--fa fa-angle-double-right fa-w-14 fa-5x">
                        <g class="fa-group">
                            <path fill="currentColor"
                                d="M224 273L88.37 409a23.78 23.78 0 0 1-33.8 0L32 386.36a23.94 23.94 0 0 1 0-33.89l96.13-96.37L32 159.73a23.94 23.94 0 0 1 0-33.89l22.44-22.79a23.78 23.78 0 0 1 33.8 0L223.88 239a23.94 23.94 0 0 1 .1 34z"
                                class="fa-secondary">
                            </path>
                            <path fill="currentColor"
                                d="M415.89 273L280.34 409a23.77 23.77 0 0 1-33.79 0L224 386.26a23.94 23.94 0 0 1 0-33.89L320.11 256l-96-96.47a23.94 23.94 0 0 1 0-33.89l22.52-22.59a23.77 23.77 0 0 1 33.79 0L416 239a24 24 0 0 1-.11 34z"
                                class="fa-primary">
                            </path>
                        </g>
                    </svg>
                </a>
            </li>

            <li class="Lnav-item">
                <a href="Dashboard.aspx" class="Lnav-link Lnav-link-current">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="home"
                        class="svg-inline--fa fa-home fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 576 512">
                        <path fill="currentColor"
                            d="M280.37 148.26L96 300.11V464a16 16 0 0 0 16 16l112.06-.29a16 16 0 0 0 15.92-16V368a16 16 0 0 1 16-16h64a16 16 0 0 1 16 16v95.64a16 16 0 0 0 16 16.05L464 480a16 16 0 0 0 16-16V300L295.67 148.26a12.19 12.19 0 0 0-15.3 0zM571.6 251.47L488 182.56V44.05a12 12 0 0 0-12-12h-56a12 12 0 0 0-12 12v72.61L318.47 43a48 48 0 0 0-61 0L4.34 251.47a12 12 0 0 0-1.6 16.9l25.5 31A12 12 0 0 0 45.15 301l235.22-193.74a12.19 12.19 0 0 1 15.3 0L530.9 301a12 12 0 0 0 16.9-1.6l25.5-31a12 12 0 0 0-1.7-16.93z">
                        </path>
                    </svg>
                    <span class="Llink-text">Home</span>
                </a>
            </li>

            <li class="Lnav-item">
                <a href="Class.aspx" class="Lnav-link ">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chalkboard-teacher"
                        class="svg-inline--fa fa-chalkboard-teacher fa-w-20" role="img"
                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512">
                        <path fill="currentColor"
                            d="M208 352c-2.39 0-4.78.35-7.06 1.09C187.98 357.3 174.35 360 160 360c-14.35 0-27.98-2.7-40.95-6.91-2.28-.74-4.66-1.09-7.05-1.09C49.94 352-.33 402.48 0 464.62.14 490.88 21.73 512 48 512h224c26.27 0 47.86-21.12 48-47.38.33-62.14-49.94-112.62-112-112.62zm-48-32c53.02 0 96-42.98 96-96s-42.98-96-96-96-96 42.98-96 96 42.98 96 96 96zM592 0H208c-26.47 0-48 22.25-48 49.59V96c23.42 0 45.1 6.78 64 17.8V64h352v288h-64v-64H384v64h-76.24c19.1 16.69 33.12 38.73 39.69 64H592c26.47 0 48-22.25 48-49.59V49.59C640 22.25 618.47 0 592 0z">
                        </path>
                    </svg>
                    <span class="Llink-text ">Classes</span>
                </a>
            </li>

            <li class="Lnav-item">
                <a href="Subjects.aspx" class="Lnav-link ">
                    <svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="address-book"
                        class="svg-inline--fa fa-address-book fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 448 512">
                        <path fill="currentColor"
                            d="M436 160c6.6 0 12-5.4 12-12v-40c0-6.6-5.4-12-12-12h-20V48c0-26.5-21.5-48-48-48H48C21.5 0 0 21.5 0 48v416c0 26.5 21.5 48 48 48h320c26.5 0 48-21.5 48-48v-48h20c6.6 0 12-5.4 12-12v-40c0-6.6-5.4-12-12-12h-20v-64h20c6.6 0 12-5.4 12-12v-40c0-6.6-5.4-12-12-12h-20v-64h20zm-68 304H48V48h320v416zM208 256c35.3 0 64-28.7 64-64s-28.7-64-64-64-64 28.7-64 64 28.7 64 64 64zm-89.6 128h179.2c12.4 0 22.4-8.6 22.4-19.2v-19.2c0-31.8-30.1-57.6-67.2-57.6-10.8 0-18.7 8-44.8 8-26.9 0-33.4-8-44.8-8-37.1 0-67.2 25.8-67.2 57.6v19.2c0 10.6 10 19.2 22.4 19.2z">
                        </path>
                    </svg>
                    <span class="Llink-text ">Subject</span>
                </a>
            </li>

            <li class="Lnav-item">
                <a href="Employee.aspx" class="Lnav-link ">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="users"
                        class="svg-inline--fa fa-users fa-w-20" role="img" xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 640 512">
                        <path fill="currentColor"
                            d="M96 224c35.3 0 64-28.7 64-64s-28.7-64-64-64-64 28.7-64 64 28.7 64 64 64zm448 0c35.3 0 64-28.7 64-64s-28.7-64-64-64-64 28.7-64 64 28.7 64 64 64zm32 32h-64c-17.6 0-33.5 7.1-45.1 18.6 40.3 22.1 68.9 62 75.1 109.4h66c17.7 0 32-14.3 32-32v-32c0-35.3-28.7-64-64-64zm-256 0c61.9 0 112-50.1 112-112S381.9 32 320 32 208 82.1 208 144s50.1 112 112 112zm76.8 32h-8.3c-20.8 10-43.9 16-68.5 16s-47.6-6-68.5-16h-8.3C179.6 288 128 339.6 128 403.2V432c0 26.5 21.5 48 48 48h288c26.5 0 48-21.5 48-48v-28.8c0-63.6-51.6-115.2-115.2-115.2zm-223.7-13.4C161.5 263.1 145.6 256 128 256H64c-35.3 0-64 28.7-64 64v32c0 17.7 14.3 32 32 32h65.9c6.3-47.4 34.9-87.3 75.2-109.4z">
                        </path>
                    </svg>
                    <span class="Llink-text ">Employee</span>
                </a>
            </li>
            <li class="Lnav-item">
                <a href="Students.aspx" class="Lnav-link ">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user-graduate"
                        class="svg-inline--fa fa-user-graduate fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 448 512">
                        <path fill="currentColor"
                            d="M319.4 320.6L224 416l-95.4-95.4C57.1 323.7 0 382.2 0 454.4v9.6c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-9.6c0-72.2-57.1-130.7-128.6-133.8zM13.6 79.8l6.4 1.5v58.4c-7 4.2-12 11.5-12 20.3 0 8.4 4.6 15.4 11.1 19.7L3.5 242c-1.7 6.9 2.1 14 7.6 14h41.8c5.5 0 9.3-7.1 7.6-14l-15.6-62.3C51.4 175.4 56 168.4 56 160c0-8.8-5-16.1-12-20.3V87.1l66 15.9c-8.6 17.2-14 36.4-14 57 0 70.7 57.3 128 128 128s128-57.3 128-128c0-20.6-5.3-39.8-14-57l96.3-23.2c18.2-4.4 18.2-27.1 0-31.5l-190.4-46c-13-3.1-26.7-3.1-39.7 0L13.6 48.2c-18.1 4.4-18.1 27.2 0 31.6z">
                        </path>
                    </svg>
                    <span class="Llink-text ">Student</span>
                </a>
            </li>
            <li class="Lnav-item">
                <a href="#" class="Lnav-link ">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user-tie" class="svg-inline--fa fa-user-tie fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                        <path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm95.8 32.6L272 480l-32-136 32-56h-96l32 56-32 136-47.8-191.4C56.9 292 0 350.3 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-72.1-56.9-130.4-128.2-133.8z"></path></svg>
                    <span class="Llink-text ">Parents</span>
                </a>
            </li>
            <li class="Lnav-item">
                <a href="Results.aspx" class="Lnav-link ">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chalkboard" class="svg-inline--fa fa-chalkboard fa-w-20" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512">
                        <path fill="currentColor" d="M96 64h448v352h64V40c0-22.06-17.94-40-40-40H72C49.94 0 32 17.94 32 40v376h64V64zm528 384H480v-64H288v64H16c-8.84 0-16 7.16-16 16v32c0 8.84 7.16 16 16 16h608c8.84 0 16-7.16 16-16v-32c0-8.84-7.16-16-16-16z"></path></svg>
                    <span class="Llink-text ">Results</span>
                </a>
            </li>
            <li class="Lnav-item">
                <a href="Timetable.aspx" class="Lnav-link ">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="calendar-alt"
                        class="svg-inline--fa fa-calendar-alt fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 448 512">
                        <path fill="currentColor"
                            d="M0 464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V192H0v272zm320-196c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12h-40c-6.6 0-12-5.4-12-12v-40zm0 128c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12h-40c-6.6 0-12-5.4-12-12v-40zM192 268c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12h-40c-6.6 0-12-5.4-12-12v-40zm0 128c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12h-40c-6.6 0-12-5.4-12-12v-40zM64 268c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12H76c-6.6 0-12-5.4-12-12v-40zm0 128c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12H76c-6.6 0-12-5.4-12-12v-40zM400 64h-48V16c0-8.8-7.2-16-16-16h-32c-8.8 0-16 7.2-16 16v48H160V16c0-8.8-7.2-16-16-16h-32c-8.8 0-16 7.2-16 16v48H48C21.5 64 0 85.5 0 112v48h448v-48c0-26.5-21.5-48-48-48z">
                        </path>
                    </svg>
                    <span class="Llink-text ">Time Table</span>
                </a>
            </li>
            <li class="Lnav-item">
                <a href="Payment.aspx" class="Lnav-link ">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="file-invoice-dollar" class="svg-inline--fa fa-file-invoice-dollar fa-w-12" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512">
                        <path fill="currentColor" d="M377 105L279.1 7c-4.5-4.5-10.6-7-17-7H256v128h128v-6.1c0-6.3-2.5-12.4-7-16.9zm-153 31V0H24C10.7 0 0 10.7 0 24v464c0 13.3 10.7 24 24 24h336c13.3 0 24-10.7 24-24V160H248c-13.2 0-24-10.8-24-24zM64 72c0-4.42 3.58-8 8-8h80c4.42 0 8 3.58 8 8v16c0 4.42-3.58 8-8 8H72c-4.42 0-8-3.58-8-8V72zm0 80v-16c0-4.42 3.58-8 8-8h80c4.42 0 8 3.58 8 8v16c0 4.42-3.58 8-8 8H72c-4.42 0-8-3.58-8-8zm144 263.88V440c0 4.42-3.58 8-8 8h-16c-4.42 0-8-3.58-8-8v-24.29c-11.29-.58-22.27-4.52-31.37-11.35-3.9-2.93-4.1-8.77-.57-12.14l11.75-11.21c2.77-2.64 6.89-2.76 10.13-.73 3.87 2.42 8.26 3.72 12.82 3.72h28.11c6.5 0 11.8-5.92 11.8-13.19 0-5.95-3.61-11.19-8.77-12.73l-45-13.5c-18.59-5.58-31.58-23.42-31.58-43.39 0-24.52 19.05-44.44 42.67-45.07V232c0-4.42 3.58-8 8-8h16c4.42 0 8 3.58 8 8v24.29c11.29.58 22.27 4.51 31.37 11.35 3.9 2.93 4.1 8.77.57 12.14l-11.75 11.21c-2.77 2.64-6.89 2.76-10.13.73-3.87-2.43-8.26-3.72-12.82-3.72h-28.11c-6.5 0-11.8 5.92-11.8 13.19 0 5.95 3.61 11.19 8.77 12.73l45 13.5c18.59 5.58 31.58 23.42 31.58 43.39 0 24.53-19.05 44.44-42.67 45.07z"></path></svg>
                    <span class="Llink-text ">Payment</span>
                </a>
            </li>
            <li class="Lnav-item">
                <a href="Attendance.aspx" class="Lnav-link ">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user-check" class="svg-inline--fa fa-user-check fa-w-20" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512">
                        <path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4zm323-128.4l-27.8-28.1c-4.6-4.7-12.1-4.7-16.8-.1l-104.8 104-45.5-45.8c-4.6-4.7-12.1-4.7-16.8-.1l-28.1 27.9c-4.7 4.6-4.7 12.1-.1 16.8l81.7 82.3c4.6 4.7 12.1 4.7 16.8.1l141.3-140.2c4.6-4.7 4.7-12.2.1-16.8z"></path></svg>
                    <span class="Llink-text ">Attendance</span>
                </a>
            </li>
            <li class="Lnav-item">
                <a href="Exam.aspx" class="Lnav-link ">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="book-open" class="svg-inline--fa fa-book-open fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                        <path fill="currentColor" d="M542.22 32.05c-54.8 3.11-163.72 14.43-230.96 55.59-4.64 2.84-7.27 7.89-7.27 13.17v363.87c0 11.55 12.63 18.85 23.28 13.49 69.18-34.82 169.23-44.32 218.7-46.92 16.89-.89 30.02-14.43 30.02-30.66V62.75c.01-17.71-15.35-31.74-33.77-30.7zM264.73 87.64C197.5 46.48 88.58 35.17 33.78 32.05 15.36 31.01 0 45.04 0 62.75V400.6c0 16.24 13.13 29.78 30.02 30.66 49.49 2.6 149.59 12.11 218.77 46.95 10.62 5.35 23.21-1.94 23.21-13.46V100.63c0-5.29-2.62-10.14-7.27-12.99z"></path></svg>
                    <span class="Llink-text ">Exam</span>
                </a>
            </li>
            <li class="Lnav-item">
                <a href="#" class="Lnav-link ">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="calendar-alt"
                        class="svg-inline--fa fa-calendar-alt fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 448 512">
                        <path fill="currentColor"
                            d="M0 464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V192H0v272zm320-196c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12h-40c-6.6 0-12-5.4-12-12v-40zm0 128c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12h-40c-6.6 0-12-5.4-12-12v-40zM192 268c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12h-40c-6.6 0-12-5.4-12-12v-40zm0 128c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12h-40c-6.6 0-12-5.4-12-12v-40zM64 268c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12H76c-6.6 0-12-5.4-12-12v-40zm0 128c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12H76c-6.6 0-12-5.4-12-12v-40zM400 64h-48V16c0-8.8-7.2-16-16-16h-32c-8.8 0-16 7.2-16 16v48H160V16c0-8.8-7.2-16-16-16h-32c-8.8 0-16 7.2-16 16v48H48C21.5 64 0 85.5 0 112v48h448v-48c0-26.5-21.5-48-48-48z">
                        </path>
                    </svg>
                    <span class="Llink-text ">Time Table</span>
                </a>
            </li>
        </ul>
    </nav>
    <!-- Start Welcome area -->
    <main>
        <div>
            <div class="header-advance-area mg-b-30">
                <div class="header-top-area" style="background-color: #5773FF;">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="header-top-wraper">
                                    <div class="row">
                                        <div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">
                                            <div class="breadcome-heading" style="padding-top: 10px;">
                                                <form id="form1" runat="server" role="search" class="sr-input-func">
                                                    <asp:TextBox runat="server" type="text" placeholder="Search..."
                                                        class="search-int form-control" Style="color: white;" />
                                                    <a href="#"><i class="fa fa-search"></i></a>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                            <div class="header-right-info">
                                                <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                                    <li class="nav-item dropdown">
                                                        <a href="#" data-toggle="dropdown" role="button"
                                                            aria-expanded="false" class="nav-link dropdown-toggle">
                                                            <i class="educate-icon educate-message edu-chat-pro"
                                                                aria-hidden="true"></i><span class="indicator-ms"></span>
                                                        </a>
                                                        <div role="menu"
                                                            class="author-message-top dropdown-menu animated zoomIn">
                                                            <div class="message-single-top">
                                                                <h1>Message</h1>
                                                            </div>
                                                            <ul class="message-menu">
                                                                <li>
                                                                    <a href="#">
                                                                        <div class="message-img">
                                                                            <img src="img/contact/1.jpg" alt="" />
                                                                        </div>
                                                                        <div class="message-content">
                                                                            <span class="message-date">16 Sept</span>
                                                                            <h2>Advanda Cro</h2>
                                                                            <p>
                                                                                Please done this project as soon
                                                                                possible.
                                                                            </p>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <div class="message-img">
                                                                            <img src="img/contact/4.jpg" alt="" />
                                                                        </div>
                                                                        <div class="message-content">
                                                                            <span class="message-date">16 Sept</span>
                                                                            <h2>Sulaiman din</h2>
                                                                            <p>
                                                                                Please done this project as soon
                                                                                possible.
                                                                            </p>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <div class="message-img">
                                                                            <img src="img/contact/3.jpg" alt="" />
                                                                        </div>
                                                                        <div class="message-content">
                                                                            <span class="message-date">16 Sept</span>
                                                                            <h2>Victor Jara</h2>
                                                                            <p>
                                                                                Please done this project as soon
                                                                                possible.
                                                                            </p>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <div class="message-img">
                                                                            <img src="img/contact/2.jpg" alt="" />
                                                                        </div>
                                                                        <div class="message-content">
                                                                            <span class="message-date">16 Sept</span>
                                                                            <h2>Victor Jara</h2>
                                                                            <p>
                                                                                Please done this project as soon
                                                                                possible.
                                                                            </p>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                            <div class="message-view">
                                                                <a href="#">View All Messages</a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="#" data-toggle="dropdown"
                                                            role="button" aria-expanded="false"
                                                            class="nav-link dropdown-toggle">
                                                            <i class="educate-icon educate-bell"
                                                                aria-hidden="true"></i><span class="indicator-nt"></span>
                                                        </a>
                                                        <div role="menu"
                                                            class="notification-author dropdown-menu animated zoomIn">
                                                            <div class="notification-single-top">
                                                                <h1>Notifications</h1>
                                                            </div>
                                                            <ul class="notification-menu">
                                                                <li>
                                                                    <a href="#">
                                                                        <div class="notification-icon">
                                                                            <i class="educate-icon educate-checked edu-checked-pro admin-check-pro"
                                                                                aria-hidden="true"></i>
                                                                        </div>
                                                                        <div class="notification-content">
                                                                            <span class="notification-date">16
                                                                                Sept
                                                                            </span>
                                                                            <h2>Advanda Cro</h2>
                                                                            <p>
                                                                                Please done this project as soon
                                                                                possible.
                                                                            </p>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <div class="notification-icon">
                                                                            <i class="fa fa-cloud edu-cloud-computing-down"
                                                                                aria-hidden="true"></i>
                                                                        </div>
                                                                        <div class="notification-content">
                                                                            <span class="notification-date">16
                                                                                Sept
                                                                            </span>
                                                                            <h2>Sulaiman din</h2>
                                                                            <p>
                                                                                Please done this project as soon
                                                                                possible.
                                                                            </p>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <div class="notification-icon">
                                                                            <i class="fa fa-eraser edu-shield"
                                                                                aria-hidden="true"></i>
                                                                        </div>
                                                                        <div class="notification-content">
                                                                            <span class="notification-date">16
                                                                                Sept
                                                                            </span>
                                                                            <h2>Victor Jara</h2>
                                                                            <p>
                                                                                Please done this project as soon
                                                                                possible.
                                                                            </p>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <div class="notification-icon">
                                                                            <i class="fa fa-line-chart edu-analytics-arrow"
                                                                                aria-hidden="true"></i>
                                                                        </div>
                                                                        <div class="notification-content">
                                                                            <span class="notification-date">16
                                                                                Sept
                                                                            </span>
                                                                            <h2>Victor Jara</h2>
                                                                            <p>
                                                                                Please done this project as soon
                                                                                possible.
                                                                            </p>
                                                                        </div>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                            <div class="notification-view">
                                                                <a href="#">View All Notification</a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="#" data-toggle="dropdown" role="button"
                                                            aria-expanded="false" class="nav-link dropdown-toggle">
                                                            <img src="./img/product/pro4.jpg" alt="" />
                                                            <span class="admin-name">Admin</span>
                                                            <i class="fa fa-angle-down edu-icon edu-down-arrow"></i>
                                                        </a>
                                                        <ul role="menu"
                                                            class="dropdown-header-top author-log dropdown-menu animated zoomIn" style="width: 10px;">
                                                            <li>
                                                                <a href="#">
                                                                    <span class="edu-icon edu-home-admin author-log-ic"></span>My
                                                                    Account
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <span class="edu-icon edu-user-rounded author-log-ic"></span>My
                                                                    Profile
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <span class="edu-icon edu-money author-log-ic"></span>User
                                                                    Billing
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <span class="edu-icon edu-settings author-log-ic"></span>Settings
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <span class="edu-icon edu-locked author-log-ic"></span>Log
                                                                    Out
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li class="nav-item nav-setting-open">
                                                        <a href="#"
                                                            data-toggle="dropdown" role="button" aria-expanded="false"
                                                            class="nav-link dropdown-toggle">
                                                            <i class="educate-icon educate-menu"></i>
                                                        </a>

                                                        <div role="menu"
                                                            class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn">
                                                            <ul class="nav nav-tabs custon-set-tab">
                                                                <li class="active">
                                                                    <a data-toggle="tab"
                                                                        href="#Notes">Notes</a>
                                                                </li>
                                                                <li>
                                                                    <a data-toggle="tab" href="#Projects">Projects</a>
                                                                </li>
                                                                <li>
                                                                    <a data-toggle="tab" href="#Settings">Settings</a>
                                                                </li>
                                                            </ul>

                                                            <div class="tab-content custom-bdr-nt">
                                                                <div id="Notes" class="tab-pane fade in active">
                                                                    <div class="notes-area-wrap">
                                                                        <div class="note-heading-indicate">
                                                                            <h2>
                                                                                <i class="fa fa-comments-o"></i>Latest
                                                                                Notes
                                                                            </h2>
                                                                            <p>You have 10 new message.</p>
                                                                        </div>
                                                                        <div class="notes-list-area notes-menu-scrollbar">
                                                                            <ul class="notes-menu-list">
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="img/contact/4.jpg"
                                                                                                    alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more-or-less normal.
                                                                                                </p>
                                                                                                <span>Yesterday 2:45
                                                                                                    pm
                                                                                                </span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="img/contact/1.jpg"
                                                                                                    alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more-or-less normal.
                                                                                                </p>
                                                                                                <span>Yesterday 2:45
                                                                                                    pm
                                                                                                </span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="img/contact/2.jpg"
                                                                                                    alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more-or-less normal.
                                                                                                </p>
                                                                                                <span>Yesterday 2:45
                                                                                                    pm
                                                                                                </span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="img/contact/3.jpg"
                                                                                                    alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more-or-less normal.
                                                                                                </p>
                                                                                                <span>Yesterday 2:45
                                                                                                    pm
                                                                                                </span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="img/contact/4.jpg"
                                                                                                    alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more-or-less normal.
                                                                                                </p>
                                                                                                <span>Yesterday 2:45
                                                                                                    pm
                                                                                                </span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="img/contact/1.jpg"
                                                                                                    alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more-or-less normal.
                                                                                                </p>
                                                                                                <span>Yesterday 2:45
                                                                                                    pm
                                                                                                </span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="img/contact/2.jpg"
                                                                                                    alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more-or-less normal.
                                                                                                </p>
                                                                                                <span>Yesterday 2:45
                                                                                                    pm
                                                                                                </span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="img/contact/1.jpg"
                                                                                                    alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more-or-less normal.
                                                                                                </p>
                                                                                                <span>Yesterday 2:45
                                                                                                    pm
                                                                                                </span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="img/contact/2.jpg"
                                                                                                    alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more-or-less normal.
                                                                                                </p>
                                                                                                <span>Yesterday 2:45
                                                                                                    pm
                                                                                                </span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="notes-list-flow">
                                                                                            <div class="notes-img">
                                                                                                <img src="img/contact/3.jpg"
                                                                                                    alt="" />
                                                                                            </div>
                                                                                            <div class="notes-content">
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more-or-less normal.
                                                                                                </p>
                                                                                                <span>Yesterday 2:45
                                                                                                    pm
                                                                                                </span>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div id="Projects" class="tab-pane fade">
                                                                    <div class="projects-settings-wrap">
                                                                        <div class="note-heading-indicate">
                                                                            <h2>
                                                                                <i class="fa fa-cube"></i>Latest
                                                                                projects
                                                                            </h2>
                                                                            <p>
                                                                                You have 20 projects. 5 not completed.
                                                                            </p>
                                                                        </div>
                                                                        <div class="project-st-list-area project-st-menu-scrollbar">
                                                                            <ul class="projects-st-menu-list">
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>Web Development</h2>
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more or less normal.
                                                                                                </p>
                                                                                                <span class="project-st-time">1
                                                                                                    hours ago
                                                                                                </span>
                                                                                            </div>
                                                                                            <div class="projects-st-content">
                                                                                                <p>
                                                                                                    Completion with: 28%
                                                                                                </p>
                                                                                                <div class="progress progress-mini">
                                                                                                    <div style="width: 28%;"
                                                                                                        class="progress-bar progress-bar-danger hd-tp-1">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <p>
                                                                                                    Project end: 4:00 pm
                                                                                                    -
                                                                                                    12.06.2014
                                                                                                </p>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>Software Development
                                                                                                </h2>
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more or less normal.
                                                                                                </p>
                                                                                                <span class="project-st-time">2
                                                                                                    hours ago
                                                                                                </span>
                                                                                            </div>
                                                                                            <div class="projects-st-content project-rating-cl">
                                                                                                <p>
                                                                                                    Completion with: 68%
                                                                                                </p>
                                                                                                <div class="progress progress-mini">
                                                                                                    <div style="width: 68%;"
                                                                                                        class="progress-bar hd-tp-2">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <p>
                                                                                                    Project end: 4:00 pm
                                                                                                    -
                                                                                                    12.06.2014
                                                                                                </p>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>Graphic Design</h2>
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more or less normal.
                                                                                                </p>
                                                                                                <span class="project-st-time">3
                                                                                                    hours ago
                                                                                                </span>
                                                                                            </div>
                                                                                            <div class="projects-st-content">
                                                                                                <p>
                                                                                                    Completion with: 78%
                                                                                                </p>
                                                                                                <div class="progress progress-mini">
                                                                                                    <div style="width: 78%;"
                                                                                                        class="progress-bar hd-tp-3">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <p>
                                                                                                    Project end: 4:00 pm
                                                                                                    -
                                                                                                    12.06.2014
                                                                                                </p>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>Web Design</h2>
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more or less normal.
                                                                                                </p>
                                                                                                <span class="project-st-time">4
                                                                                                    hours ago
                                                                                                </span>
                                                                                            </div>
                                                                                            <div class="projects-st-content project-rating-cl2">
                                                                                                <p>
                                                                                                    Completion with: 38%
                                                                                                </p>
                                                                                                <div class="progress progress-mini">
                                                                                                    <div style="width: 38%;"
                                                                                                        class="progress-bar progress-bar-danger hd-tp-4">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <p>
                                                                                                    Project end: 4:00 pm
                                                                                                    -
                                                                                                    12.06.2014
                                                                                                </p>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>Business Card</h2>
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more or less normal.
                                                                                                </p>
                                                                                                <span class="project-st-time">5
                                                                                                    hours ago
                                                                                                </span>
                                                                                            </div>
                                                                                            <div class="projects-st-content">
                                                                                                <p>
                                                                                                    Completion with: 28%
                                                                                                </p>
                                                                                                <div class="progress progress-mini">
                                                                                                    <div style="width: 28%;"
                                                                                                        class="progress-bar progress-bar-danger hd-tp-5">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <p>
                                                                                                    Project end: 4:00 pm
                                                                                                    -
                                                                                                    12.06.2014
                                                                                                </p>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>Ecommerce Business
                                                                                                </h2>
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more or less normal.
                                                                                                </p>
                                                                                                <span class="project-st-time">6
                                                                                                    hours ago
                                                                                                </span>
                                                                                            </div>
                                                                                            <div class="projects-st-content project-rating-cl">
                                                                                                <p>
                                                                                                    Completion with: 68%
                                                                                                </p>
                                                                                                <div class="progress progress-mini">
                                                                                                    <div style="width: 68%;"
                                                                                                        class="progress-bar hd-tp-6">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <p>
                                                                                                    Project end: 4:00 pm
                                                                                                    -
                                                                                                    12.06.2014
                                                                                                </p>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>Woocommerce Plugin
                                                                                                </h2>
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more or less normal.
                                                                                                </p>
                                                                                                <span class="project-st-time">7
                                                                                                    hours ago
                                                                                                </span>
                                                                                            </div>
                                                                                            <div class="projects-st-content">
                                                                                                <p>
                                                                                                    Completion with: 78%
                                                                                                </p>
                                                                                                <div class="progress progress-mini">
                                                                                                    <div style="width: 78%;"
                                                                                                        class="progress-bar">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <p>
                                                                                                    Project end: 4:00 pm
                                                                                                    -
                                                                                                    12.06.2014
                                                                                                </p>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="#">
                                                                                        <div class="project-list-flow">
                                                                                            <div class="projects-st-heading">
                                                                                                <h2>Wordpress Theme</h2>
                                                                                                <p>
                                                                                                    The point of using
                                                                                                    Lorem
                                                                                                    Ipsum is that it has
                                                                                                    a
                                                                                                    more or less normal.
                                                                                                </p>
                                                                                                <span class="project-st-time">9
                                                                                                    hours ago
                                                                                                </span>
                                                                                            </div>
                                                                                            <div class="projects-st-content project-rating-cl2">
                                                                                                <p>
                                                                                                    Completion with: 38%
                                                                                                </p>
                                                                                                <div class="progress progress-mini">
                                                                                                    <div style="width: 38%;"
                                                                                                        class="progress-bar progress-bar-danger">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <p>
                                                                                                    Project end: 4:00 pm
                                                                                                    -
                                                                                                    12.06.2014
                                                                                                </p>
                                                                                            </div>
                                                                                        </div>
                                                                                    </a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div id="Settings" class="tab-pane fade">
                                                                    <div class="setting-panel-area">
                                                                        <div class="note-heading-indicate">
                                                                            <h2>
                                                                                <i class="fa fa-gears"></i>Settings
                                                                                Panel
                                                                            </h2>
                                                                            <p>
                                                                                You have 20 Settings. 5 not completed.
                                                                            </p>
                                                                        </div>
                                                                        <ul class="setting-panel-list">
                                                                            <li>
                                                                                <div class="checkbox-setting-pro">
                                                                                    <div class="checkbox-title-pro">
                                                                                        <h2>Show notifications</h2>
                                                                                        <div class="ts-custom-check">
                                                                                            <div class="onoffswitch">
                                                                                                <input type="checkbox"
                                                                                                    name="collapsemenu"
                                                                                                    class="onoffswitch-checkbox"
                                                                                                    id="example" />
                                                                                                <label class="onoffswitch-label"
                                                                                                    for="example">
                                                                                                    <span class="onoffswitch-inner"></span>
                                                                                                    <span class="onoffswitch-switch"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <div class="checkbox-setting-pro">
                                                                                    <div class="checkbox-title-pro">
                                                                                        <h2>Disable Chat</h2>
                                                                                        <div class="ts-custom-check">
                                                                                            <div class="onoffswitch">
                                                                                                <input type="checkbox"
                                                                                                    name="collapsemenu"
                                                                                                    class="onoffswitch-checkbox"
                                                                                                    id="example3" />
                                                                                                <label class="onoffswitch-label"
                                                                                                    for="example3">
                                                                                                    <span class="onoffswitch-inner"></span>
                                                                                                    <span class="onoffswitch-switch"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <div class="checkbox-setting-pro">
                                                                                    <div class="checkbox-title-pro">
                                                                                        <h2>Enable history</h2>
                                                                                        <div class="ts-custom-check">
                                                                                            <div class="onoffswitch">
                                                                                                <input type="checkbox"
                                                                                                    name="collapsemenu"
                                                                                                    class="onoffswitch-checkbox"
                                                                                                    id="example4" />
                                                                                                <label class="onoffswitch-label"
                                                                                                    for="example4">
                                                                                                    <span class="onoffswitch-inner"></span>
                                                                                                    <span class="onoffswitch-switch"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <div class="checkbox-setting-pro">
                                                                                    <div class="checkbox-title-pro">
                                                                                        <h2>Show charts</h2>
                                                                                        <div class="ts-custom-check">
                                                                                            <div class="onoffswitch">
                                                                                                <input type="checkbox"
                                                                                                    name="collapsemenu"
                                                                                                    class="onoffswitch-checkbox"
                                                                                                    id="example7" />
                                                                                                <label class="onoffswitch-label"
                                                                                                    for="example7">
                                                                                                    <span class="onoffswitch-inner"></span>
                                                                                                    <span class="onoffswitch-switch"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <div class="checkbox-setting-pro">
                                                                                    <div class="checkbox-title-pro">
                                                                                        <h2>Update everyday</h2>
                                                                                        <div class="ts-custom-check">
                                                                                            <div class="onoffswitch">
                                                                                                <input type="checkbox"
                                                                                                    name="collapsemenu"
                                                                                                    checked=""
                                                                                                    class="onoffswitch-checkbox"
                                                                                                    id="example2" />
                                                                                                <label class="onoffswitch-label"
                                                                                                    for="example2">
                                                                                                    <span class="onoffswitch-inner"></span>
                                                                                                    <span class="onoffswitch-switch"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <div class="checkbox-setting-pro">
                                                                                    <div class="checkbox-title-pro">
                                                                                        <h2>Global search</h2>
                                                                                        <div class="ts-custom-check">
                                                                                            <div class="onoffswitch">
                                                                                                <input type="checkbox"
                                                                                                    name="collapsemenu"
                                                                                                    checked=""
                                                                                                    class="onoffswitch-checkbox"
                                                                                                    id="example6" />
                                                                                                <label class="onoffswitch-label"
                                                                                                    for="example6">
                                                                                                    <span class="onoffswitch-inner"></span>
                                                                                                    <span class="onoffswitch-switch"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <div class="checkbox-setting-pro">
                                                                                    <div class="checkbox-title-pro">
                                                                                        <h2>Offline users</h2>
                                                                                        <div class="ts-custom-check">
                                                                                            <div class="onoffswitch">
                                                                                                <input type="checkbox"
                                                                                                    name="collapsemenu"
                                                                                                    checked=""
                                                                                                    class="onoffswitch-checkbox"
                                                                                                    id="example5" />
                                                                                                <label class="onoffswitch-label"
                                                                                                    for="example5">
                                                                                                    <span class="onoffswitch-inner"></span>
                                                                                                    <span class="onoffswitch-switch"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="analytics-sparkle-area mg-b-30">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 mg-b-30">
                            <div class="analytics-sparkle-line reso-mg-b-30" style="background-color: #fff; box-shadow: 5px 5px 18px #888888;">
                                <div class="analytics-content" style="display: flex; flex-direction: row; flex-wrap: wrap; justify-content: center; align-items: center;">
                                    <div style="padding-right: 2rem;">
                                        <h2>Total Students</h2>
                                        <h4>$<span class="counter">5000</span></h4>
                                    </div>
                                    <div>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="68.417" height="78.195" viewBox="0 0 68.417 78.195">
                                            <g id="Student" opacity="0.1">
                                                <path id="user-graduate-solid" d="M48.778,48.94,34.209,63.509,19.639,48.94A20.479,20.479,0,0,0,0,69.374V70.84a7.332,7.332,0,0,0,7.33,7.33H61.087a7.332,7.332,0,0,0,7.33-7.33V69.374A20.479,20.479,0,0,0,48.778,48.94ZM2.077,12.166l.977.229v8.919a3.528,3.528,0,0,0-.137,6.109L.535,36.936C.275,37.99.855,39.075,1.7,39.075H8.079c.84,0,1.42-1.084,1.161-2.138L6.857,27.422a3.528,3.528,0,0,0-.137-6.109V13.281L16.8,15.709a19.512,19.512,0,1,0,36.958,8.7,19.2,19.2,0,0,0-2.138-8.7l14.707-3.543a2.43,2.43,0,0,0,0-4.811L37.248.33a13.118,13.118,0,0,0-6.063,0L2.077,7.34A2.441,2.441,0,0,0,2.077,12.166Z" transform="translate(0 0.025)" />
                                            </g>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 mg-b-30">
                            <div class="analytics-sparkle-line reso-mg-b-30" style="background-color: #F2FCFF; box-shadow: 5px 5px 18px #888888;">
                                <div class="analytics-content" style="display: flex; flex-direction: row; flex-wrap: wrap; justify-content: center; align-items: center;">
                                    <div style="padding-right: 2rem;">
                                        <h2>Total Classes</h2>
                                        <h4>$<span class="counter">5000</span></h4>
                                    </div>
                                    <div>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="98.875" height="79.1" viewBox="0 0 98.875 79.1">
                                            <g id="Classes" opacity="0.1">
                                                <path id="chalkboard-teacher-solid" d="M32.133,54.381a3.535,3.535,0,0,0-1.091.168,20.38,20.38,0,0,1-6.325,1.068,20.4,20.4,0,0,1-6.326-1.068,3.525,3.525,0,0,0-1.089-.168A17.3,17.3,0,0,0,0,71.78,7.4,7.4,0,0,0,7.414,79.1H42.021a7.4,7.4,0,0,0,7.416-7.32A17.3,17.3,0,0,0,32.133,54.381Zm-7.416-4.944A14.831,14.831,0,1,0,9.886,34.606,14.831,14.831,0,0,0,24.717,49.438ZM91.458,0H32.133a7.55,7.55,0,0,0-7.416,7.661v7.17a19.551,19.551,0,0,1,9.888,2.75V9.888H88.986V54.381H79.1V44.494H59.324v9.888H47.545a19.69,19.69,0,0,1,6.132,9.888H91.458a7.55,7.55,0,0,0,7.416-7.661V7.661A7.55,7.55,0,0,0,91.458,0Z" transform="translate(0.002)" />
                                            </g>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 mg-b-30">
                            <div class="analytics-sparkle-line reso-mg-b-30" style="background-color: #FCFCFC; box-shadow: 5px 5px 18px #888888;">
                                <div class="analytics-content" style="display: flex; flex-direction: row; flex-wrap: wrap; justify-content: center; align-items: center;">
                                    <div style="padding-right: 2rem;">
                                        <h2>Total Employees</h2>
                                        <h4>$<span class="counter">5000</span></h4>
                                    </div>
                                    <div style="overflow: hidden;">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="111.707" height="78.195" viewBox="0 0 111.707 78.195">
                                            <g id="Employee" opacity="0.1">
                                                <path id="users-solid" d="M16.756,65.512A11.171,11.171,0,1,0,5.585,54.341,11.181,11.181,0,0,0,16.756,65.512Zm78.2,0A11.171,11.171,0,1,0,83.781,54.341,11.181,11.181,0,0,0,94.951,65.512Zm5.585,5.585H89.366a11.138,11.138,0,0,0-7.872,3.246A25.531,25.531,0,0,1,94.6,93.439h11.52a5.579,5.579,0,0,0,5.585-5.585V82.268A11.181,11.181,0,0,0,100.537,71.1Zm-44.683,0A19.549,19.549,0,1,0,36.3,51.549,19.539,19.539,0,0,0,55.854,71.1Zm13.4,5.585H67.81a26.99,26.99,0,0,1-23.912,0H42.449A20.113,20.113,0,0,0,22.341,96.79v5.027A8.38,8.38,0,0,0,30.72,110.2H80.988a8.38,8.38,0,0,0,8.378-8.378V96.79A20.113,20.113,0,0,0,69.259,76.683ZM30.213,74.344A11.138,11.138,0,0,0,22.341,71.1H11.171A11.181,11.181,0,0,0,0,82.268v5.585a5.579,5.579,0,0,0,5.585,5.585h11.5A25.6,25.6,0,0,1,30.213,74.344Z" transform="translate(0 -32)" />
                                            </g>
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 mg-b-30">
                            <div class="analytics-sparkle-line reso-mg-b-30" style="background-color: #EFF9FF; box-shadow: 5px 5px 18px #888888;">
                                <div class="analytics-content" style="display: flex; flex-direction: row; flex-wrap: wrap; justify-content: center; align-items: center;">
                                    <div style="padding-right: 2rem;">
                                        <h2>Total Parents</h2>
                                        <h4>$<span class="counter">5000</span></h4>
                                    </div>
                                    <div>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="88.475" height="78.703" viewBox="0 0 88.475 78.703">
                                            <path id="Path_67" data-name="Path 67" d="M86.68,94.8A1.292,1.292,0,0,0,87.973,93.5v-4.24a17.673,17.673,0,0,0-4.021-11.239,9.191,9.191,0,0,0,4.017-6.509,1.278,1.278,0,0,0-.857-1.308,3.87,3.87,0,0,1-1.365-.967,3.937,3.937,0,0,1-.818-3.475c1.584-9.2,2.051-21.845-4.723-29.885a19.04,19.04,0,0,0-14.873-6.655,19.66,19.66,0,0,0-11.255,3.357,1.292,1.292,0,1,0,1.469,2.126,17.091,17.091,0,0,1,9.785-2.9,16.387,16.387,0,0,1,12.9,5.736c4.855,5.763,6.291,15.369,4.152,27.781a6.35,6.35,0,0,0,2.844,6.822,6.773,6.773,0,0,1-3.09,3.966,17.71,17.71,0,0,0-8.9-4.348,14.651,14.651,0,0,0,6.746-12.328v-6.9a1.293,1.293,0,0,0-.772-1.183C74,49.061,71.291,41.91,71.265,41.838a1.293,1.293,0,0,0-2.3-.247c-5.152,8.046-16.716,9.866-17.159,9.932a1.293,1.293,0,0,0-1.126,1.282v6.635a14.651,14.651,0,0,0,6.747,12.328,17.71,17.71,0,0,0-8.9,4.348,6.774,6.774,0,0,1-3.09-3.965,6.35,6.35,0,0,0,2.844-6.823C46.2,53.253,47.513,43.8,52.07,38a1.292,1.292,0,1,0-2.033-1.6c-5.02,6.4-6.507,16.549-4.3,29.364a3.937,3.937,0,0,1-.818,3.475,3.878,3.878,0,0,1-1.354.963,1.292,1.292,0,0,0-.869,1.312,9.191,9.191,0,0,0,4.018,6.509,17.772,17.772,0,0,0-2.728,4.591,17.814,17.814,0,0,0-13.44-10.849,14.723,14.723,0,0,0,5.927-7.5,5.744,5.744,0,0,0,5.216-8.131c2.417-7.13,2.292-12.747-.375-16.7a12.937,12.937,0,0,0-8.778-5.226,7.619,7.619,0,0,0-3.047-3.759c-4.13-2.732-11.056-2.66-20.585.214-3.56,1.074-6,3.064-7.251,5.914C-.237,40.884.675,47.044,4.363,54.89a5.744,5.744,0,0,0,4.442,9.375,14.723,14.723,0,0,0,5.931,7.506,17.736,17.736,0,0,0-8.637,4.1,1.293,1.293,0,0,0,1.7,1.95,15.151,15.151,0,0,1,8.149-3.614,8.15,8.15,0,0,0,2.027,4.607,6.237,6.237,0,0,0,4.666,1.828,6.238,6.238,0,0,0,4.668-1.83A8.146,8.146,0,0,0,29.333,74.2a15.192,15.192,0,0,1,13.36,15.062v14.8H36.845V91.3a1.292,1.292,0,1,0-2.585,0v12.762H11.018V91.3a1.292,1.292,0,1,0-2.585,0v12.762H2.585v-14.8a15.146,15.146,0,0,1,2.156-7.8,1.292,1.292,0,0,0-2.216-1.331A17.73,17.73,0,0,0,0,89.265v16.089a1.292,1.292,0,0,0,1.292,1.292H86.68a1.292,1.292,0,0,0,1.292-1.292v-6.68a1.292,1.292,0,1,0-2.585,0v5.387H79.539V91.3a1.292,1.292,0,1,0-2.585,0v12.762H53.712V91.3a1.292,1.292,0,1,0-2.585,0v12.762H45.279v-14.8a15.192,15.192,0,0,1,13.34-15.053,8.15,8.15,0,0,0,2.028,4.608,6.868,6.868,0,0,0,9.334,0A8.145,8.145,0,0,0,72.007,74.2,15.192,15.192,0,0,1,85.388,89.265V93.5A1.292,1.292,0,0,0,86.68,94.8ZM37.132,61.607a14.694,14.694,0,0,0,.161-2.166V55.465a3.162,3.162,0,0,1-.161,6.142ZM4.021,37.615c.947-2.156,2.788-3.621,5.63-4.478,10.814-3.262,15.938-2.119,18.331-.586a4.7,4.7,0,0,1,2.254,2.992,1.259,1.259,0,0,0,1.223,1.142c.051,0,5.1.3,7.726,4.214,2,2.984,2.179,7.314.537,12.888a5.715,5.715,0,0,0-2.429-.957V50.549a1.292,1.292,0,0,0-.724-1.161c-4.008-1.964-6.664-8.54-6.69-8.606a1.3,1.3,0,0,0-2.027-.518c-9.443,7.846-18.361,7.11-18.446,7.1a1.3,1.3,0,0,0-1.42,1.286v4.177a5.692,5.692,0,0,0-1.521.445c-3.115-6.8-3.962-12.2-2.443-15.661Zm1.634,20.9a3.165,3.165,0,0,1,2.331-3.052v3.976a14.717,14.717,0,0,0,.161,2.166A3.167,3.167,0,0,1,5.654,58.518Zm4.916.924V49.977c2.932-.058,9.982-.873,17.616-6.676,1.077,2.182,3.336,6.074,6.522,8.011v8.129a12.069,12.069,0,0,1-24.138,0ZM22.639,78.056a3.706,3.706,0,0,1-2.812-1.044,5.434,5.434,0,0,1-1.285-2.917h8.193a5.43,5.43,0,0,1-1.284,2.915,3.706,3.706,0,0,1-2.813,1.046ZM53.264,59.441V53.88c3.16-.63,11.392-2.821,16.523-9.038,1.251,2.465,3.756,6.46,7.615,8.506v6.094a12.069,12.069,0,1,1-24.138,0ZM65.312,78.056A3.706,3.706,0,0,1,62.5,77.012a5.436,5.436,0,0,1-1.285-2.917H69.41a5.428,5.428,0,0,1-1.284,2.915,3.705,3.705,0,0,1-2.814,1.046Z" transform="translate(0.25 -28.193)" stroke="#000" stroke-width="0.5" opacity="0.1" />
                                        </svg>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid mg-b-30">
            <div class="row">
                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 mg-t-10">
                    <div class="card " style="margin-top: 5px; margin-bottom: 40px; padding: 1.5em 1em 0em 1em; border: 2px solid #7b7b7b; border-top-left-radius: 50px; border-bottom-width: 10px;">
                        <div class="card-body">
                            <h5 class="card-title" style="font-size: 35px;"><i class="fa fa-hand-o-up"></i>&nbsp; Leader Board</h5>
                            <div style="display: grid; grid-template-columns: 1fr 1fr; grid-column-gap: 1em;">
                                <div class="alert alert-danger">
                                    A simple primary alert—check it out!
                                </div>
                                <div class="alert alert-success">
                                    A simple primary alert—check it out!
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card" style="padding: 1.5em 1em 2.5em 1em; border: 2px solid #64a6de; border-top-left-radius: 50px; border-bottom-width: 10px;">
                        <div class="card-body">
                            <h5 class="card-title mg-b-30" style="font-size: 35px;"><i class="fa fa-hand-o-up"></i>&nbsp; Quick Links</h5>
                            <div style="display: grid; grid-template-columns: 1fr 1fr 1fr; grid-column-gap: 5em; grid-row-gap: 1em;">
                                <a class="btn btn-default" href="Class.aspx" style="outline: none; font-family: Roboto; font-weight: 500;">CLASSES</a>
                                <a class="btn btn-primary" href="Students.aspx" style="outline: none; font-family: Roboto; font-weight: 500;">STUDENTS </a>
                                <a class="btn btn-success" href="Employee.aspx" style="outline: none; font-family: Roboto; font-weight: 500;">EMPLOYEES</a>
                                <a class="btn btn-danger"  href="Parents.aspx" style="outline: none; font-family: Roboto; font-weight: 500;">PARENTS</a>
                                <a class="btn btn-warning" href="Payment.aspx" style="outline: none; font-family: Roboto; font-weight: 500;">PAYMENTS</a>
                                <a class="btn btn-info"    href="Exam.aspx" style="outline: none; font-family: Roboto; font-weight: 500;">EXAMS </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
                    <div id='wrap'>
                        <div id='calendar'></div>
                        <div style='clear: both'></div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Label Text="&copy;	ST MARY'S Learning Management System" Font-Size="Larger" Style="display: flex; justify-content: center; align-items: flex-end; color: white; font-family: 'Roboto'; font-weight: 500;"
            runat="server" />
    </main>

    <!-- jquery
        ============================================ -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
        ============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- wow JS
        ============================================ -->
    <script src="js/wow.min.js"></script>
    <!-- price-slider JS
        ============================================ -->
    <script src="js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
        ============================================ -->
    <script src="js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
        ============================================ -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- sticky JS
        ============================================ -->
    <script src="js/jquery.sticky.js"></script>
    <!-- scrollUp JS
        ============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- counterup JS
        ============================================ -->
    <script src="js/counterup/jquery.counterup.min.js"></script>
    <script src="js/counterup/waypoints.min.js"></script>
    <script src="js/counterup/counterup-active.js"></script>
    <!-- mCustomScrollbar JS
        ============================================ -->
    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
        ============================================ -->
    <script src="js/metisMenu/metisMenu.min.js"></script>
    <script src="js/metisMenu/metisMenu-active.js"></script>
    <!-- morrisjs JS
        ============================================ -->
    <script src="js/morrisjs/raphael-min.js"></script>
    <script src="js/morrisjs/morris.js"></script>
    <script src="js/morrisjs/morris-active.js"></script>
    <!-- morrisjs JS
        ============================================ -->
    <script src="js/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/sparkline/jquery.charts-sparkline.js"></script>
    <script src="js/sparkline/sparkline-active.js"></script>
    <!-- calendar JS
        ============================================ -->
    <script src="js/calendar/moment.min.js"></script>
    <script src="js/calendar/fullcalendar.min.js"></script>
    <script src="js/calendar/fullcalendar-active.js"></script>
    <!-- plugins JS
        ============================================ -->
    <script src="js/plugins.js"></script>
    <!-- main JS
        ============================================ -->
    <script src="js/dmain.js"></script>

</body>
</html>
