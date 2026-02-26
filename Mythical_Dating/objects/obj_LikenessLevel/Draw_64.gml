var xOffSet = 25;
var yOffSet = 25;

var like_min = 0;
var like_max = 100;
var t = clamp((global.likeoMeter - like_min) / (like_max - like_min), 0, 1);

var w = sprite_get_width(spr_HeartMask);
var h = sprite_get_height(spr_HeartMask);

var fill_h = round(h * t);
var top_y  = h - fill_h;

if (!surface_exists(surf_heart) || surface_get_width(surf_heart) != w || surface_get_height(surf_heart) != h) {
    if (surface_exists(surf_heart)) surface_free(surf_heart);
    surf_heart = surface_create(w, h);
}

surface_set_target(surf_heart);
draw_clear_alpha(c_black, 0);

// draw fill
draw_set_alpha(1);
draw_set_color(c_red);
draw_rectangle(0, top_y, w, h, false);

// mask it using extended blending (dest_in equivalent)
gpu_set_blendmode_ext(bm_zero, bm_src_alpha);
draw_sprite(spr_HeartMask, 0, 0, 0);
gpu_set_blendmode(bm_normal);

surface_reset_target();

draw_surface_ext(surf_heart, xOffSet, yOffSet, 3, 3, 0, c_white, 1);
draw_sprite_ext(spr_HeartOutline, 0, xOffSet, yOffSet, 3, 3, 0, c_white, 1);


//Add text to tell player when full 
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(LikeMeterFont); 

draw_text(xOffSet, yOffSet + h * 3 + 10, "Couple is matched when full");