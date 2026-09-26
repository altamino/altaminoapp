package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes10.dex */
public class StrokedTextView extends TextView {
    private Bitmap mCache;
    private final Canvas mCanvas;
    private final Paint mPaint;
    private int mStrokeColor;
    private int mStrokeWidth;
    private int mTextColor;
    private boolean mUpdateCachedBitmap;

    public StrokedTextView(Context context) {
        super(context);
        this.mCanvas = new Canvas();
        this.mPaint = new Paint();
        init(context, null, 0);
    }

    private void init(Context context, AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.StrokedTextView, i10, 0);
        this.mStrokeColor = typedArrayObtainStyledAttributes.getColor(R.styleable.StrokedTextView_st_strokeColor, ViewCompat.MEASURED_STATE_MASK);
        int dimension = (int) typedArrayObtainStyledAttributes.getDimension(R.styleable.StrokedTextView_st_strokeWidth, Utils.dpToPx(getContext(), 5.0f));
        this.mStrokeWidth = dimension;
        setPadding(dimension, 0, dimension, 0);
        this.mTextColor = typedArrayObtainStyledAttributes.getColor(R.styleable.StrokedTextView_st_strokeTextColor, -1);
        typedArrayObtainStyledAttributes.recycle();
        this.mUpdateCachedBitmap = true;
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.FILL_AND_STROKE);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mCache == null) {
            super.onDraw(canvas);
            return;
        }
        if (this.mUpdateCachedBitmap) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            String string = getText().toString();
            Rect rect = new Rect();
            TextPaint paint = getPaint();
            int iMeasureText = (int) paint.measureText(string);
            paint.getTextBounds("x", 0, 1, rect);
            this.mCanvas.setBitmap(this.mCache);
            this.mCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            Drawable[] compoundDrawables = getCompoundDrawables();
            for (int i10 = 0; i10 < compoundDrawables.length; i10++) {
                Drawable drawable = compoundDrawables[i10];
                if (drawable != null) {
                    drawable.setBounds(paddingLeft, paddingTop, drawable.getIntrinsicWidth() + paddingLeft, compoundDrawables[i10].getIntrinsicHeight() + paddingTop);
                    compoundDrawables[i10].draw(this.mCanvas);
                }
            }
            int paddingRight = (measuredWidth - getPaddingRight()) - iMeasureText;
            int iHeight = (measuredHeight + rect.height()) / 2;
            this.mPaint.setStrokeWidth(this.mStrokeWidth);
            this.mPaint.setColor(this.mStrokeColor);
            this.mPaint.setTextSize(getTextSize());
            float f = paddingRight;
            float f6 = iHeight;
            this.mCanvas.drawText(string, f, f6, this.mPaint);
            this.mPaint.setStrokeWidth(0.0f);
            this.mPaint.setColor(this.mTextColor);
            this.mCanvas.drawText(string, f, f6, this.mPaint);
            this.mUpdateCachedBitmap = false;
        }
        canvas.drawBitmap(this.mCache, 0.0f, 0.0f, this.mPaint);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 > 0 && i11 > 0) {
            this.mUpdateCachedBitmap = true;
            this.mCache = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        } else {
            this.mCache = null;
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        this.mUpdateCachedBitmap = true;
    }

    public StrokedTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCanvas = new Canvas();
        this.mPaint = new Paint();
        init(context, attributeSet, 0);
    }

    public StrokedTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mCanvas = new Canvas();
        this.mPaint = new Paint();
        init(context, attributeSet, i10);
    }
}
