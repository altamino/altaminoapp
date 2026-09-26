package androidx.constraintlayout.widget;

import android.content.Context;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes11.dex */
public class Group extends ConstraintHelper {
    public Group(Context context) {
        super(context);
    }

    public Group(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public Group(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void j(ConstraintLayout container) {
        i(container);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void o(AttributeSet attrs) {
        super.o(attrs);
        this.mUseViewMeasure = false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        h();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void r(ConstraintLayout container) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.widget.o1(0);
        layoutParams.widget.P0(0);
    }

    @Override // android.view.View
    public void setElevation(float elevation) {
        super.setElevation(elevation);
        h();
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        h();
    }
}
