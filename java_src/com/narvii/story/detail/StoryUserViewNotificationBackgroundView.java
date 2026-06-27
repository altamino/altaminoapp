package com.narvii.story.detail;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.widget.NVGradientDrawable;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StoryUserViewNotificationBackgroundView.kt */
/* loaded from: classes3.dex */
public final class StoryUserViewNotificationBackgroundView extends View {
    private HashMap _$_findViewCache;
    private float animatorProgress;
    private Bitmap bitmap;
    private int maxRadius;
    private final Paint paint;
    private Rect rect;

    public StoryUserViewNotificationBackgroundView(Context context) {
        this(context, null, 0, 6, null);
    }

    public StoryUserViewNotificationBackgroundView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryUserViewNotificationBackgroundView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        setLayerType(1, null);
        this.paint = new Paint();
        this.rect = new Rect(0, 0, getWidth(), getHeight());
    }

    public /* synthetic */ StoryUserViewNotificationBackgroundView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        setBackground(getBackgroundDrawable((int) 4294944256L, (int) 4294952704L));
        NVGradientDrawable backgroundDrawable = getBackgroundDrawable((int) 4286242872L, (int) 4284404028L);
        backgroundDrawable.setBounds(0, 0, getRight() - getLeft(), getBottom() - getTop());
        this.bitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        Bitmap bitmap = this.bitmap;
        if (bitmap == null) {
            Log.e("canvas bitmap is null in sizeChange");
        } else {
            if (bitmap == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            backgroundDrawable.draw(new Canvas(bitmap));
        }
        this.rect = new Rect(0, 0, getWidth(), getHeight());
        double height = getHeight();
        Double.isNaN(height);
        double height2 = getHeight();
        Double.isNaN(height2);
        double d = height * 4.0d * height2;
        double width = (getWidth() * getWidth()) / 4.0f;
        Double.isNaN(width);
        this.maxRadius = (int) Math.sqrt(d + width);
    }

    public final float getAnimatorProgress() {
        return this.animatorProgress;
    }

    public final void setAnimatorProgress(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        this.animatorProgress = f;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        super.onDraw(canvas);
        if (this.bitmap != null) {
            int iSaveLayer = canvas.saveLayer(new RectF(this.rect), null, 31);
            float f = 2;
            canvas.drawCircle(getWidth() / f, getHeight() * f, this.maxRadius * this.animatorProgress, this.paint);
            this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            Bitmap bitmap = this.bitmap;
            if (bitmap == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            Rect rect = this.rect;
            canvas.drawBitmap(bitmap, rect, rect, this.paint);
            this.paint.setXfermode(null);
            canvas.restoreToCount(iSaveLayer);
            return;
        }
        Log.e("canvas bitmap is null in sizeChange");
    }

    public final NVGradientDrawable getBackgroundDrawable(int i, int i2) {
        NVGradientDrawable nVGradientDrawable = new NVGradientDrawable(i, i2);
        float measuredHeight = getMeasuredHeight() / 2;
        nVGradientDrawable.setRadius(Utils.isRtl() ? new float[]{0.0f, 0.0f, measuredHeight, measuredHeight, measuredHeight, measuredHeight, 0.0f, 0.0f} : new float[]{measuredHeight, measuredHeight, 0.0f, 0.0f, 0.0f, 0.0f, measuredHeight, measuredHeight});
        return nVGradientDrawable;
    }
}
