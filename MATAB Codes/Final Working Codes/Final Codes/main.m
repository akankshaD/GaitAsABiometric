% MAIN FUNCTION WHICH COMPUTES GAIT SIGNATURE FOR CORRESPONDING VIDEOS

opticalFlow = vision.OpticalFlow('ReferenceFrameSource','Input port');
opticalFlow.OutputValue = 'Horizontal and vertical components in complex form';
converter = vision.ImageDataTypeConverter;

% FIRST VIDEO - Video No 23-------- For SUBJECT 1
% Bounding Box Matrix
mat_w = [130 230; 170 220; 210 280; 210 310; 240 320; 300 350; 300 370; 300 400; 380 420; 400 500; 410 500; 430 500; 460 500; 470 510; 550 610; 550 650; 550 640; 600 650; 610 660];
mat_h = [150 350; 150 350; 150 350; 150 350; 150 350; 150 350; 150 350; 150 350; 150 350; 150 350; 150 350; 150 350; 150 350; 150 350; 150 350; 150 350; 150 350; 150 350; 150 350];

total_rows = 19;   % Number of frames chosen
videoNum = 23;
folderName = 'test23BBox';
% Frame numbers
I = [12;13;16;17;18;21;22;23;27;30;31;32;33;34;41;44;45;47;48];

AFH1 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 1 created!')

% SECOND VIDEO- Video No 10-------- For SUBJECT 2
% Bounding Box Matrix
mat_w = [280 380; 350 400; 370 440; 410 480; 420 480; 540 600; 550 600; 560 630; 570 640; 580 630; 585 640; 585 650; 600 640];
mat_h = [140 340; 140 340; 140 340; 140 340; 140 340; 140 340; 140 340; 140 340; 140 340; 140 340; 140 340; 140 340; 140 340];
total_rows = 13;
videoNum = 10;
folderName = 'test10BBox';
% Frame numbers
I = [43;49;55;60;61;77;78;79;80;81;82;83;85];

AFH2 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 2 created!')

% THIRD VIDEO- Video No 14--------- For SUBJECT 3
% Bounding Box Matrix
mat_w = [140 200; 150 200; 150 200; 160 200; 170 205; 170 210; 170 210; 170 230; 185 350; 190 230; 185 240; 185 235; 195 270; 295 330; 300 330; 300 340; 305 380; 355 400; 360 410; 390 420; 405 430; 460 500; 540 595; 580 630];
mat_h = [170 310; 170 310; 170 310; 170 310; 170 315; 170 315; 170 325; 180 330; 180 330; 180 330; 180 335; 180 340; 185 345; 190 350; 180 350; 180 350; 190 350; 190 350; 180 350; 180 350; 180 350; 160 350; 170 350; 180 355];
total_rows = 24;
videoNum = 14;
folderName = 'test14BBox';
% Frame numbers
I = [3; 4; 7; 8; 11; 12; 13; 18; 19; 20; 21; 22; 24; 37; 38; 39; 41; 45; 47; 51; 53; 59; 71; 75];

AFH3 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 3 created!')

% FOURTH VIDEO- Video No 13-------- For SUBJECT 4
% Bounding Box Matrix
mat_w = [630 720; 600 705; 590 700; 605 700; 600 695; 600 680; 600 680; 600 680; 580 670; 550 670; 540 660;560 650; 540 640; 530 640; 550 630; 550 620; 550 610; 540 610; 530 610; 530 600; 520 600; 520 590; 510 580; 500 580; 500 570; 490 560; 490 550; 480 550; 480 550; 480 520; 470 520; 460 510; 450 500; 440 490; 440 490; 430 470; 430 470; 430 470; 420 470; 410 470; 400 460; 400 460; 400 460; 390 450; 390 450; 380 440; 380 440; 350 390; 340 400; 330 380; 330 380; 330 370; 320 360; 300 320; 280 310; 280 310; 270 310; 270 320; 260 320; 230 260; 220 280; 220 260; 220 270; 220 270; 210 260];
mat_h = [160 360; 160 360; 150 370; 150 370; 150 370; 155 370; 160 370; 150 370; 150 370; 150 360; 148 350; 150 370; 150 370; 150 360; 160 380; 160 380; 175 380; 170 375; 160 370; 160 370; 160 365;155 350; 150 360; 150 360; 160 360; 160 370; 170 370; 160 370; 160 370; 160 370; 160 365; 150 360; 150 350; 155 345; 160 350; 160 350; 150 350; 150 350; 150 350; 150 350; 150 350; 155 350; 155 350; 155 350; 155 340; 155 350; 150 350; 160 350; 165 350; 160 350; 155 340; 150 350; 150 340; 155 345; 155 345; 155 345; 150 345; 150 350; 150 340; 150 345; 150 335; 150 335; 145 325; 145 325];
total_rows = 65;
videoNum = 13;
folderName = 'test13BBox';
% Frame Numbers
I = [1; 3; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23; 24; 25; 26; 27; 28; 29; 31; 32; 33; 34; 35; 38; 39; 40; 41; 42; 43; 44; 45; 46; 47; 48; 49; 50; 51; 52; 56; 57; 58; 59; 60; 61; 64; 66; 67; 68; 69; 70; 74; 75; 76; 77; 78;79];

AFH4 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 4 created!')

% FIFTH VIDEO- Video No 11--------- For SUBJECT 5
% Bounding Box Matrix
mat_w = [150 220; 170 240; 190 240; 190 250; 190 260; 200 270; 260 310; 270 310; 270 310; 270 320; 280 320; 290 330; 300 340; 280 350; 280 360; 290 370; 300 370; 310 380; 320 390; 340 400; 350 400; 360 410; 360 410; 350 400; 350 400; 340 400; 330 400; 340 400; 360 420; 360 420; 360 430; 370 440; 390 450; 400 460; 400 460; 400 460; 400 460; 390 470; 400 470; 400 470; 410 480; 410 490; 410 490; 420 510; 410 505; 420 510; 430 510; 440 510; 460 520; 470 530; 470 530; 480 530; 490 560; 490 570; 500 580; 500 590; 500 600; 520 605; 520 610; 530 610; 560 610; 570 620; 560 620; 560 620; 560 630; 570 640; 580 650; 580 660; 600 660; 600 670; 590 670; 600 680; 600 680; 610 700; 610 700; 610 710; 630 720];
mat_h = [160 355; 155 360; 155 355; 155 360; 160 360; 170 355; 160 360; 160 360; 160 360; 160 355; 160 350; 160 350; 160 350; 170 350; 175 355; 175 360; 175 360; 175 350; 160 350; 155 350; 155 350; 150 350; 145 350; 150 350; 145 350; 145 345; 150 350; 150 350; 155 350; 155 360; 160 350; 155 350; 155 355; 150 350; 150 355; 150 355; 145 350; 150 350; 150 355; 150 350; 150 345; 145 345; 150 350; 150 350; 155 350; 155 350; 150 350; 150 350; 150 345; 150 350; 150 355; 145 350; 150 360; 150 375; 160 375; 160 360; 155 360; 150 350; 150 345; 145 345; 145 355; 150 360; 145 360; 145 360; 140 360; 145 370; 145 370; 150 355; 150 355; 150 360; 155 365; 155 360; 155 350; 150 355; 145 355; 145 360; 145 360];

total_rows = 77;
videoNum = 11;
folderName = 'test11BBox';
% Frame Numbers 
I = [30; 34; 35; 41; 44; 47; 57; 58; 59; 61; 62; 65; 66; 67; 68; 69; 70; 71; 72; 73; 75; 76; 77; 78; 79; 80; 81; 82; 84; 85; 86; 87; 89; 90; 91; 92; 93; 94; 95; 96; 97; 98; 100; 101; 102; 103; 104; 105; 106; 107; 108; 109; 114; 116; 118; 119; 20; 121; 122; 123; 124; 125; 126; 127; 129; 130; 131; 132; 133; 134; 135; 136; 137; 138; 139; 140; 141];

AFH5 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 5 created!')

% SIXTH VIDEO- Video No 25--------- For SUBJECT 6
% Bounding Box Matrix
mat_w = [170 230; 200 280; 200 230; 200 300; 200 300; 210 300; 220 300; 230 300; 240 305; 255 310; 270 310; 280 340; 280 350; 285 380; 290 385; 290 390; 295 385; 300 380; 300 380; 310 390; 325 400; 340 400; 340 400; 340 415; 340 430; 340 430; 340 440; 340 440; 350 450; 360 440; 380 430; 390 450; 400 460; 400 460; 410 485; 405 495; 405 500; 405 505; 405 505; 405 505; 410 505; 420 510; 430 510; 450 520; 470 530; 480 530; 485 540; 480 550; 480 580; 485 585; 480 595; 485 595; 495 600; 495 600; 500 600; 515 600; 520 600; 535 600; 535 610; 540 620; 550 640; 550 650; 560 650; 550 650; 560 660; 565 665; 570 670; 580 670; 595 685; 600 680; 600 680; 600 700];
mat_h = [205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400];
total_rows = 72;
videoNum = 25;
folderName = 'test25BBox';
% Frame Numbers 
I = [21; 25; 26; 27; 28; 31; 32; 33; 34; 35; 36; 37; 38; 39; 41; 42; 43; 44; 45; 46; 47; 48; 49; 50; 51; 52; 53; 54; 55; 56; 57; 59; 60; 61; 62; 63; 64; 65; 66; 67; 68; 69; 70; 71; 72; 73; 74; 75; 76; 77; 78; 79; 80; 81; 82; 83; 84; 85; 86; 87; 88; 89; 90; 91; 92; 93; 94; 95; 96; 97; 98; 99; 100];
AFH6 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 6 created!')

% SEVENTH VIDEO - Video no.30----- For SUBJECT 6
% Bounding Box Matrix
mat_w = [650 730; 640 720; 640 700; 630 685; 600 680; 600 675; 580 680; 575 680; 560 680; 570 670; 575 665; 580 670; 580 660; 580 650; 580 630; 580 630; 530 610; 500 600; 495 600; 490 590; 490 580; 485 575; 480 570; 470 565; 460 560; 430 530; 420 535; 420 525; 420 520; 420 520; 420 515; 420 505; 420 500; 420 500; 420 500; 420 480; 405 475; 395 460; 380 450; 370 400; 365 450; 350 460; 355 460; 350 450; 350 440; 350 430; 340 420; 340 410; 330 400; 330 395; 305 395; 295 395; 290 400; 280 390; 280 395; 280 380; 280 375; 280 355; 280 355; 280 330; 280 320; 270 310; 260 310; 230 310; 215 310; 205 305; 205 305; 205 305; 205 300; 205 295; 205 290; 205 270; 205 260; 195 250; 180 240; 175 235; 150 250; 140 240; 140 240; 135 240; 130 230; 130 230; 130 220; 130 220; 130 210; 120 200; 115 190; 100 190; 95 190]; 
mat_h = [205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430; 205 430];

total_rows = 89;
videoNum = 30;
folderName = 'test30BBox';
% Frame Numbers 
I = [16; 17; 18; 19; 20; 22; 23; 24; 25; 26; 27; 28; 29; 30; 31; 35; 39; 40; 42; 44; 45; 46; 47; 48; 49; 50; 51; 52; 53; 54; 55; 56; 57; 58; 59; 60; 61; 62; 63; 64; 65; 66; 67; 68; 69; 70; 71; 72; 73; 74; 75; 76; 77; 78; 79; 80; 81; 82; 83; 84; 85; 86; 87; 88; 89; 90; 92; 93; 94; 95; 96; 97; 98; 99; 100; 101; 102; 103; 104; 105; 106; 107; 108; 109; 110; 111; 112; 113; 114];

AFH7 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 7 created!')

% EIGHTH VIDEO - Video no.33----- For SUBJECT 7
% Bounding Box Matrix
mat_w = [630 715; 630 705; 585 680; 580 680; 575 670; 575 670; 570 660; 570 655; 565 650; 565 645; 565 635; 565 625; 555 615; 545 615; 520 615; 515 600; 500 600; 500 600; 495 600; 495 600; 495 600; 495 600; 495 595; 495 595; 495 580; 495 535; 485 515; 475 510; 465 510; 445 505; 420 505; 410 505; 405 505; 405 505; 400 505; 400 505; 400 500; 400 500; 400 485; 400 470; 400 430; 400 430; 385 425; 380 425; 360 425; 335 425; 325 425; 325 425; 325 425; 325 425; 315 415; 315 405; 315 400; 315 395; 310 370; 200 275; 200 285; 195 285; 195 285; 185 285; 185 285; 185 285; 185 285; 185 255; 185 245; 185 235; 185 225; 175 205; 160 205; 130 200; 115 200; 100 200; 100 200; 100 200; 100 200];
mat_h = [200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405; 200 405];

total_rows = 75;
videoNum = 33;
folderName = 'test33BBox';
% Frame Numbers 
I = [31; 32; 38; 39; 40; 41; 42; 43; 44; 45; 46; 47; 48; 49; 50; 51; 52; 53; 54; 55; 56; 57; 58; 59; 60; 61; 62; 63; 64; 65; 66; 67; 68; 69; 70; 71; 72; 73; 74; 75; 76; 77; 78; 79; 80; 81; 82; 83; 84; 85; 86; 87; 88;89; 90; 108; 109; 110; 111; 112; 113; 114; 115; 116; 117; 118; 119; 120; 121; 122; 123; 124; 125; 126; 127];

AFH8 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 8 created!')

% NINTH VIDEO - Video no.27----- For SUBJECT 7
% Bounding Box Matrix
mat_w = [180 250; 180 260; 185 270; 190 280; 195 295; 195 295; 200 295; 200 295; 205 300; 210 300; 220 300; 240 305; 250 310; 250 320; 250 330; 250 350; 250 365; 250 370; 260 375; 270 375; 275 375; 295 380; 315 390; 325 400; 330 400; 330 405; 335 410; 335 420; 335 425; 340 430; 350 440; 360 440; 380 450; 390 455; 400 460; 400 470; 400 480; 400 490; 400 500; 400 505; 400 505; 405 505; 410 505; 420 510; 430 510; 450 520; 465 525; 480 540; 480 550; 485 560; 485 570; 485 580; 490 590; 490 595; 495 595; 500 600; 500 600; 510 600; 520 600; 535 600; 550 605; 560 620; 565 625; 565 635; 565 650; 565 660; 565 670; 575 680; 580 680; 590 680; 600 685];
mat_h = [210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400; 210 400];

total_rows = 71;
videoNum = 27;
folderName = 'test27BBox';
% Frame Numbers 
I = [38; 39; 40; 41; 42; 43; 44; 45; 46; 47; 48; 49; 50; 51; 52; 53; 54; 55; 56; 57; 58; 60; 62; 63; 64; 65; 66; 67; 68; 69; 70; 71; 72; 73; 74; 75; 76; 77; 78; 79; 80; 81; 82; 83; 84; 85; 86; 87; 88; 89; 90; 91; 92; 93; 94; 95; 96; 97; 98; 99; 100; 101; 102; 103; 104; 105; 106; 107; 108; 109; 110];

AFH9 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 9 created!')

% TENTH VIDEO - Video no.28----- For SUBJECT 8
% Bounding Box Matrix
mat_w = [100 180; 100 200; 100 200; 100 200; 100 200; 100 200; 100 200; 100 205; 130 205; 130 210; 150 215; 180 220; 180 230; 180 240; 180 250; 180 260; 180 275; 185 280; 185 280; 185 280; 190 275; 200 270; 200 275; 210 275; 225 300; 230 300; 230 300; 230 305; 235 320; 235 330; 235 335; 235 340; 235 340; 235 340; 260 350; 265 355; 290 350; 295 355; 305 365; 305 365; 305 385; 305 400; 305 400; 305 405; 305 405; 305 405; 310 410; 315 410; 325 415; 335 415; 345 420; 370 425; 385 430; 385 440; 385 450; 385 460; 390 480; 390 485; 390 495; 390 495; 390 495; 395 495; 400 500; 410 500; 420 500; 425 500; 450 505; 450 510; 450 525; 450 530; 450 540; 450 555; 450 555; 450 555; 450 560; 460 560; 470 560; 480 560; 495 570; 500 580; 505 595; 505 600; 515 600; 515 600; 515 600; 515 605; 515 605; 515 610; 515 615; 520 620];
mat_h = [200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400; 200 400];

total_rows = 90;
videoNum = 28;
folderName = 'test28BBox';

% Frame Numbers 
I = [29; 30; 31; 32; 33; 34; 35; 36; 37; 38; 39; 40; 41; 42; 43; 44; 45; 46; 47; 48; 49; 50; 51; 52; 53; 54; 55; 56; 57; 58; 59; 60; 61; 62; 63; 64; 65; 66; 67; 68; 69; 70; 71; 72; 73; 74; 75; 76; 77; 78; 79; 80; 81; 82; 83; 84; 85; 86; 87; 88; 89; 90; 91; 92; 93; 94; 95; 96; 97; 98; 99; 100; 101; 102; 103; 104; 105; 106; 107; 108; 109; 110; 111; 112; 113; 114; 115; 116; 117;118 ];

AFH10 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 10 created!')
% ELEVENTH VIDEO - Video no.31----- For SUBJECT 8
% Bounding Box Matrix
mat_w = [650 720; 640 720; 605 685; 595 680; 585 685; 585 685; 525 605; 505 605; 500 605; 495 605; 495 600; 495 600; 490 600; 495 595; 490 580; 490 550; 475 540; 475 535; 460 530; 430 520; 415 525; 405 515; 405 515; 400 515; 400 515; 400 505; 400 500; 395 485; 395 470; 395 465; 380 450; 350 450; 340 450; 335 450; 330 440; 325 430; 325 425; 325 420; 325 405; 315 390; 305 385; 295 385; 280 380; 270 380; 270 380; 260 370; 250 380; 250 340; 240 320; 250 310; 240 305; 230 300; 205 300; 200 300; 195 300; 190 300; 190 300; 190 295; 190 290; 190 265; 190 260; 190 250; 180 240; 165 215; 150 215; 130 210; 120 210; 110 205; 105 205; 105 200; 105 200; 105 200];
mat_h = [205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400];

total_rows = 72;
videoNum = 31;
folderName = 'test31BBox';

% Frame Numbers 
I = [25; 26; 30; 31; 32; 33; 42; 43; 44; 45; 46; 47; 48; 49; 50; 51; 52; 53; 54; 55; 56; 57; 58; 59; 60; 61; 62; 63; 64; 65; 67; 68; 69; 70; 71; 72; 73; 74; 75; 77; 78; 79; 80; 81; 82; 83; 84; 87; 88; 89; 90; 91; 92; 93; 94; 95; 96; 97; 98; 99; 100; 101; 102; 103; 104; 105; 106; 107; 108; 109; 110; 111];

AFH11 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 11 created!')


% TWELVTH VIDEO - Video no.32----- For SUBJECT 9
% Bounding Box Matrix
mat_w = [620 700; 605 700; 595 670; 590 630; 580 630; 550 625; 530 615; 515 610; 505 605; 500 605; 500 605; 500 605; 500 600; 500 600; 500 585; 495 565; 490 560; 480 555; 460 540; 445 540; 435 535; 415 520; 415 520; 415 520; 415 505; 415 500; 415 495; 405 495; 400 480; 395 485; 380 480; 360 460; 350 460];
mat_h = [205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400];

total_rows = 33;
videoNum = 32;
folderName = 'test32BBox';

% Frame Numbers 
I = [60; 61; 69; 71; 72; 73; 74; 75; 76; 77; 78; 79; 81; 82; 83; 84; 85; 86; 87; 88; 89; 91; 92; 93; 94; 95; 96; 97; 98; 99; 100; 101; 102; 104];

AFH12 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 12 created!')

% THIRTEENTH VIDEO - Video no.26----- For SUBJECT 9
% Bounding Box Matrix
mat_w = [150 250; 150 250; 150 250; 160 255; 165 255; 180 255; 195 250; 200 250; 215 300; 220 305; 220 315; 220 320; 220 320; 220 325; 225 320; 225 330; 240 330; 250 330; 260 330; 285 340; 290 345; 295 345; 300 360; 300 370; 300 400; 300 400; 305 405; 305 405; 305 410; 305 410; 320 415; 330 420; 345 420; 360 420; 380 420; 390 430; 395 450; 395 480; 395 500; 395 500; 395 500; 400 500; 400 500; 410 505; 425 505; 455 505; 470 505; 480 510; 480 525; 480 540; 485 580; 485 585; 480 580; 490 590; 495 595; 500 595; 510 600; 515 600; 525 600; 530 600; 530 605; 530 625; 540 640; 540 640; 545 650; 550 660; 550 675; 560 685; 585 685; 585 685; 595 690; 600 690; 600 700; 615 700; 620 700; 625 705; 625 710];
mat_h = [205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400; 205 400];

total_rows = 77;
videoNum = 26;
folderName = 'test26BBox';

% Frame Numbers 
I = [20; 21; 22; 23; 24; 25; 26; 27; 30; 31; 32; 33; 34; 35; 36; 37; 38; 39; 40; 41; 42; 43; 44; 45; 46; 47; 48; 49; 50; 51; 52; 53; 54; 55; 56; 57; 58; 60; 61; 62; 63; 64; 66; 67; 68; 69; 70; 71; 72; 74; 75; 76; 77; 78; 79; 80; 81; 82; 83; 84; 85; 86; 87; 88; 89; 90; 91; 92; 93; 94; 95; 96; 97; 98; 99; 100; 101];

AFH13 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 13 created!')

% FOURTEENTH VIDEO - Video no.44----- For SUBJECT 6
% Bounding Box Matrix
mat_w = [90 160; 90 160; 100 160; 120 200; 120 210; 125 225; 130 225; 185 225; 185 230; 200 280; 200 300; 200 300; 200 305; 205 305; 205 310; 210 305; 215 310; 245 315; 250 315; 270 320; 285 320; 290 335; 290 335; 290 380; 290 395; 290 400; 290 400; 295 400; 295 400; 315 400; 330 400; 340 400; 365 405; 365 410; 365 430; 370 455; 375 470; 375 480; 375 490; 375 490; 385 490; 390 490; 400 490; 410 495; 420 495; 435 500; 440 500; 440 515; 445 520; 445 540; 445 545; 445 545; 455 560; 470 560; 480 565; 490 570; 500 560; 510 560; 510 560; 515 600; 515 610; 515 620; 515 625; 515 625; 515 625; 520 630; 545 630; 560 630; 595 635; 605 640; 605 665; 605 700; 605 700; 605 705; 605 705 ];
mat_h = [225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440; 225 440];


total_rows = 75;
videoNum = 44;
folderName = 'test44BBox';

% Frame Numbers 
I = [34; 35; 36; 40; 41; 45; 46; 49; 50; 53; 54; 55; 56; 57; 58; 59; 60; 61; 62; 63; 64; 65; 66; 67; 68; 69; 70; 71; 72; 74; 75; 76; 77; 78; 79; 80; 81; 82; 83; 84; 85; 86; 87; 88; 89; 90; 91; 92; 93; 94; 95; 96; 97; 98; 99; 100; 101; 102; 103; 104; 105; 106; 107; 108; 109; 110; 111; 112; 114; 115; 116; 117; 118; 119; 120];


AFH14 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 14 created!')

% FIFTEENTH VIDEO - Video no.43----- For SUBJECT 6
% Bounding Box Matrix
mat_w = [660 715; 650 715; 635 715; 605 715; 600 715; 600 715; 600 705; 600 705; 600 650; 600 630; 585 630; 570 630; 515 600; 515 590; 505 570; 500 565; 490 560; 475 560; 460 560; 450 550; 435 550; 430 600; 405 485; 395 485; 360 430; 360 420; 350 410; 330 400; 310 400; 300 400; 300 400; 295 400; 290 400; 290 400; 290 400; 290 385; 290 360; 260 315; 235 315; 100 170; 90 170];
mat_h = [205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445];

% Frame Numbers 
I = [30; 31; 32; 33; 34; 35; 36; 37; 41; 42; 43; 44; 52; 53; 54; 55; 56; 57; 58; 59; 60; 65; 68; 69; 77; 78; 79; 80; 81; 82; 83; 84; 85; 86; 87; 88; 89; 93; 94; 119; 120];

total_rows = 41;
videoNum = 43;
folderName = 'test43BBox';

AFH15 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 15 created!')

% SIXTEENTH VIDEO - Video no.45----- For SUBJECT 9
% Bounding Box Matrix
mat_w = [670 720; 650 720; 620 715; 605 705; 600 705; 600 705; 600 705; 600 700; 600 700; 600 700; 600 690; 600 680; 595 660; 580 640; 570 625; 545 625; 525 625; 510 625; 505 625; 500 620; 500 620; 500 620; 500 605; 500 600; 500 600; 500 580; 500 570; 490 540; 405 525; 405 500; 400 500; 400 480; 400 470; 395 450; 375 450; 350 450; 335 445; 325 440; 320 440; 320 435; 315 430; 315 425; 315 415; 315 410; 315 400; 300 400; 300 370; 295 365; 280 365; 250 365; 250 365; 250 365; 240 365; 240 360; 240 340; 225 325; 230 315; 230 300; 230 300; 225 280; 210 285; 200 280; 190 280; 180 280; 180 280; 170 280; 170 280; 170 270; 170 260; 170 250; 170 230; 160 215];
mat_h = [205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445; 205 445];

% Frame Numbers 
I = [27; 28; 29; 30; 31; 32; 33; 34; 35; 36; 37; 38; 39; 40; 41; 42; 43; 44; 45; 46; 47; 48; 49; 50; 51; 52; 53; 54; 61; 64; 65; 66; 67; 68; 69; 70; 71; 72; 73; 74; 75; 76; 77; 78; 79; 80; 81; 82; 83; 84; 85; 86; 87; 88; 89; 90; 91; 92; 93; 94; 95; 96; 97; 98; 99; 100; 101; 102; 103; 104; 105; 106];

total_rows = 72;
videoNum = 45;
folderName = 'test45BBox';

AFH16 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 16 created!')

% SEVENTEENTH VIDEO - Video no.46----- For SUBJECT 9
% Bounding Box Matrix
mat_w = [130 230; 140 230; 150 230; 170 230; 180 230; 195 230; 200 235; 200 260; 200 290; 205 300; 205 300; 210 300; 210 305; 215 305; 220 310; 235 310; 250 310; 270 320; 280 320; 290 325; 295 345; 300 370; 300 390; 300 400; 300 400; 300 400; 305 400; 310 400; 315 400; 325 400; 350 405; 370 415; 380 420; 475 505; 475 510; 480 525; 480 550; 480 580; 480 595; 480 600; 490 600; 490 600; 500 600; 500 600; 505 600; 520 600; 525 600; 550 605; 550 615; 570 650; 570 660; 570 680; 570 680; 575 690; 575 690; 590 700; 600 700; 605 700; 620 700; 630 700; 660 700; 670 700];
mat_h = [225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445; 225 445];

total_rows = 62;
videoNum = 46;
folderName = 'test46BBox';

%Frame numbers
I = [28; 29; 30; 31; 32; 33; 34; 35; 36; 37; 38; 39; 40; 41; 42; 43; 44; 45; 46; 47; 48; 49; 50; 51; 52; 53; 54; 55; 56; 57; 58; 59; 60; 73; 74; 75; 76; 77; 78; 79; 80; 81; 82; 83; 84; 85; 86; 87; 88; 89; 90; 91; 92; 93; 94; 95; 96; 97; 98; 99; 100; 101];

AFH17 = createGaitSignature(mat_w, mat_h, total_rows, I, folderName, videoNum);
disp('Average Flow Histogram 17 created!')

% TRAINING MODEL

trainData = [AFH1'; AFH2'; AFH3'; AFH4'; AFH5'; AFH6'; AFH7'; AFH8'; AFH9';AFH10'; AFH11'; AFH12'; AFH13'; AFH14'; AFH15'; AFH16'; AFH17'];    % training data
labels =    [ 1;  2; 3 ; 4 ; 5; 6 ; 6 ; 7 ; 7 ; 8 ; 8  ; 9  ; 9  ; 6  ; 6  ; 9  ; 9 ];     % training labels

testData = [AFH15'; AFH17'];  % testing data

%disp(trainData);
%disp(labels);

% Fitting the Model
model = fitcknn(trainData, labels, 'NumNeighbors',10, 'Standardize', 1);

save('trainingData.mat', 'trainData', 'labels');

% Cross Validation
cvknn = crossval(model);
classError = kfoldLoss(cvknn);
disp(classError);

% Testing the classifier
meanClass = predict(model, testData);
disp(meanClass);

% Plotting multivariate data
X = [ AFH1'; AFH2'; AFH3'; AFH4'; AFH5'; AFH6'; AFH7'; AFH8'; AFH9'; AFH10'; AFH11'; AFH12'; AFH13'; AFH14'; AFH15'; AFH16'; AFH17']; 
parallelcoords(X, 'group', [ 1 2 3 4 5 6 6 7 7 8 8 9 9 6 6 9 9], 'standardize', 'on');


%For the readme



