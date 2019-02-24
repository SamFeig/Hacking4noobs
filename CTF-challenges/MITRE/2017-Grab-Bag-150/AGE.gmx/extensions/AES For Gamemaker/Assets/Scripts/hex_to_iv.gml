//Converts a hex string to the iv grid
if (string_length(argument0)!=32) {show_error("Hex string in 'hex_to_iv' not correct length",0);return 0;}
str = argument0;
i = 1;
for (xx = 0; xx < global.stateWidth; xx += 1)
{
    for (yy = 0; yy < global.stateHeight; yy += 1)
    {
        ds_grid_set(global.iv,xx,yy,hex_to_dec(string_copy(str,i,2)));
        i += 2;
    }
}
return 1;

