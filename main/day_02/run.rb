require_relative 'lib'

def day_one
  test = %w(
    DULUDRDDDRLUDURUUULRRRURDRDULRUDDUDRULUDDUDRLDULRRLRDRUDUUULUUDLRURDUDDDDRDLLLLULRDLDRDLRLULRUURDDUULUDLRURRDDRDDRDDLDRDLLUURDRUULRRURURRDLRLLLUDULULULULUDRLLRUDUURLDRLRLRDRRDRLLLDURRDULDURDDRLURRDURLRRRLDLLLDRUUURLRDLDLLLLRDURRLDLULRLDDLDLURLRRDDRUDDUULRURRUDLRDLDUURDDDDRLRURUDULUDLRRLLLLLRDRURLLDLDULUUDLUDDDRLLDRRUDLLURRUUDDRRLLRRLDDDURLDRDRLURRRRDRRRDDUDULULDURRUUURRRDULUUUDDRULDRLLRDLDURLURRLLRUUUULRDURLLDDRLLDLRLRULUUDRURUDLLURUDDRDURLRDRRRDURLDDRDRLRLLURULUUULUDDDULDLRDDDRDLLRRLDRDULLUUUDLDDLDDDLLLLLLLDUDURURDURDRUURRRDDRDUDLULDURDUDURDDDRULDURURURRLURLURLUURLULDLLRUULURDDRLRDDLRDLRRR
    LUURLRUDRRUDLLDLUDDURULURLUUDUUDDRLUULRDUDDUULDUUDRURDDRRDRLULLRDRDLRLLUURRUULRLDRULUDLDUUDDDRDDLRDLULDRLDUULDLRDLLLDLDLRDUULUDURRULLRLDUDRLLLULUUUULUUDUUURRRDULLUURUDRRLDURRUULDRDULDUDRDUUULUUDDRLUDRLDLDRUUURDLDUDRUDUURLLRRLRLLRRLDULDDULUDUUURULDDUDUDRURRDLULRUDDURDLDLLRRRLDRLULLLRUULDUDLUUDURRLLLRLUDURRDDLDRDDDLURDLDRRUDUDLUDULULRUUUDLUURLLRLDDLURULDURDLRRDDDDURLDDLLDDULLLRLDLDULDUUDDRLDUURDDLDLUUDULRRLRLUURURUURLRLURUURLDRUURLLRDDUUUDULUDDDRDRLDRDRRLRLDULLRRUDLURULULRDRURURLULDUDLRURLRDDRULDDLRD
    LUDRULUULRRDDDDRRDUURUDDRLDDLDRDURRURULRDLDLDUUDRRDUUDUDLLLRRLDUDDRLDDLRRLRDRLUDLULUDDUUDULDUUULUDLDDURLDURUDLDRUUDRLRRLDLDDULDUUDDLDDLLURDRLRUURDDRUDDUDLDRRLRUDRUULRRRLRULULURDLRRURDRLRULDDDRDUULLURUUUURUDDLRRRRRDURLULDLUULUDRRUDUDRRDDRURDURLRLUDDLDLRRULUDLDDRLDDLDDDLLLLRDLLUULDDLULDLDRDDUDLURUDLDLDDRRUUDDDLRLLLDRRDDDUURDUDURUURRDRLLDUDLDUULLDLDLLUULLRRULDLDRURLDULDRUURDURRURDLRDLLLDRRUDRUUDRURLUDDRURLDURRDLUUDLUUDULLLDDDDRRDLLLDLURULDDRDLUUURRDRRUUDDUL
    DUUULDUDDDURLLULDDLLUDURLLLURULULURUURDRURLRULLLLDRDDULRRDRRLLLRDDDUULLRRURRULLDDURRRLRDDLULDULLDUDLURRDLDDLURDLRLLDRURLLRLLRRRDRRRURURUUDDLLDDLDDDLRLURUUUULRDLUDDDURLLDDRLDRRLLUDUUULRLLDRRRLRUUDLDUULRLUDRULLLLDUDLLUUDDRUURLURUDRDDDLRURUDRLULLULUUDLDURDULRRDRLDURUULRDRRRDRDRRLRLRDDUULLRDLDURDDDULURRLULDDURDURDDUDURDLLUUULUDULRDDLDRDRUDLLUURDLRDURURULURULLDRLLRRULDLULULDLULRURLRRLUDLLLRLUDLURLULDULDRLLLDLDDDDRDRLRRLRDULUUDULDDLDURDLLLDDDDLLUURRDURLDLUDDLULRUUUDDRRLDLLLRDLLDRRRDDLULLURDDRRRRLDLRLLLRL
    LULLRRDURRLDUUDRRURLURURRRLRDRUULUULURLLURRDRULRDURDDDDUULLLLDUULDLULURDRLDLULULDRLLDLLRLRULURUDRUUDULRULLLUDRULUDRLLUDLDRRDRUUURURLRDURDRLRDDDURLURRDLRUUUDUURULULDLUULRDLRRRDRDRLLLDLRRDRLLDDULDRUDRRLULLRDLDUDDULRDDLULRURULRLLLULDLLLLRDLDRURUDUURURLDRLUULLDUDULUDDDULUDLRUDDUDLULLUULUUURULURRULRDDURDDLURLRRDRDLDULRLRDRRRULRDDDRLLDDDDRRRRDRDLULUURDURULDLRDULDUDLDURUDLUDLUDDDUDURDURDDURLLRUDUURRRUDRRRRULLLLDDDLUULLUULRRRULDLURDLULRULDRLR
    )
  ct = CodeTranslator.new
  puts ct.translate(test, 0)
end

def day_two
  test = %w(
    DULUDRDDDRLUDURUUULRRRURDRDULRUDDUDRULUDDUDRLDULRRLRDRUDUUULUUDLRURDUDDDDRDLLLLULRDLDRDLRLULRUURDDUULUDLRURRDDRDDRDDLDRDLLUURDRUULRRURURRDLRLLLUDULULULULUDRLLRUDUURLDRLRLRDRRDRLLLDURRDULDURDDRLURRDURLRRRLDLLLDRUUURLRDLDLLLLRDURRLDLULRLDDLDLURLRRDDRUDDUULRURRUDLRDLDUURDDDDRLRURUDULUDLRRLLLLLRDRURLLDLDULUUDLUDDDRLLDRRUDLLURRUUDDRRLLRRLDDDURLDRDRLURRRRDRRRDDUDULULDURRUUURRRDULUUUDDRULDRLLRDLDURLURRLLRUUUULRDURLLDDRLLDLRLRULUUDRURUDLLURUDDRDURLRDRRRDURLDDRDRLRLLURULUUULUDDDULDLRDDDRDLLRRLDRDULLUUUDLDDLDDDLLLLLLLDUDURURDURDRUURRRDDRDUDLULDURDUDURDDDRULDURURURRLURLURLUURLULDLLRUULURDDRLRDDLRDLRRR
    LUURLRUDRRUDLLDLUDDURULURLUUDUUDDRLUULRDUDDUULDUUDRURDDRRDRLULLRDRDLRLLUURRUULRLDRULUDLDUUDDDRDDLRDLULDRLDUULDLRDLLLDLDLRDUULUDURRULLRLDUDRLLLULUUUULUUDUUURRRDULLUURUDRRLDURRUULDRDULDUDRDUUULUUDDRLUDRLDLDRUUURDLDUDRUDUURLLRRLRLLRRLDULDDULUDUUURULDDUDUDRURRDLULRUDDURDLDLLRRRLDRLULLLRUULDUDLUUDURRLLLRLUDURRDDLDRDDDLURDLDRRUDUDLUDULULRUUUDLUURLLRLDDLURULDURDLRRDDDDURLDDLLDDULLLRLDLDULDUUDDRLDUURDDLDLUUDULRRLRLUURURUURLRLURUURLDRUURLLRDDUUUDULUDDDRDRLDRDRRLRLDULLRRUDLURULULRDRURURLULDUDLRURLRDDRULDDLRD
    LUDRULUULRRDDDDRRDUURUDDRLDDLDRDURRURULRDLDLDUUDRRDUUDUDLLLRRLDUDDRLDDLRRLRDRLUDLULUDDUUDULDUUULUDLDDURLDURUDLDRUUDRLRRLDLDDULDUUDDLDDLLURDRLRUURDDRUDDUDLDRRLRUDRUULRRRLRULULURDLRRURDRLRULDDDRDUULLURUUUURUDDLRRRRRDURLULDLUULUDRRUDUDRRDDRURDURLRLUDDLDLRRULUDLDDRLDDLDDDLLLLRDLLUULDDLULDLDRDDUDLURUDLDLDDRRUUDDDLRLLLDRRDDDUURDUDURUURRDRLLDUDLDUULLDLDLLUULLRRULDLDRURLDULDRUURDURRURDLRDLLLDRRUDRUUDRURLUDDRURLDURRDLUUDLUUDULLLDDDDRRDLLLDLURULDDRDLUUURRDRRUUDDUL
    DUUULDUDDDURLLULDDLLUDURLLLURULULURUURDRURLRULLLLDRDDULRRDRRLLLRDDDUULLRRURRULLDDURRRLRDDLULDULLDUDLURRDLDDLURDLRLLDRURLLRLLRRRDRRRURURUUDDLLDDLDDDLRLURUUUULRDLUDDDURLLDDRLDRRLLUDUUULRLLDRRRLRUUDLDUULRLUDRULLLLDUDLLUUDDRUURLURUDRDDDLRURUDRLULLULUUDLDURDULRRDRLDURUULRDRRRDRDRRLRLRDDUULLRDLDURDDDULURRLULDDURDURDDUDURDLLUUULUDULRDDLDRDRUDLLUURDLRDURURULURULLDRLLRRULDLULULDLULRURLRRLUDLLLRLUDLURLULDULDRLLLDLDDDDRDRLRRLRDULUUDULDDLDURDLLLDDDDLLUURRDURLDLUDDLULRUUUDDRRLDLLLRDLLDRRRDDLULLURDDRRRRLDLRLLLRL
    LULLRRDURRLDUUDRRURLURURRRLRDRUULUULURLLURRDRULRDURDDDDUULLLLDUULDLULURDRLDLULULDRLLDLLRLRULURUDRUUDULRULLLUDRULUDRLLUDLDRRDRUUURURLRDURDRLRDDDURLURRDLRUUUDUURULULDLUULRDLRRRDRDRLLLDLRRDRLLDDULDRUDRRLULLRDLDUDDULRDDLULRURULRLLLULDLLLLRDLDRURUDUURURLDRLUULLDUDULUDDDULUDLRUDDUDLULLUULUUURULURRULRDDURDDLURLRRDRDLDULRLRDRRRULRDDDRLLDDDDRRRRDRDLULUURDURULDLRDULDUDLDURUDLUDLUDDDUDURDURDDURLLRUDUURRRUDRRRRULLLLDDDLUULLUULRRRULDLURDLULRULDRLR
    )
  ct = CodeTranslator.new
  puts ct.translate(test, 1)
end

day_one
day_two