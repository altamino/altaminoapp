package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R;

/* JADX INFO: loaded from: classes7.dex */
public class MotionTelltales extends MockView {
    private static final String TAG = "MotionTelltales";
    Matrix mInvertMatrix;
    MotionLayout mMotionLayout;
    private Paint mPaintTelltales;
    int mTailColor;
    float mTailScale;
    int mVelocityMode;
    float[] velocity;

    public MotionTelltales(Context context) {
        super(context);
        this.mPaintTelltales = new Paint();
        this.velocity = new float[2];
        this.mInvertMatrix = new Matrix();
        this.mVelocityMode = 0;
        this.mTailColor = -65281;
        this.mTailScale = 0.25f;
        a(context, null);
    }

    private void a(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.MotionTelltales);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.MotionTelltales_telltales_tailColor) {
                    this.mTailColor = typedArrayObtainStyledAttributes.getColor(index, this.mTailColor);
                } else if (index == R.styleable.MotionTelltales_telltales_velocityMode) {
                    this.mVelocityMode = typedArrayObtainStyledAttributes.getInt(index, this.mVelocityMode);
                } else if (index == R.styleable.MotionTelltales_telltales_tailScale) {
                    this.mTailScale = typedArrayObtainStyledAttributes.getFloat(index, this.mTailScale);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.mPaintTelltales.setColor(this.mTailColor);
        this.mPaintTelltales.setStrokeWidth(5.0f);
    }

    @Override // androidx.constraintlayout.utils.widget.MockView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        getMatrix().invert(this.mInvertMatrix);
        if (this.mMotionLayout == null) {
            ViewParent parent = getParent();
            if (parent instanceof MotionLayout) {
                this.mMotionLayout = (MotionLayout) parent;
                return;
            }
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float[] fArr = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        for (int i10 = 0; i10 < 5; i10++) {
            float f = fArr[i10];
            for (int i11 = 0; i11 < 5; i11++) {
                float f6 = fArr[i11];
                this.mMotionLayout.Q(this, f6, f, this.velocity, this.mVelocityMode);
                this.mInvertMatrix.mapVectors(this.velocity);
                float f7 = width * f6;
                float f10 = height * f;
                float[] fArr2 = this.velocity;
                float f11 = fArr2[0];
                float f12 = this.mTailScale;
                float f13 = f10 - (fArr2[1] * f12);
                this.mInvertMatrix.mapVectors(fArr2);
                canvas.drawLine(f7, f10, f7 - (f11 * f12), f13, this.mPaintTelltales);
            }
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        postInvalidate();
    }

    public void setText(CharSequence text) {
        this.mText = text.toString();
        requestLayout();
    }

    public MotionTelltales(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mPaintTelltales = new Paint();
        this.velocity = new float[2];
        this.mInvertMatrix = new Matrix();
        this.mVelocityMode = 0;
        this.mTailColor = -65281;
        this.mTailScale = 0.25f;
        a(context, attrs);
    }

    public MotionTelltales(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mPaintTelltales = new Paint();
        this.velocity = new float[2];
        this.mInvertMatrix = new Matrix();
        this.mVelocityMode = 0;
        this.mTailColor = -65281;
        this.mTailScale = 0.25f;
        a(context, attrs);
    }
}
