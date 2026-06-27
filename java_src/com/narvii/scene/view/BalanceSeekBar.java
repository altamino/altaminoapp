package com.narvii.scene.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: BalanceSeekBar.kt */
/* loaded from: classes3.dex */
public final class BalanceSeekBar extends View {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BalanceSeekBar.class), "bgRectF", "getBgRectF()Landroid/graphics/RectF;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(BalanceSeekBar.class), "contentRectF", "getContentRectF()Landroid/graphics/RectF;"))};
    public static final Companion Companion = new Companion(null);
    public static final int HORIZONTAL = 1;
    public static final int VERTICAL = 2;
    private HashMap _$_findViewCache;
    private final Paint bgPaint;
    private final Lazy bgRectF$delegate;
    private final Paint contentPaint;
    private final Lazy contentRectF$delegate;
    private int h;
    private final Paint indicatorPaint;
    private int indicatorW;
    private OnSeekListener onSeekListener;
    private int orientation;
    private float seekLocation;
    private int seekRegionH;
    private int w;

    /* compiled from: BalanceSeekBar.kt */
    public interface OnSeekListener {
        void onSeek(float f);

        void onSeekFinish(float f);
    }

    private final RectF getBgRectF() {
        Lazy lazy = this.bgRectF$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (RectF) lazy.getValue();
    }

    private final RectF getContentRectF() {
        Lazy lazy = this.contentRectF$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (RectF) lazy.getValue();
    }

    private static /* synthetic */ void orientation$annotations() {
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* compiled from: BalanceSeekBar.kt */
    public static final class Companion {

        /* compiled from: BalanceSeekBar.kt */
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface Orientation {
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public BalanceSeekBar(Context context) {
        super(context);
        this.bgRectF$delegate = LazyKt__LazyJVMKt.lazy(BalanceSeekBar$bgRectF$2.INSTANCE);
        this.contentRectF$delegate = LazyKt__LazyJVMKt.lazy(BalanceSeekBar$contentRectF$2.INSTANCE);
        this.bgPaint = new Paint();
        this.contentPaint = new Paint();
        this.indicatorPaint = new Paint();
        this.seekRegionH = BalanceSeekBarKt.toPx(6);
        this.indicatorW = BalanceSeekBarKt.toPx(4);
        this.orientation = 1;
        initPaint(this.bgPaint, ContextCompat.getColor(getContext(), R.color.media_audio_seek_bar_bg_color), Paint.Style.FILL, 0.0f);
        initPaint(this.contentPaint, ContextCompat.getColor(getContext(), R.color.media_audio_seek_bar_content_color), Paint.Style.FILL, 0.0f);
        initPaint(this.indicatorPaint, ContextCompat.getColor(getContext(), android.R.color.white), Paint.Style.FILL, 0.0f);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BalanceSeekBar(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        this.bgRectF$delegate = LazyKt__LazyJVMKt.lazy(BalanceSeekBar$bgRectF$2.INSTANCE);
        this.contentRectF$delegate = LazyKt__LazyJVMKt.lazy(BalanceSeekBar$contentRectF$2.INSTANCE);
        this.bgPaint = new Paint();
        this.contentPaint = new Paint();
        this.indicatorPaint = new Paint();
        this.seekRegionH = BalanceSeekBarKt.toPx(6);
        this.indicatorW = BalanceSeekBarKt.toPx(4);
        this.orientation = 1;
        initPaint(this.bgPaint, ContextCompat.getColor(getContext(), R.color.media_audio_seek_bar_bg_color), Paint.Style.FILL, 0.0f);
        initPaint(this.contentPaint, ContextCompat.getColor(getContext(), R.color.media_audio_seek_bar_content_color), Paint.Style.FILL, 0.0f);
        initPaint(this.indicatorPaint, ContextCompat.getColor(getContext(), android.R.color.white), Paint.Style.FILL, 0.0f);
    }

    private final void initPaint(Paint paint, int i, Paint.Style style, float f) {
        paint.setColor(i);
        paint.setStyle(style);
        paint.setStrokeWidth(f);
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.h = (i2 - getPaddingTop()) - getPaddingBottom();
        this.w = (i - getPaddingLeft()) - getPaddingRight();
        if (i2 < this.seekRegionH) {
            this.seekRegionH = i2;
        }
        this.seekLocation = i / 2;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawBackground(canvas);
        drawContent(canvas);
        drawIndicator(canvas);
    }

    private final void drawBackground(Canvas canvas) {
        float f = 2;
        float f2 = this.seekRegionH / f;
        RectF bgRectF = getBgRectF();
        int i = this.h;
        int i2 = this.seekRegionH;
        bgRectF.set(0.0f, (i - i2) / f, this.w, (i + i2) / f);
        if (canvas != null) {
            canvas.drawRoundRect(getBgRectF(), f2, f2, this.bgPaint);
        }
    }

    private final void drawContent(Canvas canvas) {
        float f;
        float f2 = 2;
        float f3 = this.seekRegionH / f2;
        int i = this.w;
        float f4 = i / f2;
        float f5 = this.seekLocation;
        if (f4 > f5) {
            f5 = i / f2;
            f = f5;
        } else {
            f = i / f2;
        }
        RectF contentRectF = getContentRectF();
        int i2 = this.h;
        int i3 = this.seekRegionH;
        contentRectF.set(f, (i2 - i3) / f2, f5, (i2 + i3) / f2);
        if (canvas != null) {
            canvas.drawRoundRect(getContentRectF(), f3, f3, this.contentPaint);
        }
    }

    private final void drawIndicator(Canvas canvas) {
        float f = this.seekLocation;
        int i = this.indicatorW;
        float f2 = f - (i / 2);
        float f3 = f + (i / 2);
        float px = BalanceSeekBarKt.toPx(2);
        if (f2 < 0) {
            f3 = this.indicatorW + 0.0f;
            f2 = 0.0f;
        }
        int i2 = this.w;
        if (f3 > i2) {
            f3 = i2;
            f2 = f3 - this.indicatorW;
        }
        if (canvas != null) {
            canvas.drawRoundRect(new RectF(f2, 0.0f, f3, this.h), px, px, this.indicatorPaint);
        }
    }

    private final float correctSeekPercent(float f) {
        float f2 = 1;
        if (f > f2) {
            f = 1.0f;
        }
        return Utils.isRtl() ? f2 - f : f;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Integer numValueOf = motionEvent != null ? Integer.valueOf(motionEvent.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            this.seekLocation = motionEvent.getX();
            float fCorrectSeekPercent = correctSeekPercent(this.seekLocation / this.w);
            OnSeekListener onSeekListener = this.onSeekListener;
            if (onSeekListener != null) {
                onSeekListener.onSeek(fCorrectSeekPercent);
            }
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            this.seekLocation = motionEvent.getX();
            float fCorrectSeekPercent2 = correctSeekPercent(this.seekLocation / this.w);
            OnSeekListener onSeekListener2 = this.onSeekListener;
            if (onSeekListener2 != null) {
                onSeekListener2.onSeek(fCorrectSeekPercent2);
            }
        } else if (numValueOf != null && numValueOf.intValue() == 1) {
            float fCorrectSeekPercent3 = correctSeekPercent(this.seekLocation / this.w);
            OnSeekListener onSeekListener3 = this.onSeekListener;
            if (onSeekListener3 != null) {
                onSeekListener3.onSeekFinish(fCorrectSeekPercent3);
            }
        }
        invalidate();
        return true;
    }

    public final void setRange(float f) {
        float f2;
        if (Utils.isRtl()) {
            f2 = this.w * (1 - f);
        } else {
            f2 = this.w * f;
        }
        this.seekLocation = f2;
        invalidate();
    }

    public final void setOnSeekListener(OnSeekListener listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.onSeekListener = listener;
    }
}
