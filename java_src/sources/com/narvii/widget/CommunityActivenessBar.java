package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes4.dex */
public class CommunityActivenessBar extends FrameLayout {
    private static final int CORNER_RADIUS = 2;
    private static final int DEFAULT_ACTIVENESS_CELL_COUNT = 8;
    private static final int DEFAULT_COLOR = -1315861;
    private static final int MARGIN_TEXT = 4;
    private float activeness;
    Paint bgPaint;
    private float curHeat;
    private int curLevel;
    Paint paint;
    RectF rectF;
    private float strokeWidth;
    TextView tvIndicator;

    public CommunityActivenessBar(Context context) {
        this(context, null);
    }

    public void setActiveness(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        this.curHeat = f;
        this.activeness = Math.round(f * 8.0f) / 8.0f;
        updateViews(0);
    }

    public CommunityActivenessBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.activeness = -1.0f;
        this.curLevel = -1;
        this.rectF = new RectF();
        init();
        setWillNotDraw(false);
    }

    private void init() {
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setColor(DEFAULT_COLOR);
        this.bgPaint = new Paint(1);
        this.strokeWidth = getResources().getDimension(R.dimen.activeness_bar_width);
        TextView textView = new TextView(getContext());
        this.tvIndicator = textView;
        textView.setText(getContext().getString(R.string.activity));
        GradientDrawable gradientDrawable = new GradientDrawable();
        float fDpToPx = Utils.dpToPx(getContext(), 2.0f);
        gradientDrawable.setCornerRadii(Utils.isRtl() ? new float[]{0.0f, 0.0f, fDpToPx, fDpToPx, 0.0f, 0.0f, fDpToPx, fDpToPx} : new float[]{fDpToPx, fDpToPx, 0.0f, 0.0f, fDpToPx, fDpToPx, 0.0f, 0.0f});
        gradientDrawable.setColor(1627389951);
        this.tvIndicator.setBackgroundDrawable(gradientDrawable);
        this.tvIndicator.setTextColor(-1);
        this.tvIndicator.setGravity(17);
        this.tvIndicator.setTextSize(1, 11.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
        layoutParams.gravity = 8388627;
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 4.0f);
        this.tvIndicator.setPadding(iDpToPxInt, 0, iDpToPxInt, 0);
        addView(this.tvIndicator, layoutParams);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        boolean zIsRtl = Utils.isRtl();
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = this.tvIndicator.getMeasuredWidth();
        this.tvIndicator.getMeasuredHeight();
        int i10 = width - measuredWidth;
        int left = getLeft() + measuredWidth;
        canvas.save();
        RectF rectF = this.rectF;
        rectF.left = zIsRtl ? 0.0f : measuredWidth;
        rectF.top = 1.0f;
        rectF.bottom = height - 1;
        rectF.right = zIsRtl ? width - measuredWidth : width;
        float f = this.activeness;
        int i11 = f == 0.0f ? 0 : (int) (i10 * f);
        float fDpToPx = f == 1.0f ? Utils.dpToPx(getContext(), 3.0f) : 0.0f;
        Path path = new Path();
        float f6 = (measuredWidth + i11) - this.strokeWidth;
        float f7 = height;
        RectF rectF2 = new RectF(0.0f, 0.0f, f6, f7);
        float[] fArr = new float[8];
        fArr[0] = zIsRtl ? fDpToPx : 0.0f;
        fArr[1] = zIsRtl ? fDpToPx : 0.0f;
        fArr[2] = zIsRtl ? 0.0f : fDpToPx;
        fArr[3] = zIsRtl ? 0.0f : fDpToPx;
        fArr[4] = zIsRtl ? 0.0f : fDpToPx;
        fArr[5] = zIsRtl ? 0.0f : fDpToPx;
        fArr[6] = zIsRtl ? fDpToPx : 0.0f;
        fArr[7] = zIsRtl ? fDpToPx : 0.0f;
        path.addRoundRect(rectF2, fArr, Path.Direction.CW);
        try {
            canvas.clipPath(path);
        } catch (Exception unused) {
        }
        this.bgPaint.setShader(new LinearGradient(0.0f, 0.0f, width - this.strokeWidth, 0.0f, zIsRtl ? -37376 : -10567506, zIsRtl ? -10567506 : -37376, Shader.TileMode.CLAMP));
        canvas.drawRect(this.rectF, this.bgPaint);
        canvas.restore();
        this.paint.setColor(-1);
        float f10 = i10 / 8.0f;
        if (!Utils.isRtl()) {
            for (int i12 = 0; i12 < 8; i12++) {
                float f11 = (i12 * f10) + left;
                canvas.drawRect(f11, 0, f11 + this.strokeWidth, f7, this.paint);
            }
            return;
        }
        int i13 = 0;
        while (i13 < 7) {
            int i14 = i13 + 1;
            float f12 = f10 * i14;
            canvas.drawRect(f12, 0, f12 + this.strokeWidth, f7, this.paint);
            i13 = i14;
        }
    }

    public void setLevel(int i10) {
        if (i10 < 0) {
            i10 = 0;
        }
        if (i10 > 8) {
            i10 = 8;
        }
        if (this.curLevel != i10) {
            this.curLevel = i10;
            updateViews((int) ((i10 / 8.0f) * 10000.0f));
        }
    }

    private int dp2Px(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    private void updateViews(int i10) {
        LayerDrawable layerDrawable = (LayerDrawable) ContextCompat.getDrawable(getContext(), R.drawable.activeness_bar_bg).mutate();
        ((ClipDrawable) layerDrawable.findDrawableByLayerId(R.id.activeness_level)).setLevel(i10);
        setBackgroundDrawable(layerDrawable);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
    }
}
