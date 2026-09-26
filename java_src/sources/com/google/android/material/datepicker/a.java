package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
final class a {
    private final ColorStateList backgroundColor;

    @NonNull
    private final Rect insets;
    private final com.google.android.material.shape.k itemShape;
    private final ColorStateList strokeColor;
    private final int strokeWidth;
    private final ColorStateList textColor;

    @NonNull
    static a a(@NonNull Context context, @StyleRes int i10) {
        Preconditions.b(i10 != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, d3.l.MaterialCalendarItem);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(d3.l.MaterialCalendarItem_android_insetLeft, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(d3.l.MaterialCalendarItem_android_insetTop, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(d3.l.MaterialCalendarItem_android_insetRight, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(d3.l.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList colorStateListA = com.google.android.material.resources.c.a(context, typedArrayObtainStyledAttributes, d3.l.MaterialCalendarItem_itemFillColor);
        ColorStateList colorStateListA2 = com.google.android.material.resources.c.a(context, typedArrayObtainStyledAttributes, d3.l.MaterialCalendarItem_itemTextColor);
        ColorStateList colorStateListA3 = com.google.android.material.resources.c.a(context, typedArrayObtainStyledAttributes, d3.l.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(d3.l.MaterialCalendarItem_itemStrokeWidth, 0);
        com.google.android.material.shape.k kVarM = com.google.android.material.shape.k.b(context, typedArrayObtainStyledAttributes.getResourceId(d3.l.MaterialCalendarItem_itemShapeAppearance, 0), typedArrayObtainStyledAttributes.getResourceId(d3.l.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).m();
        typedArrayObtainStyledAttributes.recycle();
        return new a(colorStateListA, colorStateListA2, colorStateListA3, dimensionPixelSize, kVarM, rect);
    }

    int b() {
        return this.insets.bottom;
    }

    int c() {
        return this.insets.top;
    }

    void d(@NonNull TextView textView) {
        com.google.android.material.shape.g gVar = new com.google.android.material.shape.g();
        com.google.android.material.shape.g gVar2 = new com.google.android.material.shape.g();
        gVar.setShapeAppearanceModel(this.itemShape);
        gVar2.setShapeAppearanceModel(this.itemShape);
        gVar.Z(this.backgroundColor);
        gVar.j0(this.strokeWidth, this.strokeColor);
        textView.setTextColor(this.textColor);
        RippleDrawable rippleDrawable = new RippleDrawable(this.textColor.withAlpha(30), gVar, gVar2);
        Rect rect = this.insets;
        ViewCompat.y0(textView, new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }

    private a(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i10, com.google.android.material.shape.k kVar, @NonNull Rect rect) {
        Preconditions.f(rect.left);
        Preconditions.f(rect.top);
        Preconditions.f(rect.right);
        Preconditions.f(rect.bottom);
        this.insets = rect;
        this.textColor = colorStateList2;
        this.backgroundColor = colorStateList;
        this.strokeColor = colorStateList3;
        this.strokeWidth = i10;
        this.itemShape = kVar;
    }
}
