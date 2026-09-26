package androidx.constraintlayout.helper.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.VirtualLayout;

/* JADX INFO: loaded from: classes6.dex */
public class Flow extends VirtualLayout {
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static final int HORIZONTAL = 0;
    public static final int HORIZONTAL_ALIGN_CENTER = 2;
    public static final int HORIZONTAL_ALIGN_END = 1;
    public static final int HORIZONTAL_ALIGN_START = 0;
    private static final String TAG = "Flow";
    public static final int VERTICAL = 1;
    public static final int VERTICAL_ALIGN_BASELINE = 3;
    public static final int VERTICAL_ALIGN_BOTTOM = 1;
    public static final int VERTICAL_ALIGN_CENTER = 2;
    public static final int VERTICAL_ALIGN_TOP = 0;
    public static final int WRAP_ALIGNED = 2;
    public static final int WRAP_CHAIN = 1;
    public static final int WRAP_NONE = 0;
    private androidx.constraintlayout.core.widgets.Flow mFlow;

    public Flow(Context context) {
        super(context);
    }

    public Flow(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    @SuppressLint({"WrongCall"})
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        x(this.mFlow, widthMeasureSpec, heightMeasureSpec);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void q(ConstraintWidget widget, boolean isRtl) {
        this.mFlow.x1(isRtl);
    }

    public void setFirstHorizontalBias(float bias) {
        this.mFlow.u2(bias);
        requestLayout();
    }

    public void setFirstHorizontalStyle(int style) {
        this.mFlow.v2(style);
        requestLayout();
    }

    public void setFirstVerticalBias(float bias) {
        this.mFlow.w2(bias);
        requestLayout();
    }

    public void setFirstVerticalStyle(int style) {
        this.mFlow.x2(style);
        requestLayout();
    }

    public void setHorizontalAlign(int align) {
        this.mFlow.y2(align);
        requestLayout();
    }

    public void setHorizontalBias(float bias) {
        this.mFlow.z2(bias);
        requestLayout();
    }

    public void setHorizontalGap(int gap) {
        this.mFlow.A2(gap);
        requestLayout();
    }

    public void setHorizontalStyle(int style) {
        this.mFlow.B2(style);
        requestLayout();
    }

    public void setLastHorizontalBias(float bias) {
        this.mFlow.C2(bias);
        requestLayout();
    }

    public void setLastHorizontalStyle(int style) {
        this.mFlow.D2(style);
        requestLayout();
    }

    public void setLastVerticalBias(float bias) {
        this.mFlow.E2(bias);
        requestLayout();
    }

    public void setLastVerticalStyle(int style) {
        this.mFlow.F2(style);
        requestLayout();
    }

    public void setMaxElementsWrap(int max) {
        this.mFlow.G2(max);
        requestLayout();
    }

    public void setOrientation(int orientation) {
        this.mFlow.H2(orientation);
        requestLayout();
    }

    public void setPadding(int padding) {
        this.mFlow.M1(padding);
        requestLayout();
    }

    public void setPaddingBottom(int paddingBottom) {
        this.mFlow.N1(paddingBottom);
        requestLayout();
    }

    public void setPaddingLeft(int paddingLeft) {
        this.mFlow.P1(paddingLeft);
        requestLayout();
    }

    public void setPaddingRight(int paddingRight) {
        this.mFlow.Q1(paddingRight);
        requestLayout();
    }

    public void setPaddingTop(int paddingTop) {
        this.mFlow.S1(paddingTop);
        requestLayout();
    }

    public void setVerticalAlign(int align) {
        this.mFlow.I2(align);
        requestLayout();
    }

    public void setVerticalBias(float bias) {
        this.mFlow.J2(bias);
        requestLayout();
    }

    public void setVerticalGap(int gap) {
        this.mFlow.K2(gap);
        requestLayout();
    }

    public void setVerticalStyle(int style) {
        this.mFlow.L2(style);
        requestLayout();
    }

    public void setWrapMode(int mode) {
        this.mFlow.M2(mode);
        requestLayout();
    }

    public Flow(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    protected void o(AttributeSet attrs) {
        super.o(attrs);
        this.mFlow = new androidx.constraintlayout.core.widgets.Flow();
        if (attrs != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.ConstraintLayout_Layout_android_orientation) {
                    this.mFlow.H2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_padding) {
                    this.mFlow.M1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingStart) {
                    this.mFlow.R1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingEnd) {
                    this.mFlow.O1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingLeft) {
                    this.mFlow.P1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingTop) {
                    this.mFlow.S1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingRight) {
                    this.mFlow.Q1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingBottom) {
                    this.mFlow.N1(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_wrapMode) {
                    this.mFlow.M2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalStyle) {
                    this.mFlow.B2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalStyle) {
                    this.mFlow.L2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstHorizontalStyle) {
                    this.mFlow.v2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastHorizontalStyle) {
                    this.mFlow.D2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstVerticalStyle) {
                    this.mFlow.x2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastVerticalStyle) {
                    this.mFlow.F2(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalBias) {
                    this.mFlow.z2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstHorizontalBias) {
                    this.mFlow.u2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastHorizontalBias) {
                    this.mFlow.C2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstVerticalBias) {
                    this.mFlow.w2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastVerticalBias) {
                    this.mFlow.E2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalBias) {
                    this.mFlow.J2(typedArrayObtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalAlign) {
                    this.mFlow.y2(typedArrayObtainStyledAttributes.getInt(index, 2));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalAlign) {
                    this.mFlow.I2(typedArrayObtainStyledAttributes.getInt(index, 2));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalGap) {
                    this.mFlow.A2(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalGap) {
                    this.mFlow.K2(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_maxElementsWrap) {
                    this.mFlow.G2(typedArrayObtainStyledAttributes.getInt(index, -1));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.mHelperWidget = this.mFlow;
        w();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void p(ConstraintSet.Constraint constraint, HelperWidget child, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> mapIdToWidget) {
        super.p(constraint, child, layoutParams, mapIdToWidget);
        if (child instanceof androidx.constraintlayout.core.widgets.Flow) {
            androidx.constraintlayout.core.widgets.Flow flow = (androidx.constraintlayout.core.widgets.Flow) child;
            int i10 = layoutParams.orientation;
            if (i10 != -1) {
                flow.H2(i10);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout
    public void x(androidx.constraintlayout.core.widgets.VirtualLayout layout, int widthMeasureSpec, int heightMeasureSpec) {
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        if (layout != null) {
            layout.G1(mode, size, mode2, size2);
            setMeasuredDimension(layout.B1(), layout.A1());
        } else {
            setMeasuredDimension(0, 0);
        }
    }
}
