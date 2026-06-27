package com.narvii.flag;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.style.ReplacementSpan;
import com.narvii.util.fonticon.FontAwesomeUtil;
import com.narvii.util.fonticon.NVTypeface;

/* loaded from: classes2.dex */
public class TagWithIconSpan extends ReplacementSpan {
    private static int DEFAULT_BACK_COLOR = -65536;
    private static int DEFAULT_CORNER_RADIUS = 8;
    private static String DEFAULT_FLAG_ICON = "ion_ios_flag";
    private static int DEFAULT_TEXT_COLOR = -1;
    private static final int DIRECTION_NORMAL = 0;
    private static final int DIRECTION_REVERSAL = 1;
    private float direction;
    private String iconCharacters;
    private int mBackColor;
    private int mColor;
    private String mContentStr;
    private float mContentTextSize;
    private Context mContext;
    private String mIconStr;
    private float mIconTextSie;
    private boolean mSameBaseLine;
    private boolean mShowRoundRect;
    RectF rect;

    public TagWithIconSpan(Context context, String str) {
        this(context, DEFAULT_FLAG_ICON, str, 1);
    }

    public TagWithIconSpan(Context context, String str, String str2, int i) {
        this(context, str, str2, DEFAULT_TEXT_COLOR, DEFAULT_BACK_COLOR, 0.0f, 0.0f, true, true, i);
    }

    public TagWithIconSpan(Context context, String str, String str2, int i, int i2, float f, float f2, boolean z, boolean z2, int i3) {
        this.mIconStr = str;
        this.mContentStr = str2;
        this.mContext = context;
        this.mColor = i;
        this.mBackColor = i2;
        this.mShowRoundRect = z;
        this.mSameBaseLine = z2;
        this.mIconTextSie = f;
        this.mContentTextSize = f2;
        this.direction = i3;
        this.rect = new RectF();
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        return Math.round(paint.measureText(charSequence, i, i2));
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        Paint paint2 = new Paint();
        float f2 = this.mIconTextSie;
        if (f2 != 0.0f) {
            paint2.setTextSize(f2);
        } else {
            paint2.setTextSize(paint.getTextSize());
        }
        paint2.setTypeface(getTypeFace());
        String str = this.iconCharacters;
        float fMeasureText = paint2.measureText(str, 0, str.length());
        String str2 = this.mContentStr;
        float fMeasureText2 = paint.measureText(str2, 0, str2.length());
        int iDescent = (int) ((i3 + (((i5 - i3) - (paint.descent() - paint.ascent())) / 2.0f)) - paint.ascent());
        float fMeasureText3 = paint.measureText("x") * 0.5f;
        RectF rectF = this.rect;
        rectF.left = f;
        float f3 = fMeasureText + f;
        rectF.right = f3 + fMeasureText2 + (4.0f * fMeasureText3);
        float f4 = iDescent;
        rectF.top = paint.ascent() + f4;
        this.rect.bottom = paint.descent() + f4;
        paint.setColor(this.mBackColor);
        if (this.mShowRoundRect) {
            RectF rectF2 = this.rect;
            int i6 = DEFAULT_CORNER_RADIUS;
            canvas.drawRoundRect(rectF2, i6, i6, paint);
        }
        paint2.setColor(this.mColor);
        paint.setColor(this.mColor);
        float f5 = this.mContentTextSize;
        if (f5 != 0.0f) {
            paint.setTextSize(f5);
        }
        if (this.direction == 0.0f) {
            if (this.mSameBaseLine) {
                canvas.drawText(this.iconCharacters, f + fMeasureText3, f4, paint2);
            } else {
                canvas.drawText(this.iconCharacters, f, paint.descent() + f4, paint2);
            }
            String str3 = this.mContentStr;
            canvas.drawText(str3, 0, str3.length(), f3 + (fMeasureText3 * 2.0f), f4, paint);
            return;
        }
        String str4 = this.mContentStr;
        canvas.drawText(str4, 0, str4.length(), f + fMeasureText3, f4, paint);
        if (this.mSameBaseLine) {
            canvas.drawText(this.iconCharacters, f + (fMeasureText3 * 2.0f) + fMeasureText2, f4, paint2);
        } else {
            canvas.drawText(this.iconCharacters, f + fMeasureText2, f4 + paint.descent(), paint2);
        }
    }

    private Typeface getTypeFace() {
        NVTypeface nvTypeface = FontAwesomeUtil.getNvTypeface(this.mIconStr);
        if (nvTypeface == null) {
            return null;
        }
        this.iconCharacters = "" + nvTypeface.getCharacters().get(this.mIconStr);
        return nvTypeface.getTypeface(this.mContext);
    }
}
