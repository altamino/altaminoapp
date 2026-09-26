package com.narvii.poll;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.Utils;
import com.narvii.widget.shader.LinearGradientDelegate;
import java.math.RoundingMode;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes10.dex */
public class VoteBar extends FrameLayout {
    private static DecimalFormat fmt;
    int colorEnd;
    int colorGray;
    int colorStart;
    int colorVotedEnd;
    int colorVotedStart;
    float cornerRadius;
    long end;
    LinearGradientDelegate gradientDelegate;
    LinearGradientDelegate gradientDelegateVoted;
    Interpolator interp;
    float p;
    Paint paint;
    RectF rectf;
    long start;
    TextView valueView;
    boolean voted;

    static {
        DecimalFormat decimalFormat = new DecimalFormat("0.#");
        fmt = decimalFormat;
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
    }

    private String percentText(float f) {
        StringBuilder sb = new StringBuilder();
        DecimalFormat decimalFormat = fmt;
        if (f <= 0.0f) {
            f = 0.0f;
        }
        sb.append(decimalFormat.format(f * 100.0f));
        sb.append("%");
        return sb.toString();
    }

    public void setValue(boolean z6, float f, long j6) {
        this.voted = z6;
        this.p = f;
        if (j6 > 0) {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.start = jCurrentAnimationTimeMillis;
            this.end = jCurrentAnimationTimeMillis + j6;
            TextView textView = this.valueView;
            if (textView != null) {
                textView.clearAnimation();
                this.valueView.setVisibility(4);
            }
        } else {
            this.end = 0L;
            this.start = 0L;
            TextView textView2 = this.valueView;
            if (textView2 != null) {
                textView2.clearAnimation();
                this.valueView.setVisibility(0);
                this.valueView.setText(percentText(this.p));
            }
        }
        invalidate();
    }

    public VoteBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setWillNotDraw(false);
        this.colorStart = context.getResources().getColor(R.color.poll_vote_btn_start_color);
        this.colorEnd = context.getResources().getColor(R.color.poll_vote_btn_end_color);
        this.colorVotedStart = context.getResources().getColor(R.color.poll_vote_btn_voted_start_color);
        this.colorVotedEnd = context.getResources().getColor(R.color.poll_vote_btn_voted_end_color);
        this.colorGray = context.getResources().getColor(R.color.poll_vote_gray_color);
        this.cornerRadius = context.getResources().getDimension(R.dimen.push_button_corner_radius);
        this.rectf = new RectF();
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setDither(true);
        this.interp = new DecelerateInterpolator();
        this.gradientDelegate = new LinearGradientDelegate();
        this.gradientDelegateVoted = new LinearGradientDelegate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        super.onDraw(canvas);
        this.rectf.left = getPaddingLeft();
        this.rectf.top = getPaddingTop();
        this.rectf.right = getWidth() - getPaddingRight();
        this.rectf.bottom = getHeight() - getPaddingBottom();
        this.paint.setColor(this.colorGray);
        this.paint.setShader(null);
        RectF rectF = this.rectf;
        float f6 = this.cornerRadius;
        canvas.drawRoundRect(rectF, f6, f6, this.paint);
        int iSave = canvas.save();
        if (this.start != 0) {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            long j6 = this.end;
            if (jCurrentAnimationTimeMillis < j6) {
                long j10 = this.start;
                f = ((jCurrentAnimationTimeMillis - j10) * 1.0f) / (j6 - j10);
                invalidate();
            } else {
                this.end = 0L;
                this.start = 0L;
                TextView textView = this.valueView;
                if (textView != null) {
                    textView.setVisibility(0);
                    this.valueView.setText(percentText(this.p));
                    this.valueView.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
                }
                f = 1.0f;
            }
        } else {
            f = 1.0f;
        }
        float interpolation = this.interp.getInterpolation(f);
        if (Utils.isRtl()) {
            RectF rectF2 = this.rectf;
            float fWidth = rectF2.left + (rectF2.width() * (1.0f - (interpolation * this.p)));
            RectF rectF3 = this.rectf;
            canvas.clipRect(fWidth, rectF3.top, rectF3.right, rectF3.bottom);
        } else {
            RectF rectF4 = this.rectf;
            float f7 = rectF4.left;
            canvas.clipRect(f7, rectF4.top, (rectF4.width() * interpolation * this.p) + f7, this.rectf.bottom);
        }
        this.paint.setColor(-1);
        if (this.voted) {
            this.gradientDelegateVoted.setShade(0.0f, 0.0f, 0.0f, getHeight() * 1.0f, this.colorVotedStart, this.colorVotedEnd, Shader.TileMode.CLAMP);
            this.paint.setShader(this.gradientDelegateVoted.getShade());
        } else {
            this.gradientDelegateVoted.setShade(0.0f, 0.0f, 0.0f, getHeight() * 1.0f, this.colorStart, this.colorEnd, Shader.TileMode.CLAMP);
            this.paint.setShader(this.gradientDelegateVoted.getShade());
        }
        RectF rectF5 = this.rectf;
        float f10 = this.cornerRadius;
        canvas.drawRoundRect(rectF5, f10, f10, this.paint);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.valueView = (TextView) findViewById(R.id.vote_bar_value);
    }
}
