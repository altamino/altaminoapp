package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.cardview.widget.CardView;
import com.google.android.material.internal.s;
import com.google.android.material.shape.h;
import com.google.android.material.shape.o;
import d3.k;
import d3.l;

/* JADX INFO: loaded from: classes6.dex */
public class a extends CardView implements Checkable, o {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.cardview.widget.CardView";
    public static final int CHECKED_ICON_GRAVITY_BOTTOM_END = 8388693;
    public static final int CHECKED_ICON_GRAVITY_BOTTOM_START = 8388691;
    public static final int CHECKED_ICON_GRAVITY_TOP_END = 8388661;
    public static final int CHECKED_ICON_GRAVITY_TOP_START = 8388659;
    private static final String LOG_TAG = "MaterialCardView";

    @NonNull
    private final b cardViewHelper;
    private boolean checked;
    private boolean dragged;
    private boolean isParentCardViewDoneInitializing;
    private InterfaceC0197a onCheckedChangeListener;
    private static final int[] CHECKABLE_STATE_SET = {R.attr.state_checkable};
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int[] DRAGGED_STATE_SET = {d3.b.state_dragged};
    private static final int DEF_STYLE_RES = k.Widget_MaterialComponents_CardView;

    /* JADX INFO: renamed from: com.google.android.material.card.a$a, reason: collision with other inner class name */
    public interface InterfaceC0197a {
    }

    public a(Context context) {
        this(context, null);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.checked;
    }

    public boolean l() {
        return this.dragged;
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@ColorInt int i10) {
        this.cardViewHelper.J(ColorStateList.valueOf(i10));
    }

    public void setCheckedIconMarginResource(@DimenRes int i10) {
        if (i10 != -1) {
            this.cardViewHelper.P(getResources().getDimensionPixelSize(i10));
        }
    }

    public void setOnCheckedChangeListener(@Nullable InterfaceC0197a interfaceC0197a) {
    }

    public void setStrokeColor(@ColorInt int i10) {
        setStrokeColor(ColorStateList.valueOf(i10));
    }

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d3.b.materialCardViewStyle);
    }

    @NonNull
    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.cardViewHelper.j().getBounds());
        return rectF;
    }

    private void j() {
        if (Build.VERSION.SDK_INT > 26) {
            this.cardViewHelper.i();
        }
    }

    @Override // androidx.cardview.widget.CardView
    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return this.cardViewHelper.k();
    }

    @NonNull
    public ColorStateList getCardForegroundColor() {
        return this.cardViewHelper.l();
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.cardViewHelper.m();
    }

    public int getCheckedIconGravity() {
        return this.cardViewHelper.n();
    }

    @Dimension
    public int getCheckedIconMargin() {
        return this.cardViewHelper.o();
    }

    @Dimension
    public int getCheckedIconSize() {
        return this.cardViewHelper.p();
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.cardViewHelper.q();
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.cardViewHelper.A().bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.cardViewHelper.A().left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.cardViewHelper.A().right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.cardViewHelper.A().top;
    }

    @FloatRange
    public float getProgress() {
        return this.cardViewHelper.u();
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.cardViewHelper.s();
    }

    public ColorStateList getRippleColor() {
        return this.cardViewHelper.v();
    }

    @NonNull
    public com.google.android.material.shape.k getShapeAppearanceModel() {
        return this.cardViewHelper.w();
    }

    @ColorInt
    @Deprecated
    public int getStrokeColor() {
        return this.cardViewHelper.x();
    }

    @Nullable
    public ColorStateList getStrokeColorStateList() {
        return this.cardViewHelper.y();
    }

    @Dimension
    public int getStrokeWidth() {
        return this.cardViewHelper.z();
    }

    public boolean k() {
        b bVar = this.cardViewHelper;
        return bVar != null && bVar.D();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 3);
        if (k()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKABLE_STATE_SET);
        }
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKED_STATE_SET);
        }
        if (l()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, DRAGGED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.isParentCardViewDoneInitializing) {
            if (!this.cardViewHelper.C()) {
                Log.i(LOG_TAG, "Setting a custom background is not supported.");
                this.cardViewHelper.I(true);
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        this.cardViewHelper.J(colorStateList);
    }

    public void setCardForegroundColor(@Nullable ColorStateList colorStateList) {
        this.cardViewHelper.K(colorStateList);
    }

    public void setCheckable(boolean z6) {
        this.cardViewHelper.L(z6);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z6) {
        if (this.checked != z6) {
            toggle();
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        this.cardViewHelper.N(drawable);
    }

    public void setCheckedIconGravity(int i10) {
        if (this.cardViewHelper.n() != i10) {
            this.cardViewHelper.O(i10);
        }
    }

    public void setCheckedIconMargin(@Dimension int i10) {
        this.cardViewHelper.P(i10);
    }

    public void setCheckedIconResource(@DrawableRes int i10) {
        this.cardViewHelper.N(AppCompatResources.b(getContext(), i10));
    }

    public void setCheckedIconSize(@Dimension int i10) {
        this.cardViewHelper.Q(i10);
    }

    public void setCheckedIconSizeResource(@DimenRes int i10) {
        if (i10 != 0) {
            this.cardViewHelper.Q(getResources().getDimensionPixelSize(i10));
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        this.cardViewHelper.R(colorStateList);
    }

    public void setDragged(boolean z6) {
        if (this.dragged != z6) {
            this.dragged = z6;
            refreshDrawableState();
            j();
            invalidate();
        }
    }

    public void setProgress(@FloatRange float f) {
        this.cardViewHelper.T(f);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        this.cardViewHelper.U(colorStateList);
    }

    public void setRippleColorResource(@ColorRes int i10) {
        this.cardViewHelper.U(AppCompatResources.a(getContext(), i10));
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.cardViewHelper.W(colorStateList);
        invalidate();
    }

    public void setStrokeWidth(@Dimension int i10) {
        this.cardViewHelper.X(i10);
        invalidate();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a(Context context, AttributeSet attributeSet, int i10) {
        int i11 = DEF_STYLE_RES;
        super(r3.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.checked = false;
        this.dragged = false;
        this.isParentCardViewDoneInitializing = true;
        TypedArray typedArrayH = s.h(getContext(), attributeSet, l.MaterialCardView, i10, i11, new int[0]);
        b bVar = new b(this, attributeSet, i10, i11);
        this.cardViewHelper = bVar;
        bVar.J(super.getCardBackgroundColor());
        bVar.Y(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        bVar.G(typedArrayH);
        typedArrayH.recycle();
    }

    float getCardViewRadius() {
        return super.getRadius();
    }

    void m(int i10, int i11, int i12, int i13) {
        super.h(i10, i11, i12, i13);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        h.f(this, this.cardViewHelper.j());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
        accessibilityNodeInfo.setCheckable(k());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.cardViewHelper.H(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        this.cardViewHelper.d0();
    }

    @Override // android.view.View
    public void setClickable(boolean z6) {
        super.setClickable(z6);
        b bVar = this.cardViewHelper;
        if (bVar != null) {
            bVar.b0();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.cardViewHelper.f0();
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z6) {
        super.setPreventCornerOverlap(z6);
        this.cardViewHelper.f0();
        this.cardViewHelper.c0();
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f) {
        super.setRadius(f);
        this.cardViewHelper.S(f);
    }

    @Override // com.google.android.material.shape.o
    public void setShapeAppearanceModel(@NonNull com.google.android.material.shape.k kVar) {
        setClipToOutline(kVar.u(getBoundsAsRectF()));
        this.cardViewHelper.V(kVar);
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z6) {
        super.setUseCompatPadding(z6);
        this.cardViewHelper.f0();
        this.cardViewHelper.c0();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (k() && isEnabled()) {
            this.checked = !this.checked;
            refreshDrawableState();
            j();
            this.cardViewHelper.M(this.checked);
        }
    }
}
