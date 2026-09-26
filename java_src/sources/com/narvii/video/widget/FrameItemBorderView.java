package com.narvii.video.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class FrameItemBorderView extends View {
    private int borderColor;

    @NotNull
    private final Paint borderPaint;

    @NotNull
    private final RectF borderRect;
    private final int frameItemCornerRadius;
    private final int frameItemOffset;
    private boolean hide;
    private final boolean rtl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameItemBorderView(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        this.borderRect = new RectF();
        Paint paint = new Paint();
        this.borderPaint = paint;
        this.borderColor = -1;
        this.rtl = Utils.isRtl();
        this.frameItemCornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius);
        this.frameItemOffset = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_offset);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_stroke_width));
    }

    private final void innerUpdateBorderRect(boolean z6, boolean z10, boolean z11) {
        this.hide = z6;
        if (z6) {
            this.borderRect.setEmpty();
        } else {
            float f = 1;
            this.borderRect.set((((!z10 || this.rtl) && !(z11 && this.rtl)) ? -this.frameItemCornerRadius : this.frameItemOffset) - f, 2.0f, (((!z11 || this.rtl) && !(z10 && this.rtl)) ? getWidth() + this.frameItemCornerRadius : getWidth() - this.frameItemOffset) + f, getHeight() - 2);
        }
        invalidate();
    }

    static /* synthetic */ void innerUpdateBorderRect$default(FrameItemBorderView frameItemBorderView, boolean z6, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            z11 = false;
        }
        frameItemBorderView.innerUpdateBorderRect(z6, z10, z11);
    }

    public static /* synthetic */ void updateBorderRect$default(FrameItemBorderView frameItemBorderView, boolean z6, boolean z10, boolean z11, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            z11 = false;
        }
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        frameItemBorderView.updateBorderRect(z6, z10, z11, i10);
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        super.onDraw(canvas);
        canvas.save();
        this.borderPaint.setColor(this.hide ? 0 : this.borderColor);
        RectF rectF = this.borderRect;
        int i10 = this.frameItemCornerRadius;
        canvas.drawRoundRect(rectF, i10, i10, this.borderPaint);
    }

    public final void updateBorderRect(final boolean z6, final boolean z10, final boolean z11, int i10) {
        this.borderColor = i10;
        if (getWidth() > 0) {
            innerUpdateBorderRect(z6, z10, z11);
        } else {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.video.widget.h
                @Override // java.lang.Runnable
                public final void run() {
                    FrameItemBorderView.updateBorderRect$lambda$0(this.f2979a, z6, z10, z11);
                }
            }, 100L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateBorderRect$lambda$0(FrameItemBorderView this$0, boolean z6, boolean z10, boolean z11) {
        t.j(this$0, "this$0");
        this$0.innerUpdateBorderRect(z6, z10, z11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameItemBorderView(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(context, "context");
        t.j(attributes, "attributes");
        this.borderRect = new RectF();
        Paint paint = new Paint();
        this.borderPaint = paint;
        this.borderColor = -1;
        this.rtl = Utils.isRtl();
        this.frameItemCornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius);
        this.frameItemOffset = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_offset);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_stroke_width));
    }
}
