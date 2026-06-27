package com.narvii.video.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FrameItemBorderView.kt */
/* loaded from: classes3.dex */
public final class FrameItemBorderView extends View {
    private HashMap _$_findViewCache;
    private int borderColor;
    private final Paint borderPaint;
    private final RectF borderRect;
    private final int frameItemCornerRadius;
    private final int frameItemOffset;
    private boolean hide;
    private final boolean rtl;

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
    public FrameItemBorderView(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.borderRect = new RectF();
        this.borderPaint = new Paint();
        this.borderColor = -1;
        this.rtl = Utils.isRtl();
        this.frameItemCornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius);
        this.frameItemOffset = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_offset);
        this.borderPaint.setAntiAlias(true);
        this.borderPaint.setStyle(Paint.Style.STROKE);
        this.borderPaint.setStrokeWidth(getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_stroke_width));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameItemBorderView(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        this.borderRect = new RectF();
        this.borderPaint = new Paint();
        this.borderColor = -1;
        this.rtl = Utils.isRtl();
        this.frameItemCornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius);
        this.frameItemOffset = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_offset);
        this.borderPaint.setAntiAlias(true);
        this.borderPaint.setStyle(Paint.Style.STROKE);
        this.borderPaint.setStrokeWidth(getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_stroke_width));
    }

    public static /* synthetic */ void updateBorderRect$default(FrameItemBorderView frameItemBorderView, boolean z, boolean z2, boolean z3, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        if ((i2 & 4) != 0) {
            z3 = false;
        }
        if ((i2 & 8) != 0) {
            i = -1;
        }
        frameItemBorderView.updateBorderRect(z, z2, z3, i);
    }

    public final void updateBorderRect(final boolean z, final boolean z2, final boolean z3, int i) {
        this.borderColor = i;
        if (getWidth() > 0) {
            innerUpdateBorderRect(z, z2, z3);
        } else {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.video.widget.FrameItemBorderView.updateBorderRect.1
                @Override // java.lang.Runnable
                public final void run() {
                    FrameItemBorderView.this.innerUpdateBorderRect(z, z2, z3);
                }
            }, 100L);
        }
    }

    static /* synthetic */ void innerUpdateBorderRect$default(FrameItemBorderView frameItemBorderView, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            z3 = false;
        }
        frameItemBorderView.innerUpdateBorderRect(z, z2, z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void innerUpdateBorderRect(boolean z, boolean z2, boolean z3) {
        int i;
        int width;
        this.hide = z;
        if (!z) {
            if ((z2 && !this.rtl) || (z3 && this.rtl)) {
                i = this.frameItemOffset;
            } else {
                i = -this.frameItemCornerRadius;
            }
            if ((z3 && !this.rtl) || (z2 && this.rtl)) {
                width = getWidth() - this.frameItemOffset;
            } else {
                width = getWidth() + this.frameItemCornerRadius;
            }
            float f = 1;
            this.borderRect.set(i - f, 2.0f, width + f, getHeight() - 2);
        } else {
            this.borderRect.setEmpty();
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        super.onDraw(canvas);
        canvas.save();
        this.borderPaint.setColor(this.hide ? 0 : this.borderColor);
        RectF rectF = this.borderRect;
        int i = this.frameItemCornerRadius;
        canvas.drawRoundRect(rectF, i, i, this.borderPaint);
    }
}
