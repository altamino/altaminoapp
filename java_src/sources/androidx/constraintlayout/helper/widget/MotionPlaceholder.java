package androidx.constraintlayout.helper.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.Placeholder;
import androidx.constraintlayout.widget.VirtualLayout;

/* JADX INFO: loaded from: classes10.dex */
public class MotionPlaceholder extends VirtualLayout {
    private static final String TAG = "MotionPlaceholder";
    Placeholder mPlaceholder;

    public MotionPlaceholder(Context context) {
        super(context);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void u(ConstraintWidgetContainer container, Helper helper, SparseArray<ConstraintWidget> map) {
    }

    public MotionPlaceholder(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    @SuppressLint({"WrongCall"})
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        x(this.mPlaceholder, widthMeasureSpec, heightMeasureSpec);
    }

    public MotionPlaceholder(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    protected void o(AttributeSet attrs) {
        super.o(attrs);
        this.mHelperWidget = new Placeholder();
        w();
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

    public MotionPlaceholder(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr);
    }
}
