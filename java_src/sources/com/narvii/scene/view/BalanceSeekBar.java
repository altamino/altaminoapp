package com.narvii.scene.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes2.dex */
public final class BalanceSeekBar extends View {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int HORIZONTAL = 1;
    public static final int VERTICAL = 2;

    @NotNull
    private final Paint bgPaint;

    @NotNull
    private final m bgRectF$delegate;

    @NotNull
    private final Paint contentPaint;

    @NotNull
    private final m contentRectF$delegate;
    private int h;

    @NotNull
    private final Paint indicatorPaint;
    private int indicatorW;

    @Nullable
    private OnSeekListener onSeekListener;
    private int orientation;
    private float seekLocation;
    private int seekRegionH;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f2703w;

    public static final class Companion {

        @Retention(RetentionPolicy.SOURCE)
        public @interface Orientation {
        }

        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public interface OnSeekListener {
        void onSeek(float f);

        void onSeekFinish(float f);
    }

    public BalanceSeekBar(@Nullable Context context) {
        super(context);
        this.bgRectF$delegate = o.a(BalanceSeekBar$bgRectF$2.INSTANCE);
        this.contentRectF$delegate = o.a(BalanceSeekBar$contentRectF$2.INSTANCE);
        Paint paint = new Paint();
        this.bgPaint = paint;
        Paint paint2 = new Paint();
        this.contentPaint = paint2;
        Paint paint3 = new Paint();
        this.indicatorPaint = paint3;
        this.seekRegionH = BalanceSeekBarKt.toPx(6);
        this.indicatorW = BalanceSeekBarKt.toPx(4);
        this.orientation = 1;
        int color = ContextCompat.getColor(getContext(), R.color.media_audio_seek_bar_bg_color);
        Paint.Style style = Paint.Style.FILL;
        initPaint(paint, color, style, 0.0f);
        initPaint(paint2, ContextCompat.getColor(getContext(), R.color.media_audio_seek_bar_content_color), style, 0.0f);
        initPaint(paint3, ContextCompat.getColor(getContext(), android.R.color.white), style, 0.0f);
    }

    private static /* synthetic */ void getOrientation$annotations() {
    }

    public final void setOnSeekListener(@NotNull OnSeekListener listener) {
        t.j(listener, "listener");
        this.onSeekListener = listener;
    }

    private final float correctSeekPercent(float f) {
        if (f > 1.0f) {
            f = 1.0f;
        }
        return Utils.isRtl() ? 1 - f : f;
    }

    private final void drawBackground(Canvas canvas) {
        float f = 2;
        float f6 = this.seekRegionH / f;
        RectF bgRectF = getBgRectF();
        int i10 = this.h;
        int i11 = this.seekRegionH;
        bgRectF.set(0.0f, (i10 - i11) / f, this.f2703w, (i10 + i11) / f);
        if (canvas != null) {
            canvas.drawRoundRect(getBgRectF(), f6, f6, this.bgPaint);
        }
    }

    private final void drawContent(Canvas canvas) {
        float f;
        float f6 = 2;
        float f7 = this.seekRegionH / f6;
        int i10 = this.f2703w;
        float f10 = i10 / f6;
        float f11 = this.seekLocation;
        if (f10 > f11) {
            f = i10 / f6;
        } else {
            f11 = i10 / f6;
            f = f11;
        }
        RectF contentRectF = getContentRectF();
        int i11 = this.h;
        int i12 = this.seekRegionH;
        contentRectF.set(f11, (i11 - i12) / f6, f, (i11 + i12) / f6);
        if (canvas != null) {
            canvas.drawRoundRect(getContentRectF(), f7, f7, this.contentPaint);
        }
    }

    private final void drawIndicator(Canvas canvas) {
        float f = this.seekLocation;
        int i10 = this.indicatorW;
        float f6 = f - (i10 / 2);
        float f7 = f + (i10 / 2);
        float px = BalanceSeekBarKt.toPx(2);
        if (f6 < 0.0f) {
            f7 = this.indicatorW + 0.0f;
            f6 = 0.0f;
        }
        int i11 = this.f2703w;
        if (f7 > i11) {
            f7 = i11;
            f6 = f7 - this.indicatorW;
        }
        if (canvas != null) {
            canvas.drawRoundRect(new RectF(f6, 0.0f, f7, this.h), px, px, this.indicatorPaint);
        }
    }

    private final RectF getBgRectF() {
        return (RectF) this.bgRectF$delegate.getValue();
    }

    private final RectF getContentRectF() {
        return (RectF) this.contentRectF$delegate.getValue();
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        super.onDraw(canvas);
        drawBackground(canvas);
        drawContent(canvas);
        drawIndicator(canvas);
    }

    @Override // android.view.View
    public boolean onTouchEvent(@Nullable MotionEvent motionEvent) {
        Integer numValueOf = motionEvent != null ? Integer.valueOf(motionEvent.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            float x6 = motionEvent.getX();
            this.seekLocation = x6;
            float fCorrectSeekPercent = correctSeekPercent(x6 / this.f2703w);
            OnSeekListener onSeekListener = this.onSeekListener;
            if (onSeekListener != null) {
                onSeekListener.onSeek(fCorrectSeekPercent);
            }
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            float x10 = motionEvent.getX();
            this.seekLocation = x10;
            float fCorrectSeekPercent2 = correctSeekPercent(x10 / this.f2703w);
            OnSeekListener onSeekListener2 = this.onSeekListener;
            if (onSeekListener2 != null) {
                onSeekListener2.onSeek(fCorrectSeekPercent2);
            }
        } else if (numValueOf != null && numValueOf.intValue() == 1) {
            float fCorrectSeekPercent3 = correctSeekPercent(this.seekLocation / this.f2703w);
            OnSeekListener onSeekListener3 = this.onSeekListener;
            if (onSeekListener3 != null) {
                onSeekListener3.onSeekFinish(fCorrectSeekPercent3);
            }
        }
        invalidate();
        return true;
    }

    private final void initPaint(Paint paint, int i10, Paint.Style style, float f) {
        paint.setColor(i10);
        paint.setStyle(style);
        paint.setStrokeWidth(f);
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.h = (i11 - getPaddingTop()) - getPaddingBottom();
        this.f2703w = (i10 - getPaddingLeft()) - getPaddingRight();
        if (i11 < this.seekRegionH) {
            this.seekRegionH = i11;
        }
        this.seekLocation = i10 / 2;
    }

    public final void setRange(float f) {
        float f6;
        if (Utils.isRtl()) {
            f6 = this.f2703w * (1 - f);
        } else {
            f6 = this.f2703w * f;
        }
        this.seekLocation = f6;
        invalidate();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BalanceSeekBar(@Nullable Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(attributes, "attributes");
        this.bgRectF$delegate = o.a(BalanceSeekBar$bgRectF$2.INSTANCE);
        this.contentRectF$delegate = o.a(BalanceSeekBar$contentRectF$2.INSTANCE);
        Paint paint = new Paint();
        this.bgPaint = paint;
        Paint paint2 = new Paint();
        this.contentPaint = paint2;
        Paint paint3 = new Paint();
        this.indicatorPaint = paint3;
        this.seekRegionH = BalanceSeekBarKt.toPx(6);
        this.indicatorW = BalanceSeekBarKt.toPx(4);
        this.orientation = 1;
        int color = ContextCompat.getColor(getContext(), R.color.media_audio_seek_bar_bg_color);
        Paint.Style style = Paint.Style.FILL;
        initPaint(paint, color, style, 0.0f);
        initPaint(paint2, ContextCompat.getColor(getContext(), R.color.media_audio_seek_bar_content_color), style, 0.0f);
        initPaint(paint3, ContextCompat.getColor(getContext(), android.R.color.white), style, 0.0f);
    }
}
