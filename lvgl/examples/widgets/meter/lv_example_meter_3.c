#include "../../lv_examples.h"
#if LV_USE_METER && LV_BUILD_EXAMPLES


static lv_obj_t * meter;

static void set_value(void * indic, int32_t v)
{
    lv_meter_set_indicator_end_value(meter, indic, v);
}

/**
 * A clock from a meter
 */
void lv_example_meter_3(void)
{
    meter = lv_meter_create(lv_scr_act());
    lv_obj_set_size(meter, 240, 240);
    lv_obj_center(meter);

    /*Create a scale for the minutes*/
    /*61 ticks in a 360 degrees range (the last and the first line overlaps)*/
    lv_meter_scale_t * scale_sec = lv_meter_add_scale(meter);
    //lv_meter_set_scale_ticks(meter, scale_sec, 61, 2, 10, lv_palette_main(LV_PALETTE_GREY));
    lv_meter_set_scale_ticks(meter, scale_sec, 61, 0, 0, lv_palette_main(LV_PALETTE_GREY));
    lv_meter_set_scale_range(meter, scale_sec, 0, 360, 360, 270);

    /*Create another scale for the min. It's only visual and contains only major ticks*/
    lv_meter_scale_t * scale_min = lv_meter_add_scale(meter);
    //lv_meter_set_scale_ticks(meter, scale_min, 61, 5, 20, lv_palette_main(LV_PALETTE_TEAL));               /*12 ticks*/
    lv_meter_set_scale_ticks(meter, scale_min, 61, 0, 0, lv_palette_main(LV_PALETTE_GREY));
    lv_meter_set_scale_range(meter, scale_min, 0, 360, 360, 240);       /*[1..12] values in an almost full circle*/

    /*Create another scale for the hour. It's only visual and contains only major ticks*/
    lv_meter_scale_t * scale_hour = lv_meter_add_scale(meter);
    //lv_meter_set_scale_ticks(meter, scale_min, 61, 5, 20, lv_palette_main(LV_PALETTE_TEAL));               /*12 ticks*/
    //lv_meter_set_scale_ticks(meter, scale_hour, 13, 5, 20, lv_palette_main(LV_PALETTE_TEAL));
    lv_meter_set_scale_ticks(meter, scale_hour, 13, 0, 0, lv_palette_main(LV_PALETTE_TEAL));
    lv_meter_set_scale_range(meter, scale_hour, 0, 360, 360, 300);       /*[1..12] values in an almost full circle*/

    LV_IMG_DECLARE(hour_hand);
    lv_meter_indicator_t * indic_hour = lv_meter_add_needle_img(meter, scale_hour, &hour_hand, 0, 6);

    LV_IMG_DECLARE(min_hand);
    lv_meter_indicator_t * indic_min = lv_meter_add_needle_img(meter, scale_min, &min_hand, 0, 6);

    LV_IMG_DECLARE(sec_hand);

    /*Add a the hands from images*/
    lv_meter_indicator_t * indic_sec = lv_meter_add_needle_img(meter, scale_sec, &sec_hand, 27, 5);


    LV_IMG_DECLARE(dial);
    lv_obj_set_style_bg_img_src(meter, &dial, LV_PART_MAIN | LV_STATE_DEFAULT);
    /*Create an animation to set the value*/
    lv_anim_t a;
    lv_anim_init(&a);
    lv_anim_set_exec_cb(&a, set_value);
    lv_anim_set_values(&a, 0, 360);
    lv_anim_set_repeat_count(&a, LV_ANIM_REPEAT_INFINITE);
    lv_anim_set_time(&a, 60000);     /*2 sec for 1 turn of the minute hand (1 hour)*/
    lv_anim_set_var(&a, indic_sec);
    lv_anim_start(&a);

    lv_anim_set_var(&a, indic_min);
    lv_anim_set_repeat_count(&a, LV_ANIM_REPEAT_INFINITE);
    lv_anim_set_time(&a, 3600000);    /*360 sec for 1 turn of the hour hand*/
    lv_anim_set_values(&a, 0, 360);
    lv_anim_start(&a);

    lv_anim_set_var(&a, indic_hour);
    lv_anim_set_repeat_count(&a, LV_ANIM_REPEAT_INFINITE);
    lv_anim_set_time(&a, 43200000);    /*360 sec for 1 turn of the hour hand*/
    lv_anim_set_values(&a, 0, 360);
    lv_anim_start(&a);
}

#endif
