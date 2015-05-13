// Roads & Railways //

@case: #555;
@case-width: 0.8;

@motorway: #e8b0b0 * 0.8;
@main: #d8b8b0 * 0.8;
@street: #fff;

#road,
#tunnel,
#bridge {
  // This section just sets up the ordering of the attachments
  ::mask { opacity: 1; }
  ::case { opacity: 1; }
  ::fill { opacity: 1; }
  ::path { opacity: 1; }
}

#road,
#tunnel,
#bridge {
  [class='motorway']['mapnik::geometry_type'=2], {
    ::case[zoom>=6] {
      line-color: @case;
      [zoom<=9] { line-color: @motorway; }
      #road { line-cap: round; }
      #tunnel { line-dasharray: 3,3; }
      line-width: 0.6 * @case-width;
      [zoom>= 8] { line-width: 0.8 * @case-width; }
      [zoom>=10] { line-width: 2.8 * @case-width; }
      [zoom>=11] { line-width: 3 * @case-width; }
      [zoom>=12] { line-width: 4 * @case-width; }
      [zoom>=13] { line-width: 5 * @case-width; }
      [zoom>=14] { line-width: 6.5 * @case-width; }
      [zoom>=15] { line-width: 9 * @case-width; }
      [zoom>=16] { line-width: 12 * @case-width; }
      [zoom>=17] { line-width: 15 * @case-width; }
      [zoom>=18] { line-width: 17 * @case-width; }
    }
    ::fill[zoom>=10] {
      line-color: @motorway;
      line-cap: round;
      #tunnel { line-color: mix(@motorway,@land,50); }
      [zoom>=11] { line-width: 1.2; }
      [zoom>=12] { line-width: 2; }
      [zoom>=13] { line-width: 3; }
      [zoom>=14] { line-width: 4; }
      [zoom>=15] { line-width: 6; }
      [zoom>=16] { line-width: 9; }
      [zoom>=17] { line-width: 12; }
      [zoom>=18] { line-width: 14; }
    }
  }
  [class='motorway_link']['mapnik::geometry_type'=2], {
    ::case {
      line-color: @case;
      #road { line-cap: round; }
      #tunnel { line-dasharray: 3,3; }
      [zoom>=12] { line-width: 2.8 * @case-width; }
      [zoom>=14] { line-width: 3.5 * @case-width; }
      [zoom>=16] { line-width: 5 * @case-width; }
      [zoom>=18] { line-width: 6 * @case-width; }
    }
    ::fill[zoom>=10] {
      line-color: @motorway;
      line-cap: round;
      #tunnel { line-color: mix(@motorway,@land,50); }
      [zoom>=12] { line-width: 1.2; }
      [zoom>=14] { line-width: 2; }
      [zoom>=16] { line-width: 3; }
      [zoom>=18] { line-width: 4; }
    }
  }
  [class='main']['mapnik::geometry_type'=2] {
    ::case[zoom>=6] {
      line-color: @case;
      [zoom<=11] { line-color: @main; }
      #road { line-cap: round; }
      #tunnel { line-dasharray: 3,3; }
      line-width: 0.4 * @case-width;
      [zoom>=12] { line-width: 3 * @case-width; }
      [zoom>=13] { line-width: 3.5 * @case-width; }
      [zoom>=14] { line-width: 4 * @case-width; }
      [zoom>=15] { line-width: 5.5 * @case-width; }
      [zoom>=16] { line-width: 9 * @case-width; }
      [zoom>=17] { line-width: 13 * @case-width; }
      [zoom>=18] { line-width: 15 * @case-width; }
    }
    ::fill[zoom>=6] {
      line-color: @main;
      line-cap: round;
      #tunnel { line-color: mix(@main,@land,50); }
      [zoom>=12] { line-width: 1; }
      [zoom>=13] { line-width: 1.5; }
      [zoom>=14] { line-width: 2; }
      [zoom>=15] { line-width: 3; }
      [zoom>=16] { line-width: 6; }
      [zoom>=17] { line-width: 10; }
      [zoom>=18] { line-width: 12; }
    }
  }
  [class='street']['mapnik::geometry_type'=2],
  [class='street_limited']['mapnik::geometry_type'=2] {
    ::case[zoom>=12] {
      line-color: @case;
      line-opacity: 0.4;
      #road { line-cap: round; }
      #tunnel { line-dasharray: 3,3; }
      [zoom>=13] { line-width: 4 * @case-width; }
      [zoom>=14] { line-width: 4 * @case-width; }
      [zoom>=15] { line-width: 5 * @case-width; }
      [zoom>=16] { line-width: 7 * @case-width; }
      [zoom>=17] { line-width: 9 * @case-width; }
      [zoom>=18] { line-width: 11 * @case-width; }
    }
    ::fill[zoom>=13] {
      line-color: @street;
      #road { line-cap: round; }
      #tunnel { line-color: mix(@street,@land,50); }
      [class='street_limited'] { line-dasharray: 6,1; }
      [zoom>=13] { line-width: 1.2; }
      [zoom>=14] { line-width: 1.6; }
      [zoom>=15] { line-width: 2.5; }
      [zoom>=16] { line-width: 4; }
      [zoom>=17] { line-width: 6; }
      [zoom>=18] { line-width: 8; }
    }
  }
  [class='service']['mapnik::geometry_type'=2] {
    ::case[zoom>=13] {
      line-color: @case;
      line-opacity: 0.4;
      #road { line-cap: round; }
      #tunnel { line-dasharray: 3,3; }
      [zoom=13] { line-opacity: 0.5; }
      [zoom>=14] { line-width: 3 * @case-width; }
      [zoom>=15] { line-width: 3.5 * @case-width; }
      [zoom>=16] { line-width: 4 * @case-width; }
      [zoom>=17] { line-width: 5 * @case-width; }
      [zoom>=18] { line-width: 6 * @case-width; }
    }
    ::fill[zoom>=13] {
      line-color: @street;
      #road { line-cap: round; }
      #tunnel { line-color: mix(@street,@land,50); }
      [zoom>=14] { line-width: 1; }
      [zoom>=15] { line-width: 1.5; }
      [zoom>=16] { line-width: 2; }
      [zoom>=17] { line-width: 3; }
      [zoom>=18] { line-width: 4; }
    }
  }
  [class='major_rail'] {
    line-width: 0.8;
    line-color: #c8c4c0;
    hatch/line-width: 3;
    hatch/line-color: #c8c4c0;
    hatch/line-dasharray: 1,15;
  }
}

#bridge[class='aerialway'][zoom>=13] {
  ::case {
    line-color: white;
    line-opacity: 0.5;
    line-width: 2;
    [zoom=14] { line-width: 2.5  * @case-width; }
    [zoom=15] { line-width: 3  * @case-width; }
    [zoom=16] { line-width: 3.5 * @case-width; }
    [zoom=17] { line-width: 4 * @case-width; }
    [zoom>17] { line-width: 5 * @case-width; }
  }
  ::line {
    line-color: #876;
    line-width: 0.8;
    [zoom>=14] { line-width: 1.4; }
    [zoom>=15] { line-width: 1.6; }
    [zoom>=16] { line-width: 2; }
    [zoom>=17] { line-width: 2.4; }
    [zoom>=18] { line-width: 3; }
  }
  ::pattern {
    line-clip: false;
    line-color: #876;
    line-width: 4;
    line-dasharray: 0.8, 10;
    [zoom=14] { line-width: 6; }
    [zoom=15] { line-width: 8; }
    [zoom=16] { line-width: 10; }
    [zoom=17] { line-width: 12; }
    [zoom>17] { line-width: 14; }
    [zoom=14] { line-dasharray: 1.4, 22; }
    [zoom=15] { line-dasharray: 1.6, 35; }
    [zoom=16] { line-dasharray: 2, 50; }
    [zoom=17] { line-dasharray: 2.4, 65; }
    [zoom>17] { line-dasharray: 3, 80; }
  }
}

#bridge[class='golf'][zoom>=16] {
  // golf hole ways are only in the bridge layer 
  // to keep them above everything else
  ::case {
    line-color: green;
    line-opacity: 0.25;
    line-width: 1.6;
    [zoom>=17] { line-width: 2.2; }
    [zoom>=18] { line-width: 3; }
  }
  ::fill {
    line-color: #666;
    line-width: 0.6;
    [zoom>=17] { line-width: 1; }
    [zoom>=18] { line-width: 1.2; }
  }
}

/*
 * Path styling
 */
#road,
#tunnel,
#bridge {
  [class='path'][type!='steps'] {
    #bridge::mask[zoom>=16] {
      line-color: #8f8880;
      line-width: 6;
    }
    /*::case[zoom>=13]['mapnik::geometry_type'=2] {
      line-color: #ffd;
      line-opacity: 0.5;
      #bridge { line-opacity: 1; }
      line-join: round;
      line-width: 1;
      [type='cycleway'],
      [type='mtb'] {
        line-color: #ce9;
      }
      [type='piste'] { line-color: #cce; }
      [zoom>=14] { line-width: 2; }
      [zoom>=15] { line-width: 3; }
      [zoom>=16] { line-width: 4; }
    }*/
    [zoom>=14]['mapnik::geometry_type'=2] {
      line-join: round;
      line-width: 1.5;
      [type='footway'] {
        line-color: #c97;
      }
      [type='path'] {
        line-color: #c97;
      }
      [type='hiking'] {
        line-color: #c97;
      }
      [type='trail'] {
        line-color: #c97;
      }
      [type='track'] {
        line-color: #c97;
      }
      [type='cycleway'] {
        line-color: #488;
      }
      [type='mtb'] {
        line-color: #488;
      }
      [type='piste'] {
        line-color: #87b;
      }
      [type='other'] {
        line-color: #bba;
      }
      [zoom>=15] { 
        line-dasharray: 6,2;
        line-width: 2;
      }
      [zoom>=16] { line-width: 2; }
      [type='piste'][zoom>=15] { line-width: 3; }
      [type='piste'][zoom>=16] { line-width: 3.2; }
    }
  }
  [class='path'][type='steps'][zoom>=16] {
    ::case {
      line-color: #ffd;
      line-opacity: 0.5;
      line-join: round;
      line-width: 6;
    }
    ::fill {
      line-color: #bba;
      line-width: 4;
      line-dasharray: 2,1;
    }
  }
}

/**/