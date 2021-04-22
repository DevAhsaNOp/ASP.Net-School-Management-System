<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddSubject.aspx.cs" Inherits="AddSubject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>ST MARY'S LMS SUBJECTS</title>
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
    <style>
        .HeadBdr {
            border-bottom: 2px solid black;
        }

        .pad {
            padding-left: 10px;
        }

        .mar {
            margin: 10px;
            color: white;
            font-size: medium;
            font-weight: 600;
            border-radius: 3px;
            font-family: Roboto,sans-serif !important;
        }

        .scrolling {
            position: absolute;
        }

        .gvWidthHight {
            overflow-y: scroll !important;
            height: 350px !important;
        }

            .gvWidthHight::-webkit-scrollbar {
                width: 0px;
            }

            .gvWidthHight::-webkit-scrollbar-track {
                background: #e8ecef;
            }

            .gvWidthHight::-webkit-scrollbar-thumb {
                background: #6649b8;
            }

        .formInnerGroupRow {
            display: flex;
            justify-content: space-around;
        }

        .formInnerGroupRowBtn {
            display: flex;
            justify-content: center;
        }

        .formInnerGroup {
            display: flex;
            justify-content: flex-start;
        }
    </style>

</head>

<body style="background-size: contain;">
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
    <form id="form2" runat="server">
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
                    <a href="Dashboard.aspx" class="Lnav-link">
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
                    <a href="Subjects.aspx" class="Lnav-link Lnav-link-current">
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
                    <a href="Parents.aspx" class="Lnav-link ">
                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user-tie" class="svg-inline--fa fa-user-tie fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                            <path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm95.8 32.6L272 480l-32-136 32-56h-96l32 56-32 136-47.8-191.4C56.9 292 0 350.3 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-72.1-56.9-130.4-128.2-133.8z"></path></svg>
                        <span class="Llink-text ">Parents</span>
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
                <div class="header-advance-are">
                    <div class="header-top-area" style="background-color: #5773FF;">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="header-top-wraper">
                                        <div class="row">
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">
                                                <div class="breadcome-heading" style="padding-top: 10px;">
                                                    <div class="sr-input-func" role="search">
                                                        <input runat="server" type="text" placeholder="Search..."
                                                            class="search-int form-control" style="color: white;" />
                                                        <a href="#"><i class="fa fa-search"></i></a>
                                                    </div>
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
                <div class="breadcome-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="breadcome-list">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="display: flex;">
                                            <ul class="breadcome-menu">
                                                <li><a href="Dashboard.aspx"><b>Home</b></a> <span class="bread-slash">/</span>
                                                </li>
                                                <li><a href="Subjects.aspx"><b>Subjects</b></a> <span class="bread-slash">/</span>
                                                </li>
                                                <li><span class="bread-blod">Add Subject</span>
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
            <div class="container-fluid">
                <div class="row" style="display: flex; flex-direction: column; align-items: center;">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="display: flex; justify-content: space-between; align-items: center; top: 0px; left: 0px;">
                        <h2>&nbsp;Add Subject   </h2>
                    </div>
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12" style="margin-top: 10px;">
                        <div class="sparkline10-list mg-b-20" style="box-shadow: 2px 2px 28px #8888889e; border-radius: 5px; height: 45vh">
                            <div class="form-group-inner">
                                <div class="row formInnerGroupRow">
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <label class="login2">Subject ID</label>
                                        <asp:TextBox runat="server" ReadOnly="true" CssClass="form-control basic-ele-mg-t-10" placeholder="System Generated ID" Style="border-radius: 5px;" />
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <label class="login2">Subject Description</label>
                                        <asp:TextBox runat="server" CssClass="form-control basic-ele-mg-t-10" placeholder="Enter Subject Description Optional" Style="border-radius: 5px;"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row formInnerGroup mg-t-30">
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" style="margin-left: 230px;">
                                        <label class="login2">Subject Name</label>
                                        <asp:TextBox runat="server" CssClass="form-control basic-ele-mg-t-10" placeholder="Enter Subject Name" Style="border-radius: 5px;" />
                                    </div>
                                </div>
                                <div class="row formInnerGroup mg-t-30">
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" style="margin-left: 230px;">
                                        <label class="login2">Class Name</label>
                                        <asp:DropDownList runat="server" CssClass="form-control basic-ele-mg-t-10" Style="border-radius: 5px;">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row formInnerGroupRowBtn mg-t-15">
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        <asp:Label runat="server" ID="Success" CssClass="login2" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group-inner formInnerGroupRowBtn">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <asp:Button runat="server" ID="AddSubj" class="btn btn-default btn-lg" Text="Add Subject"
                                OnClick="AddSubj_Click" type="button" Style="outline: none; background-color: #5A6268; color: white" />
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </form>
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
