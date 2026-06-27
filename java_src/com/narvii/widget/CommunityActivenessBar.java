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
import android.os.Build;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
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

    public CommunityActivenessBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.activeness = -1.0f;
        this.curLevel = -1;
        this.rectF = new RectF();
        init();
        setWillNotDraw(false);
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    private void init() {
        this.paint = new Paint(1);
        this.paint.setColor(DEFAULT_COLOR);
        this.bgPaint = new Paint(1);
        this.strokeWidth = getResources().getDimension(R.dimen.activeness_bar_width);
        this.tvIndicator = new TextView(getContext());
        this.tvIndicator.setText(getContext().getString(R.string.activity));
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

    public void setLevel(int i) {
        if (i < 0) {
            i = 0;
        }
        if (i > 8) {
            i = 8;
        }
        if (this.curLevel != i) {
            this.curLevel = i;
            updateViews((int) ((this.curLevel / 8.0f) * 10000.0f));
        }
    }

    public void setActiveness(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        this.curHeat = f;
        this.activeness = Math.round(this.curHeat * 8.0f) / 8.0f;
        updateViews(0);
    }

    private void updateViews(int i) {
        LayerDrawable layerDrawable = (LayerDrawable) ContextCompat.getDrawable(getContext(), R.drawable.activeness_bar_bg).mutate();
        ((ClipDrawable) layerDrawable.findDrawableByLayerId(R.id.activeness_level)).setLevel(i);
        setBackgroundDrawable(layerDrawable);
    }

    private int dp2Px(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        boolean zIsRtl = Utils.isRtl();
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = this.tvIndicator.getMeasuredWidth();
        this.tvIndicator.getMeasuredHeight();
        int i = (width + 0) - measuredWidth;
        int left = getLeft() + measuredWidth + 0;
        canvas.save();
        this.rectF.left = zIsRtl ? 0.0f : measuredWidth;
        RectF rectF = this.rectF;
        rectF.top = 1.0f;
        rectF.bottom = height - 1;
        rectF.right = zIsRtl ? width - measuredWidth : width;
        float f = this.activeness;
        int i2 = f == 0.0f ? 0 : (int) (f * i);
        float fDpToPx = this.activeness == 1.0f ? Utils.dpToPx(getContext(), 3.0f) : 0.0f;
        Path path = new Path();
        float f2 = height;
        RectF rectF2 = new RectF(0.0f, 0.0f, (measuredWidth + i2) - this.strokeWidth, f2);
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
        float f3 = i / 8.0f;
        if (!Utils.isRtl()) {
            for (int i3 = 0; i3 < 8; i3++) {
                float f4 = (i3 * f3) + left;
                canvas.drawRect(f4, 0, f4 + this.strokeWidth, f2, this.paint);
            }
            return;
        }
        int i4 = 0;
        while (i4 < 7) {
            int i5 = i4 + 1;
            float f5 = f3 * i5;
            canvas.drawRect(f5, 0, f5 + this.strokeWidth, f2, this.paint);
            i4 = i5;
        }
    }
}
