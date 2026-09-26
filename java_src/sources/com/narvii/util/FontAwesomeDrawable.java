package com.narvii.util;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import com.narvii.lib.R;
import com.narvii.util.fonticon.FontAwesomeUtil;
import com.narvii.util.fonticon.NVTypeface;

/* JADX INFO: loaded from: classes8.dex */
public class FontAwesomeDrawable extends Drawable {
    private static final int DEFAULT_ICON_COLOR = -16777216;
    public static int DEFAULT_ICON_SIZE;
    private int mAlpha;
    private int mColor;
    private Context mContext;
    private float mFocalArea;
    private String mIconString;
    private int mIntrinsicSize;
    private String mKeyString;
    private Paint mPaint;
    private NVTypeface mTypeface;
    private int shadowColor;
    private float shadowDx;
    private float shadowDy;
    private float shadowRadius;

    public FontAwesomeDrawable(Context context) {
        this.mFocalArea = 1.0f;
        this.mIntrinsicSize = -1;
        this.mColor = -16777216;
        this.mAlpha = 255;
        this.mContext = context;
        if (DEFAULT_ICON_SIZE == 0) {
            DEFAULT_ICON_SIZE = context.getResources().getDimensionPixelSize(R.dimen.fontawesome_min_size);
        }
        TextPaint textPaint = new TextPaint();
        this.mPaint = textPaint;
        textPaint.setTextSize(DEFAULT_ICON_SIZE);
        this.mPaint.setAntiAlias(true);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int i10 = this.mIntrinsicSize;
        return i10 < 0 ? DEFAULT_ICON_SIZE : i10;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int i10 = this.mIntrinsicSize;
        return i10 < 0 ? DEFAULT_ICON_SIZE : i10;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.mAlpha = i10;
    }

    public void setIntrinsicSize(float f) {
        this.mIntrinsicSize = (int) f;
        invalidateSelf();
    }

    public void setKeyString(int i10) {
        setKeyString(this.mContext.getString(i10));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mTypeface == null || this.mIconString == null) {
            return;
        }
        Rect bounds = getBounds();
        int iMin = (int) (Math.min(bounds.width(), bounds.height()) * this.mFocalArea);
        float fDescent = this.mPaint.descent() - this.mPaint.ascent();
        float fMeasureText = this.mPaint.measureText(this.mIconString);
        int iSave = canvas.save();
        int i10 = iMin / 2;
        canvas.translate(bounds.centerX() - i10, bounds.centerY() - i10);
        float f = (iMin * 1.0f) / fDescent;
        canvas.scale(f, f);
        this.mPaint.setColor(Color.argb(this.mAlpha, Color.red(this.mColor), Color.green(this.mColor), Color.blue(this.mColor)));
        this.mPaint.setShadowLayer(this.shadowRadius / f, this.shadowDx / f, this.shadowDy / f, this.shadowColor);
        canvas.drawText(this.mIconString, (fDescent - fMeasureText) / 2.0f, -this.mPaint.ascent(), this.mPaint);
        canvas.restoreToCount(iSave);
    }

    public void setColor(int i10) {
        this.mColor = i10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public void setFocalArea(float f) {
        this.mFocalArea = f;
        invalidateSelf();
    }

    public void setKeyString(String str) {
        if (Utils.isStringEquals(str, this.mKeyString)) {
            return;
        }
        this.mKeyString = str;
        if (TextUtils.isEmpty(str)) {
            this.mTypeface = null;
            this.mIconString = null;
        } else {
            NVTypeface nvTypeface = FontAwesomeUtil.getNvTypeface(this.mKeyString);
            this.mTypeface = nvTypeface;
            if (nvTypeface == null) {
                throw new IllegalArgumentException("No icon match that key \"" + this.mKeyString + "\".");
            }
            this.mIconString = String.valueOf(nvTypeface.getCharacters().get(this.mKeyString));
            this.mPaint.setTypeface(this.mTypeface.getTypeface(this.mContext));
        }
        invalidateSelf();
    }

    public void setShadow(float f, float f6, float f7, int i10) {
        this.shadowRadius = f;
        this.shadowDx = f6;
        this.shadowDy = f7;
        this.shadowColor = i10;
        invalidateSelf();
    }

    public FontAwesomeDrawable(Context context, String str) {
        this(context);
        setKeyString(str);
    }

    public FontAwesomeDrawable(Context context, int i10) {
        this(context);
        setKeyString(i10);
    }
}
