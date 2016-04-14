function getTeamInfo(teamId) {

    var name, loc, lat, lon, sea, logo, clr, stadium, stadiumId;

    switch (teamId) {


        case 'abilene-christian':
            name = 'Abilene Christian Wildcats';
            loc = 'Abilene, TX';
            stadium = 'Moody Coliseum';
            stadiumId = 'abilene-christian-moody-coliseum';
            lat = 32.4703664;
            lon = -99.7092470999999;
            logo = '../img/mapIcons/abilene-christian.png';
            clr = '70, 29, 124';
            break;
        case 'air-force':
            name = 'Air Force Falcons';
            loc = 'USAF Academy, CO';
            stadium = 'Clune Arena';
            stadiumId = 'air-force-clune-arena';
            lat = 39.0136037;
            lon = -104.8837735;
            logo = '../img/mapIcons/air-force.png';
            clr = '50, 85, 164';
            break;
        case 'akron':
            name = 'Akron Zips';
            loc = 'Akron, OH';
            stadium = 'James A. Rhodes Arena';
            stadiumId = 'akron-james-a-rhodes-arena';
            lat = 41.0758814999999;
            lon = -81.5087431;
            logo = '../img/mapIcons/akron.png';
            clr = '0, 40, 94';
            break;
        case 'alabama-am':
            name = 'Alabama A&M Bulldogs';
            loc = 'Normal, AL';
            stadium = 'Elmore Gymnasium';
            stadiumId = 'alabama-am-elmore-gymnasium';
            lat = 34.7854354;
            lon = -86.5754355;
            logo = '../img/mapIcons/alabama-am.png';
            clr = '86, 16, 3';
            break;
        case 'alabama':
            name = 'Alabama Crimson Tide';
            loc = 'Tuscaloosa, AL';
            stadium = 'Foster Auditorium';
            stadiumId = 'alabama-foster-auditorium';
            lat = 33.2077342;
            lon = -87.5439361;
            logo = '../img/mapIcons/alabama.png';
            clr = '157, 34, 53';
            break;
        case 'alabama-state':
            name = 'Alabama State Hornets';
            loc = 'Montgomery, AL';
            stadium = 'Dunn-Oliver Acadome';
            stadiumId = 'alabama-state-dunn-oliver-acadome';
            lat = 32.361865;
            lon = -86.293084;
            logo = '../img/mapIcons/alabama-state.png';
            clr = '216, 172, 17';
            break;
        case 'alabama-birmingham':
            name = 'Alabama-Birmingham Blazers';
            loc = 'Birmingham, AL';
            stadium = 'Bartow Arena';
            stadiumId = 'alabama-birmingham-bartow-arena';
            lat = 33.5022;
            lon = -86.8093;
            logo = '../img/mapIcons/default.png';
            clr = '30, 107, 82';
            break;
        case 'albany-ny':
            name = 'Albany Great Danes';
            loc = 'Albany, NY';
            stadium = 'SEFCU Arena';
            stadiumId = 'albany-ny-sefcu-arena';
            lat = 42.6816;
            lon = -73.8288;
            logo = '../img/mapIcons/default.png';
            clr = '81, 45, 109';
            break;
        case 'alcorn-state':
            name = 'Alcorn State Braves';
            loc = 'Alcorn State, MS';
            stadium = 'Davey Whitney Complex';
            stadiumId = 'alcorn-state-davey-whitney-complex';
            lat = 31.876092;
            lon = -91.140108;
            logo = '../img/mapIcons/default.png';
            clr = '82, 45, 110';
            break;
        case 'american':
            name = 'American Eagles';
            loc = 'Washington, DC';
            stadium = 'Bender Arena';
            stadiumId = 'american-bender-arena';
            lat = 38.937558;
            lon = -77.089411;
            logo = '../img/mapIcons/default.png';
            clr = '16, 6, 159';
            break;
        case 'appalachian-state':
            name = 'Appalachian State Mountaineers';
            loc = 'Boone, NC';
            stadium = 'George M. Holmes Convocation Center';
            stadiumId = 'appalachian-state-george-m-holmes-convocation-center';
            lat = 36.210868;
            lon = -81.675781;
            logo = '../img/mapIcons/default.png';
            clr = '0, 0, 0';
            break;
        case 'arizona-state':
            name = 'Arizona State Sun Devils';
            loc = 'Tempe, AZ';
            stadium = 'Wells Fargo Arena';
            stadiumId = 'arizona-state-wells-fargo-arena';
            lat = 33.424588;
            lon = -111.931053;
            logo = '../img/mapIcons/default.png';
            clr = '134, 31, 65';
            break;
        case 'arizona':
            name = 'Arizona Wildcats';
            loc = 'Tucson, AZ';
            stadium = 'McKale Center';
            stadiumId = 'arizona-mckale-center';
            lat = 32.230295;
            lon = -110.946011;
            logo = '../img/mapIcons/default.png';
            clr = '204, 0, 51';
            break;
        case 'arkansas':
            name = 'Arkansas Razorbacks';
            loc = 'Fayetteville, AR';
            stadium = 'Bud Walton Arena';
            stadiumId = 'arkansas-bud-walton-arena';
            lat = 36.061601;
            lon = -94.178143;
            logo = '../img/mapIcons/default.png';
            clr = '157, 34, 53';
            break;
        case 'arkansas-state':
            name = 'Arkansas State Red Wolves';
            loc = 'State University, AR';
            stadium = 'ASU Convocation Center';
            stadiumId = 'arkansas-state-asu-convocation-center';
            lat = 35.845439;
            lon = -90.670347;
            logo = '../img/mapIcons/default.png';
            clr = '204, 0, 51';
            break;
        case 'arkansas-little-rock':
            name = 'Arkansas-Little Rock Trojans';
            loc = 'Little Rock, AR';
            stadium = 'Jack Stephens Center';
            stadiumId = 'arkansas-little-rock-jack-stephens-center';
            lat = 34.728428;
            lon = -92.340498;
            logo = '../img/mapIcons/default.png';
            clr = '134, 0, 56';
            break;
        case 'arkansas-pine-bluff':
            name = 'Arkansas-Pine Bluff Golden Lions';
            loc = 'Pine Bluff, AR';
            stadium = 'K.L. Johnson complex';
            stadiumId = 'arkansas-pine-bluff-kl-johnson-complex';
            lat = 34.246026;
            lon = -92.024378;
            logo = '../img/mapIcons/default.png';
            clr = '238, 179, 16';
            break;
        case 'army':
            name = 'Army Black Knights';
            loc = 'West Point, NY';
            stadium = 'Christl Arena';
            stadiumId = 'army-christl-arena';
            lat = 41.391634;
            lon = -73.958648;
            logo = '../img/mapIcons/default.png';
            clr = '0, 0, 0';
            break;
        case 'auburn':
            name = 'Auburn Tigers';
            loc = 'Auburn, AL';
            stadium = 'Auburn Arena';
            stadiumId = 'auburn-auburn-arena';
            lat = 32.602753;
            lon = -85.492543;
            logo = '../img/mapIcons/default.png';
            clr = '3, 36, 77';
            break;
        case 'austin-peay':
            name = 'Austin Peay Governors';
            loc = 'Clarksville, TN';
            stadium = 'Dunn Center';
            stadiumId = 'austin-peay-dunn-center';
            lat = 36.536269;
            lon = -87.356506;
            logo = '../img/mapIcons/default.png';
            clr = '186, 12, 47';
            break;
        case 'ball-state':
            name = 'Ball State Cardinals';
            loc = 'Muncie, IN';
            stadium = 'Worthen Arena';
            stadiumId = 'ball-state-worthen-arena';
            lat = 40.207092;
            lon = -85.406215;
            logo = '../img/mapIcons/default.png';
            clr = '186, 12, 47';
            break;
        case 'baylor':
            name = 'Baylor Bears';
            loc = 'Waco, TX';
            stadium = 'Ferrell Center';
            stadiumId = 'baylor-ferrell-center';
            lat = 31.547969;
            lon = -97.105742;
            logo = '../img/mapIcons/default.png';
            clr = '0, 48, 21';
            break;
        case 'belmont':
            name = 'Belmont Bruins';
            loc = 'Nashville, TN';
            stadium = 'Curb Event Center';
            stadiumId = 'belmont-curb-event-center';
            lat = 36.132282;
            lon = -86.794581;
            logo = '../img/mapIcons/default.png';
            clr = '0, 32, 91';
            break;
        case 'bethune-cookman':
            name = 'Bethune-Cookman Wildcats';
            loc = 'Daytona Beach, FL';
            stadium = 'Moore Gymnasium';
            stadiumId = 'bethune-cookman-moore-gymnasium';
            lat = 29.21097;
            lon = -81.031019;
            logo = '../img/mapIcons/default.png';
            clr = '114, 37, 61';
            break;
        case 'binghamton':
            name = 'Binghamton Bearcats';
            loc = 'Binghamton, NY';
            stadium = 'Binghamton University Event Center';
            stadiumId = 'binghamton-binghamton-university-event-center';
            lat = 42.093331;
            lon = -75.971943;
            logo = '../img/mapIcons/default.png';
            clr = '0, 106, 77';
            break;
        case 'boise-state':
            name = 'Boise State Broncos';
            loc = 'Boise, ID';
            stadium = 'Taco Bell Arena';
            stadiumId = 'boise-state-taco-bell-arena';
            lat = 43.602818;
            lon = -116.198647;
            logo = '../img/mapIcons/default.png';
            clr = '0, 57, 166';
            break;
        case 'boston-college':
            name = 'Boston College Eagles';
            loc = 'Chestnut Hill, MA';
            stadium = 'Conte Forum';
            stadiumId = 'boston-college-conte-forum';
            lat = 42.995095;
            lon = -71.167641;
            logo = '../img/mapIcons/default.png';
            clr = '134, 38, 51';
            break;
        case 'boston-university':
            name = 'Boston Terriers';
            loc = 'Boston, MA';
            stadium = 'Case Gym';
            stadiumId = 'boston-university-case-gym';
            lat = 42.353937;
            lon = -71.120358;
            logo = '../img/mapIcons/default.png';
            clr = '204, 0, 0';
            break;
        case 'bowling-green-state':
            name = 'Bowling Green Falcons';
            loc = 'Bowling Green, OH';
            stadium = 'Stroh Center';
            stadiumId = 'bowling-green-state-stroh-center';
            lat = 41.375455;
            lon = -83.626213;
            logo = '../img/mapIcons/default.png';
            clr = '255, 124, 25';
            break;
        case 'bradley':
            name = 'Bradley Braves';
            loc = 'Peoria, IL';
            stadium = 'Renaissance Coliseum';
            stadiumId = 'bradley-renaissance-coliseum';
            lat = 40.699199;
            lon = -89.617807;
            logo = '../img/mapIcons/default.png';
            clr = '165, 0, 0';
            break;
        case 'brigham-young':
            name = 'Brigham Young Cougars';
            loc = 'Provo, UT';
            stadium = 'Marriott Center';
            stadiumId = 'brigham-young-marriott-center';
            lat = 40.254028;
            lon = -111.649292;
            logo = '../img/mapIcons/default.png';
            clr = '0, 46, 93';
            break;
        case 'brown':
            name = 'Brown Bears';
            loc = 'Providence, RI';
            stadium = 'Pizzitola Sports Center';
            stadiumId = 'brown-pizzitola-sports-center';
            lat = 41.8317;
            lon = -71.398088;
            logo = '../img/mapIcons/default.png';
            clr = '228, 0, 70';
            break;
        case 'bryant':
            name = 'Bryant Bulldogs';
            loc = 'Smithfield, RI';
            stadium = 'Chace Athletic Center';
            stadiumId = 'bryant-chace-athletic-center';
            lat = 41.921241;
            lon = -71.539533;
            logo = '../img/mapIcons/default.png';
            clr = '167, 150, 120';
            break;
        case 'bucknell':
            name = 'Bucknell Bison';
            loc = 'Lewisburg, PA';
            stadium = 'Sojka Pavilion';
            stadiumId = 'bucknell-sojka-pavilion';
            lat = 40.956897;
            lon = -76.886989;
            logo = '../img/mapIcons/default.png';
            clr = '0, 45, 114';
            break;
        case 'buffalo':
            name = 'Buffalo Bulls';
            loc = 'Buffalo, NY';
            stadium = 'University at Buffalo Alumni Arena';
            stadiumId = 'buffalo-university-at-buffalo-alumni-arena';
            lat = 43.000114;
            lon = -78.781162;
            logo = '../img/mapIcons/default.png';
            clr = '0, 87, 184';
            break;
        case 'butler':
            name = 'Butler Bulldogs';
            loc = 'Indianapolis, IN';
            stadium = 'Hinkle Fieldhouse';
            stadiumId = 'butler-hinkle-fieldhouse';
            lat = 39.843597;
            lon = -86.167303;
            logo = '../img/mapIcons/default.png';
            clr = '19, 41, 75';
            break;
        case 'cal-poly':
            name = 'Cal Poly Mustangs';
            loc = 'San Luis Obispo, CA';
            stadium = 'Mott Athletic Center';
            stadiumId = 'cal-poly-mott-athletic-center';
            lat = 35.298741;
            lon = -120.658773;
            logo = '../img/mapIcons/default.png';
            clr = '17, 87, 64';
            break;
        case 'cal-state-bakersfield':
            name = 'Cal State Bakersfield Roadrunners';
            loc = 'Bakersfield, CA';
            stadium = 'Icardo Center';
            stadiumId = 'cal-state-bakersfield-icardo-center';
            lat = 35.34756;
            lon = -119.102685;
            logo = '../img/mapIcons/default.png';
            clr = '0, 51, 160';
            break;
        case 'cal-state-fullerton':
            name = 'Cal State Fullerton Titans';
            loc = 'Fullerton, CA';
            stadium = 'Titan Gym';
            stadiumId = 'cal-state-fullerton-titan-gym';
            lat = 33.88315;
            lon = -117.88611;
            logo = '../img/mapIcons/default.png';
            clr = '0, 43, 84';
            break;
        case 'cal-state-northridge':
            name = 'Cal State Northridge Matadors';
            loc = 'Northridge, CA';
            stadium = 'Matadome';
            stadiumId = 'cal-state-northridge-matadome';
            lat = 34.24218;
            lon = -118.525896;
            logo = '../img/mapIcons/default.png';
            clr = '208, 13, 45';
            break;
        case 'campbell':
            name = 'Campbell Fighting Camels';
            loc = 'Buies Creek, NC';
            stadium = 'John W. Pope, Jr. Convocation Center';
            stadiumId = 'campbell-john-w-pope-jr-convocation-center';
            lat = 35.407849;
            lon = -78.73683;
            logo = '../img/mapIcons/default.png';
            clr = '232, 119, 34';
            break;
        case 'canisius':
            name = 'Canisius Golden Griffins';
            loc = 'Buffalo, NY';
            stadium = 'Koessler Athletic Center';
            stadiumId = 'canisius-koessler-athletic-center';
            lat = 42.920938;
            lon = -78.857553;
            logo = '../img/mapIcons/default.png';
            clr = '12, 35, 64';
            break;
        case 'central-arkansas':
            name = 'Central Arkansas Bears';
            loc = 'Conway, AR';
            stadium = 'Farris Center';
            stadiumId = 'central-arkansas-farris-center';
            lat = 35.081857;
            lon = -92.459501;
            logo = '../img/mapIcons/default.png';
            clr = '88, 44, 131';
            break;
        case 'central-connecticut-state':
            name = 'Central Connecticut State Blue Devils';
            loc = 'New Britain, CT';
            stadium = 'Detrick Gymnasium';
            stadiumId = 'central-connecticut-state-detrick-gymnasium';
            lat = 41.693158;
            lon = -72.764985;
            logo = '../img/mapIcons/default.png';
            clr = '0, 48, 135';
            break;
        case 'central-florida':
            name = 'Central Florida Knights';
            loc = 'Orlando, FL';
            stadium = 'CFE Arena';
            stadiumId = 'central-florida-cfe-arena';
            lat = 28.607439;
            lon = -81.197335;
            logo = '../img/mapIcons/default.png';
            clr = '0, 0, 0';
            break;
        case 'central-michigan':
            name = 'Central Michigan Chippewas';
            loc = 'Mount Pleasant, MI';
            stadium = 'McGuirk Arena';
            stadiumId = 'central-michigan-mcguirk-arena';
            lat = 43.581472;
            lon = -84.774056;
            logo = '../img/mapIcons/default.png';
            clr = '111, 38, 61';
            break;
        case 'charleston-southern':
            name = 'Charleston Southern Buccaneers';
            loc = 'Charleston, SC';
            stadium = 'CSU Field House';
            stadiumId = 'charleston-southern-csu-field-house';
            lat = 32.980817;
            lon = -80.067135;
            logo = '../img/mapIcons/default.png';
            clr = '0, 40, 85';
            break;
        case 'charlotte':
            name = 'Charlotte Fortyniners';
            loc = 'Charlotte, NC';
            stadium = 'Halton Arena';
            stadiumId = 'charlotte-halton-arena';
            lat = 35.30621;
            lon = -80.734438;
            logo = '../img/mapIcons/default.png';
            clr = '4, 106, 56';
            break;
        case 'chattanooga':
            name = 'Chattanooga Mocs';
            loc = 'Chattanooga, TN';
            stadium = 'McKenzie Arena';
            stadiumId = 'chattanooga-mckenzie-arena';
            lat = 35.08037;
            lon = -85.300915;
            logo = '../img/mapIcons/default.png';
            clr = '0, 40, 85';
            break;
        case 'chicago-state':
            name = 'Chicago State Cougars';
            loc = 'Chicago, IL';
            stadium = 'Jones Convocation Center';
            stadiumId = 'chicago-state-jones-convocation-center';
            lat = 41.716559;
            lon = -87.608431;
            logo = '../img/mapIcons/default.png';
            clr = '0, 103, 71';
            break;
        case 'cincinnati':
            name = 'Cincinnati Bearcats';
            loc = 'Cincinnati, OH';
            stadium = 'Fifth Third Arena';
            stadiumId = 'cincinnati-fifth-third-arena';
            lat = 39.131119;
            lon = -84.514116;
            logo = '../img/mapIcons/default.png';
            clr = '224, 1, 34';
            break;
        case 'citadel':
            name = 'Citadel Bulldogs';
            loc = 'Charleston, SC';
            stadium = 'McAlister Field House';
            stadiumId = 'citadel-mcalister-field-house';
            lat = 32.798525;
            lon = -79.962502;
            logo = '../img/mapIcons/default.png';
            clr = '72, 144, 205';
            break;
        case 'clemson':
            name = 'Clemson Tigers';
            loc = 'Clemson, SC';
            stadium = 'Littlejohn Coliseum';
            stadiumId = 'clemson-littlejohn-coliseum';
            lat = 34.680382;
            lon = -82.846459;
            logo = '../img/mapIcons/default.png';
            clr = '234, 106, 32';
            break;
        case 'cleveland-state':
            name = 'Cleveland State Vikings';
            loc = 'Cleveland, OH';
            stadium = 'Wolstein Center';
            stadiumId = 'cleveland-state-wolstein-center';
            lat = 41.499253;
            lon = -81.676925;
            logo = '../img/mapIcons/default.png';
            clr = '0, 106, 77';
            break;
        case 'coastal-carolina':
            name = 'Coastal Carolina Chanticleers';
            loc = 'Conway, SC';
            stadium = 'HTC Center';
            stadiumId = 'coastal-carolina-htc-center';
            lat = 33.799145;
            lon = -79.01559;
            logo = '../img/mapIcons/default.png';
            clr = '0, 111, 113';
            break;
        case 'colgate':
            name = 'Colgate Raiders';
            loc = 'Hamilton, NY';
            stadium = 'Cotterell Court';
            stadiumId = 'colgate-cotterell-court';
            lat = 42.81497;
            lon = -75.542742;
            logo = '../img/mapIcons/default.png';
            clr = '134, 38, 51';
            break;
        case 'college-of-charleston':
            name = 'College of Charleston Cougars';
            loc = 'Charleston, SC';
            stadium = 'TD Arena';
            stadiumId = 'college-of-charleston-td-arena';
            lat = 32.785434;
            lon = -79.934414;
            logo = '../img/mapIcons/default.png';
            clr = '102, 0, 0';
            break;
        case 'colorado':
            name = 'Colorado Buffaloes';
            loc = 'Boulder, CO';
            stadium = 'Coors Event Center';
            stadiumId = 'colorado-coors-event-center';
            lat = 40.004667;
            lon = -105.260591;
            logo = '../img/mapIcons/default.png';
            clr = '207, 184, 124';
            break;
        case 'colorado-state':
            name = 'Colorado State Rams';
            loc = 'Fort Collins, CO';
            stadium = 'Moby Arena';
            stadiumId = 'colorado-state-moby-arena';
            lat = 40.575661;
            lon = -105.093202;
            logo = '../img/mapIcons/default.png';
            clr = '40, 114, 79';
            break;
        case 'columbia':
            name = 'Columbia Lions';
            loc = 'New York, NY';
            stadium = 'Levien Gymnasium';
            stadiumId = 'columbia-levien-gymnasium';
            lat = 40.809788;
            lon = -73.961718;
            logo = '../img/mapIcons/default.png';
            clr = '196, 216, 226';
            break;
        case 'connecticut':
            name = 'Connecticut Huskies';
            loc = 'Storrs, CT';
            stadium = 'Harry A. Gampel Pavilion';
            stadiumId = 'connecticut-harry-a-gampel-pavilion';
            lat = 41.805294;
            lon = -72.254424;
            logo = '../img/mapIcons/default.png';
            clr = '0, 14, 47';
            break;
        case 'coppin-state':
            name = 'Coppin State Eagles';
            loc = 'Baltimore, MD';
            stadium = 'Physical Education Complex';
            stadiumId = 'coppin-state-physical-education-complex';
            lat = 39.315388;
            lon = -76.657428;
            logo = '../img/mapIcons/default.png';
            clr = '0, 20, 137';
            break;
        case 'cornell':
            name = 'Cornell Big Red';
            loc = 'Ithaca, NY';
            stadium = 'Newman Arena';
            stadiumId = 'cornell-newman-arena';
            lat = 42.445811;
            lon = -76.476414;
            logo = '../img/mapIcons/default.png';
            clr = '166, 25, 46';
            break;
        case 'creighton':
            name = 'Creighton Blue Jays';
            loc = 'Omaha, NE';
            stadium = 'CenturyLink Center Omaha';
            stadiumId = 'creighton-centurylink-center-omaha';
            lat = 41.26355;
            lon = -95.928012;
            logo = '../img/mapIcons/default.png';
            clr = '0, 84, 166';
            break;
        case 'gonzaga':
            name = 'Gonzaga Bulldogs';
            loc = 'Spokane, WA';
            stadium = 'McCarthey Athletic Center';
            stadiumId = 'gonzaga-mccarthey-athletic-center';
            lat = 47.665404;
            lon = -117.399202;
            logo = '../img/mapIcons/default.png';
            clr = '0';
            break;
        case 'indiana':
            name = 'Indiana Hoosiers';
            loc = 'Bloomington, IN';
            stadium = 'Assembly Hall';
            stadiumId = 'indiana-assembly-hall';
            lat = 39.180915;
            lon = -86.522304;
            logo = '../img/mapIcons/default.png';
            clr = '0';
            break;
        case 'iowa-state':
            name = 'Iowa State Cyclones';
            loc = 'Ames, IA';
            stadium = 'Hilton Coliseum';
            stadiumId = 'iowa-state-hilton-coliseum';
            lat = 42.021006;
            lon = -93.634822;
            logo = '../img/mapIcons/default.png';
            clr = '0';
            break;
        case 'kansas':
            name = 'Kansas Jayhawks';
            loc = 'Lawrence, KS';
            stadium = 'Allen Fieldhouse';
            stadiumId = 'kansas-allen-fieldhouse';
            lat = 38.954286;
            lon = -95.252705;
            logo = '../img/mapIcons/default.png';
            clr = '0';
            break;
        case 'maryland':
            name = 'Maryland Terrapins';
            loc = 'College Park, MD';
            stadium = 'Xfinity Center';
            stadiumId = 'maryland-xfinity-center';
            lat = 38.995653;
            lon = -76.941245;
            logo = '../img/mapIcons/default.png';
            clr = '224,58,62';
            break;
        case 'north-carolina':
            name = 'North Carolina Tar Heels';
            loc = 'Chapel Hill, NC';
            stadium = 'Dean Smith Center';
            stadiumId = 'north-carolina-dean-smith-center';
            lat = 35.899448;
            lon = -79.043978;
            logo = '../img/mapIcons/default.png';
            clr = '0';
            break;
        case 'notre-dame':
            name = 'Notre Dame Fighting Irish';
            loc = 'Notre Dame, IN';
            stadium = 'Joyce Center';
            stadiumId = 'notre-dame-joyce-center';
            lat = 41.698419;
            lon = -86.231319;
            logo = '../img/mapIcons/default.png';
            clr = '0';
            break;
        case 'syracuse':
            name = 'Syracuse Orange';
            loc = 'Syracuse, NY';
            stadium = 'Carrier Dome';
            stadiumId = 'syracuse-carrier-dome';
            lat = 43.036205;
            lon = -76.136355;
            logo = '../img/mapIcons/default.png';
            clr = '0';
            break;
        case 'virginia':
            name = 'Virginia Cavaliers';
            loc = 'Charlottesville, VA';
            stadium = 'John Paul Jones Arena';
            stadiumId = 'virginia-john-paul-jones-arena';
            lat = 38.045874;
            lon = -78.50665;
            logo = '../img/mapIcons/default.png';
            clr = '0';
            break;
        case 'wisconsin':
            name = 'Wisonsin Badgers';
            loc = 'Madison, WI';
            stadium = 'Kohl Center';
            stadiumId = 'wisconsin-kohl-center';
            lat = 43.069385;
            lon = -89.396613;
            logo = '../img/mapIcons/default.png';
            clr = '0';
            break;









        default:
            name = 'Default';
            loc = 'Default';
            lat = 40;
            lon = -98.5;
            sea = 0;
            logo = '../img/mapIcons/default.png';
            break;
    }

    var teamInfo = [
        name + '\n' + loc,
        new google.maps.LatLng(lat, lon),
        new google.maps.MarkerImage(logo, new google.maps.Size(42, 42), new google.maps.Point(0, 0), new google.maps.Point(21, 21)),
        stadiumId,
        clr,
        logo
    ];

    return teamInfo;
}