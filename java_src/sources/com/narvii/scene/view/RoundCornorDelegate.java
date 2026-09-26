package com.narvii.scene.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.view.View;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes9.dex */
public final class RoundCornorDelegate {

    @NotNull
    private Context context;
    private float cornerRadius;

    @NotNull
    private final m maskPaint$delegate;

    @NotNull
    private final m roundRectF$delegate;

    @NotNull
    private View view;

    @NotNull
    private final m zonePaint$delegate;

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final View getView() {
        return this.view;
    }

    public final void setContext(@NotNull Context context) {
        t.j(context, "<set-?>");
        this.context = context;
    }

    public final void setView(@NotNull View view) {
        t.j(view, "<set-?>");
        this.view = view;
    }

    private final Paint getMaskPaint() {
        return (Paint) this.maskPaint$delegate.getValue();
    }

    private final RectF getRoundRectF() {
        return (RectF) this.roundRectF$delegate.getValue();
    }

    private final Paint getZonePaint() {
        return (Paint) this.zonePaint$delegate.getValue();
    }

    public final void canvasSetLayer(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        canvas.saveLayer(getRoundRectF(), getZonePaint(), 31);
        RectF roundRectF = getRoundRectF();
        float f = this.cornerRadius;
        canvas.drawRoundRect(roundRectF, f, f, getZonePaint());
        canvas.saveLayer(getRoundRectF(), getMaskPaint(), 31);
    }

    public final void setCornerRadius(float f) {
        this.cornerRadius = f;
        this.view.invalidate();
    }

    public RoundCornorDelegate(@NotNull View view, @NotNull Context context) {
        t.j(view, "view");
        t.j(context, "context");
        this.view = view;
        this.context = context;
        this.roundRectF$delegate = o.a(RoundCornorDelegate$roundRectF$2.INSTANCE);
        this.maskPaint$delegate = o.a(RoundCornorDelegate$maskPaint$2.INSTANCE);
        this.zonePaint$delegate = o.a(RoundCornorDelegate$zonePaint$2.INSTANCE);
        this.cornerRadius = 20.0f;
        getMaskPaint().setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        getZonePaint().setAntiAlias(true);
        getZonePaint().setColor(-1);
    }

    public final void roundRectSet(int i10, int i11) {
        getRoundRectF().set(0.0f, 0.0f, i10, i11);
    }
}
