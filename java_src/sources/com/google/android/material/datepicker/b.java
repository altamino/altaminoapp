package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
final class b {

    @NonNull
    final a day;

    @NonNull
    final a invalidDay;

    @NonNull
    final Paint rangeFill;

    @NonNull
    final a selectedDay;

    @NonNull
    final a selectedYear;

    @NonNull
    final a todayDay;

    @NonNull
    final a todayYear;

    @NonNull
    final a year;

    b(@NonNull Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(com.google.android.material.resources.b.d(context, d3.b.materialCalendarStyle, f.class.getCanonicalName()), d3.l.MaterialCalendar);
        this.day = a.a(context, typedArrayObtainStyledAttributes.getResourceId(d3.l.MaterialCalendar_dayStyle, 0));
        this.invalidDay = a.a(context, typedArrayObtainStyledAttributes.getResourceId(d3.l.MaterialCalendar_dayInvalidStyle, 0));
        this.selectedDay = a.a(context, typedArrayObtainStyledAttributes.getResourceId(d3.l.MaterialCalendar_daySelectedStyle, 0));
        this.todayDay = a.a(context, typedArrayObtainStyledAttributes.getResourceId(d3.l.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList colorStateListA = com.google.android.material.resources.c.a(context, typedArrayObtainStyledAttributes, d3.l.MaterialCalendar_rangeFillColor);
        this.year = a.a(context, typedArrayObtainStyledAttributes.getResourceId(d3.l.MaterialCalendar_yearStyle, 0));
        this.selectedYear = a.a(context, typedArrayObtainStyledAttributes.getResourceId(d3.l.MaterialCalendar_yearSelectedStyle, 0));
        this.todayYear = a.a(context, typedArrayObtainStyledAttributes.getResourceId(d3.l.MaterialCalendar_yearTodayStyle, 0));
        Paint paint = new Paint();
        this.rangeFill = paint;
        paint.setColor(colorStateListA.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
