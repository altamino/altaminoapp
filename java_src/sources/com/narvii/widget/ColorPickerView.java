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
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.narvii.lib.R;
import java.util.Random;

/* JADX INFO: loaded from: classes10.dex */
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
        void onColorChanged(int i10);
    }

    public ColorPickerView(Context context) {
        this(context, null);
    }

    public void setListener(OnColorChangedListener onColorChangedListener) {
        this.mListener = onColorChangedListener;
    }

    public ColorPickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void drawColorPanel(Canvas canvas) {
        if (this.mRect == null) {
            this.mRect = new RectF(0.0f, getHeight() / 12, getWidth(), (getHeight() * 11) / 12);
        }
        if (this.bgBitmap == null) {
            int iWidth = (int) this.mRect.width();
            this.bgBitmap = Bitmap.createScaledBitmap(((BitmapDrawable) ContextCompat.getDrawable(getContext(), R.drawable.color_picker_bg)).getBitmap(), iWidth, (int) this.mRect.height(), true);
            this.pixelColors = new int[iWidth];
            for (int i10 = 0; i10 < iWidth; i10++) {
                this.pixelColors[i10] = this.bgBitmap.getPixel(i10, 0);
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

    private boolean moveTrackersIfNeeded(MotionEvent motionEvent) {
        Point point = this.mStartTouchPoint;
        if (point == null) {
            return false;
        }
        int i10 = point.x;
        int i11 = point.y;
        int x6 = (int) motionEvent.getX();
        if (!this.mRect.contains(i10, i11) || x6 < 0) {
            return false;
        }
        int[] iArr = this.pixelColors;
        if (x6 >= iArr.length) {
            return false;
        }
        this.mColor = iArr[x6];
        return true;
    }

    public void setColor(int i10) {
        this.mColor = i10;
        this.colorSet = true;
        invalidate();
        OnColorChangedListener onColorChangedListener = this.mListener;
        if (onColorChangedListener != null) {
            onColorChangedListener.onColorChanged(this.mColor);
        }
    }

    public ColorPickerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setFilterBitmap(true);
    }

    private Point colorToPoint(int i10) {
        int iRed = Color.red(i10);
        int iGreen = Color.green(i10);
        int iBlue = Color.blue(i10);
        int i11 = 0;
        int i12 = Integer.MAX_VALUE;
        int i13 = 0;
        while (true) {
            int[] iArr = this.pixelColors;
            if (i11 < iArr.length) {
                int iAbs = Math.abs(iRed - Color.red(iArr[i11])) + Math.abs(iGreen - Color.green(this.pixelColors[i11])) + Math.abs(iBlue - Color.blue(this.pixelColors[i11]));
                if (iAbs < i12) {
                    i13 = i11;
                    i12 = iAbs;
                }
                i11++;
            } else {
                Point point = new Point();
                point.x = i13;
                point.y = (int) this.mRect.top;
                return point;
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawColorPanel(canvas);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zMoveTrackersIfNeeded;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    zMoveTrackersIfNeeded = moveTrackersIfNeeded(motionEvent);
                }
            } else {
                this.mStartTouchPoint = null;
            }
            return super.onTouchEvent(motionEvent);
        }
        this.mStartTouchPoint = new Point((int) motionEvent.getX(), (int) motionEvent.getY());
        zMoveTrackersIfNeeded = moveTrackersIfNeeded(motionEvent);
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
}
