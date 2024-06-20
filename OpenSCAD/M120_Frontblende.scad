blende = true;
schrift = true;

dicke_platte = 0.9;
dicke_schrift = 0.4;
eps = 0.01;

// Verschiebung
x = -100;
y = 100;

if(! is_undef(blende))
{
    color([ 0, 0, 0])
    translate([ x, y, 0])
    linear_extrude( height=dicke_platte, convexity = 10)
    import( "../DXF/M120_Frontblende-F_Cu.dxf");
}

if(! is_undef(schrift))
{
    color([ 1, 1, 1])
    translate([ x, y, dicke_platte-eps])
    linear_extrude( height=dicke_schrift, convexity = 10)
    import( "../DXF/M120_Frontblende-F_Silkscreen.dxf");
}
