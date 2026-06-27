package com.narvii.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.narvii.lib.R;
import java.util.Random;

/* loaded from: classes3.dex */
public class ColorPickerView extends View {
    public static final float COLOR_S_FLOAT = 0.65f;
    public static final float COLOR_V_FLOAT = 1.0f;
    private Bitmap bgBitmap;
    boolean colorSet;
    private int mColor;
    private OnColorChangedListener mListener;
    private RectF mRect;
    private LinearGradient mShader;
    private Point mStartTouchPoint;
    private Paint paint;
    private Bitmap pickerBitmap;
    private int[] pixelColors;

    public interface OnColorChangedListener {
        void onColorChanged(int i);
    }

    public ColorPickerView(Context context) {
        this(context, null);
    }

    public ColorPickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ColorPickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.paint = new Paint(1);
        this.paint.setFilterBitmap(true);
    }

    public void setColor(int i) {
        this.mColor = i;
        this.colorSet = true;
        invalidate();
        OnColorChangedListener onColorChangedListener = this.mListener;
        if (onColorChangedListener != null) {
            onColorChangedListener.onColorChanged(this.mColor);
        }
    }

    public void setListener(OnColorChangedListener onColorChangedListener) {
        this.mListener = onColorChangedListener;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawColorPanel(canvas);
    }

    private void drawColorPanel(Canvas canvas) {
        if (this.mRect == null) {
            this.mRect = new RectF(0.0f, getHeight() / 12, getWidth(), (getHeight() * 11) / 12);
        }
        if (this.bgBitmap == null) {
            int iWidth = (int) this.mRect.width();
            this.bgBitmap = Bitmap.createScaledBitmap(((BitmapDrawable) ContextCompat.getDrawable(getContext(), R.drawable.color_picker_bg)).getBitmap(), iWidth, (int) this.mRect.height(), true);
            this.pixelColors = new int[iWidth];
            for (int i = 0; i < iWidth; i++) {
                this.pixelColors[i] = this.bgBitmap.getPixel(i, 0);
            }
        }
        canvas.drawBitmap(this.bgBitmap, (Rect) null, this.mRect, this.paint);
        if (this.pickerBitmap == null) {
            this.pickerBitmap = ((BitmapDrawable) ContextCompat.getDrawable(getContext(), R.drawable.theme_color_picker)).getBitmap();
        }
        if (!this.colorSet) {
            setColor(this.pixelColors[new Random().nextInt(this.pixelColors.length)]);
        }
        Point pointColorToPoint = colorToPoint(this.mColor);
        canvas.drawBitmap(this.pickerBitmap, (Rect) null, new Rect(pointColorToPoint.x - (getHeight() / 2), 0, pointColorToPoint.x + (getHeight() / 2), getHeight()), this.paint);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zMoveTrackersIfNeeded;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                this.mStartTouchPoint = null;
            } else if (action == 2) {
                zMoveTrackersIfNeeded = moveTrackersIfNeeded(motionEvent);
            }
            zMoveTrackersIfNeeded = false;
        } else {
            this.mStartTouchPoint = new Point((int) motionEvent.getX(), (int) motionEvent.getY());
            zMoveTrackersIfNeeded = moveTrackersIfNeeded(motionEvent);
        }
        if (zMoveTrackersIfNeeded) {
            OnColorChangedListener onColorChangedListener = this.mListener;
            if (onColorChangedListener != null) {
                onColorChangedListener.onColorChanged(this.mColor);
            }
            invalidate();
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    private boolean moveTrackersIfNeeded(MotionEvent motionEvent) {
        Point point = this.mStartTouchPoint;
        if (point == null) {
            return false;
        }
        int i = point.x;
        int i2 = point.y;
        int x = (int) motionEvent.getX();
        if (!this.mRect.contains(i, i2) || x < 0) {
            return false;
        }
        int[] iArr = this.pixelColors;
        if (x >= iArr.length) {
            return false;
        }
        this.mColor = iArr[x];
        return true;
    }

    private Point colorToPoint(int i) {
        int iRed = Color.red(i);
        int iGreen = Color.green(i);
        int iBlue = Color.blue(i);
        int i2 = 0;
        int i3 = 0;
        int i4 = Integer.MAX_VALUE;
        while (true) {
            int[] iArr = this.pixelColors;
            if (i2 < iArr.length) {
                int iAbs = Math.abs(iRed - Color.red(iArr[i2])) + Math.abs(iGreen - Color.green(this.pixelColors[i2])) + Math.abs(iBlue - Color.blue(this.pixelColors[i2]));
                if (iAbs < i4) {
                    i3 = i2;
                    i4 = iAbs;
                }
                i2++;
            } else {
                Point point = new Point();
                point.x = i3;
                point.y = (int) this.mRect.top;
                return point;
            }
        }
    }
}
