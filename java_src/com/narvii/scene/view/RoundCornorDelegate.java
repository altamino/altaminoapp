package com.narvii.scene.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.view.View;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: RoundCornorDelegate.kt */
/* loaded from: classes3.dex */
public final class RoundCornorDelegate {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RoundCornorDelegate.class), "roundRectF", "getRoundRectF()Landroid/graphics/RectF;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RoundCornorDelegate.class), "maskPaint", "getMaskPaint()Landroid/graphics/Paint;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RoundCornorDelegate.class), "zonePaint", "getZonePaint()Landroid/graphics/Paint;"))};
    private Context context;
    private float cornerRadius;
    private final Lazy maskPaint$delegate;
    private final Lazy roundRectF$delegate;
    private View view;
    private final Lazy zonePaint$delegate;

    private final Paint getMaskPaint() {
        Lazy lazy = this.maskPaint$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (Paint) lazy.getValue();
    }

    private final RectF getRoundRectF() {
        Lazy lazy = this.roundRectF$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (RectF) lazy.getValue();
    }

    private final Paint getZonePaint() {
        Lazy lazy = this.zonePaint$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (Paint) lazy.getValue();
    }

    public RoundCornorDelegate(View view, Context context) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.view = view;
        this.context = context;
        this.roundRectF$delegate = LazyKt__LazyJVMKt.lazy(new Function0<RectF>() { // from class: com.narvii.scene.view.RoundCornorDelegate$roundRectF$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final RectF invoke() {
                return new RectF();
            }
        });
        this.maskPaint$delegate = LazyKt__LazyJVMKt.lazy(new Function0<Paint>() { // from class: com.narvii.scene.view.RoundCornorDelegate$maskPaint$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Paint invoke() {
                return new Paint();
            }
        });
        this.zonePaint$delegate = LazyKt__LazyJVMKt.lazy(new Function0<Paint>() { // from class: com.narvii.scene.view.RoundCornorDelegate$zonePaint$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Paint invoke() {
                return new Paint();
            }
        });
        this.cornerRadius = 20.0f;
        getMaskPaint().setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        getZonePaint().setAntiAlias(true);
        getZonePaint().setColor(-1);
    }

    public final Context getContext() {
        return this.context;
    }

    public final View getView() {
        return this.view;
    }

    public final void setContext(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "<set-?>");
        this.context = context;
    }

    public final void setView(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.view = view;
    }

    public final void setCornerRadius(float f) {
        this.cornerRadius = f;
        this.view.invalidate();
    }

    public final void roundRectSet(int i, int i2) {
        getRoundRectF().set(0.0f, 0.0f, i, i2);
    }

    public final void canvasSetLayer(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        canvas.saveLayer(getRoundRectF(), getZonePaint(), 31);
        RectF roundRectF = getRoundRectF();
        float f = this.cornerRadius;
        canvas.drawRoundRect(roundRectF, f, f, getZonePaint());
        canvas.saveLayer(getRoundRectF(), getMaskPaint(), 31);
    }
}
