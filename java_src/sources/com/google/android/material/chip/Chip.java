package com.google.android.material.chip;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.BoolRes;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.internal.i;
import com.google.android.material.internal.s;
import com.google.android.material.internal.u;
import com.google.android.material.resources.f;
import com.google.android.material.shape.o;
import d3.j;
import d3.k;
import d3.l;
import e3.h;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class Chip extends AppCompatCheckBox implements com.google.android.material.chip.a.InterfaceC0198a, o, i<Chip> {
    private static final String BUTTON_ACCESSIBILITY_CLASS_NAME = "android.widget.Button";
    private static final int CHIP_BODY_VIRTUAL_ID = 0;
    private static final int CLOSE_ICON_VIRTUAL_ID = 1;
    private static final String COMPOUND_BUTTON_ACCESSIBILITY_CLASS_NAME = "android.widget.CompoundButton";
    private static final String GENERIC_VIEW_ACCESSIBILITY_CLASS_NAME = "android.view.View";
    private static final int MIN_TOUCH_TARGET_DP = 48;
    private static final String NAMESPACE_ANDROID = "http://schemas.android.com/apk/res/android";
    private static final String RADIO_BUTTON_ACCESSIBILITY_CLASS_NAME = "android.widget.RadioButton";
    private static final String TAG = "Chip";

    @Nullable
    private CharSequence accessibilityClassName;

    @Nullable
    private com.google.android.material.chip.a chipDrawable;
    private boolean closeIconFocused;
    private boolean closeIconHovered;
    private boolean closeIconPressed;
    private boolean deferredCheckedValue;
    private boolean ensureMinTouchTargetSize;
    private final f fontCallback;

    @Nullable
    private InsetDrawable insetBackgroundDrawable;
    private int lastLayoutDirection;

    @Dimension
    private int minTouchTargetSize;

    @Nullable
    private CompoundButton.OnCheckedChangeListener onCheckedChangeListener;

    @Nullable
    private i.a<Chip> onCheckedChangeListenerInternal;

    @Nullable
    private View.OnClickListener onCloseIconClickListener;
    private final Rect rect;
    private final RectF rectF;

    @Nullable
    private RippleDrawable ripple;

    @NonNull
    private final d touchHelper;
    private boolean touchHelperEnabled;
    private static final int DEF_STYLE_RES = k.Widget_MaterialComponents_Chip_Action;
    private static final Rect EMPTY_BOUNDS = new Rect();
    private static final int[] SELECTED_STATE = {R.attr.state_selected};
    private static final int[] CHECKABLE_STATE_SET = {R.attr.state_checkable};

    class a extends f {
        @Override // com.google.android.material.resources.f
        public void a(int i10) {
        }

        a() {
        }

        @Override // com.google.android.material.resources.f
        public void b(@NonNull Typeface typeface, boolean z6) {
            Chip chip = Chip.this;
            chip.setText(chip.chipDrawable.Q2() ? Chip.this.chipDrawable.m1() : Chip.this.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    class b implements CompoundButton.OnCheckedChangeListener {
        b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
            if (Chip.this.onCheckedChangeListenerInternal != null) {
                Chip.this.onCheckedChangeListenerInternal.a(Chip.this, z6);
            }
            if (Chip.this.onCheckedChangeListener != null) {
                Chip.this.onCheckedChangeListener.onCheckedChanged(compoundButton, z6);
            }
        }
    }

    class c extends ViewOutlineProvider {
        c() {
        }

        @Override // android.view.ViewOutlineProvider
        @TargetApi(21)
        public void getOutline(View view, @NonNull Outline outline) {
            if (Chip.this.chipDrawable != null) {
                Chip.this.chipDrawable.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    private class d extends ExploreByTouchHelper {
        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void B(int i10, boolean z6) {
            if (i10 == 1) {
                Chip.this.closeIconFocused = z6;
                Chip.this.refreshDrawableState();
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void p(@NonNull List<Integer> list) {
            list.add(0);
            if (Chip.this.o() && Chip.this.t() && Chip.this.onCloseIconClickListener != null) {
                list.add(1);
            }
        }

        d(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void A(int i10, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (i10 != 1) {
                accessibilityNodeInfoCompat.i0("");
                accessibilityNodeInfoCompat.Z(Chip.EMPTY_BOUNDS);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                accessibilityNodeInfoCompat.i0(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                Context context = Chip.this.getContext();
                int i11 = j.mtrl_chip_close_icon_content_description;
                Object[] objArr = new Object[1];
                objArr[0] = TextUtils.isEmpty(text) ? "" : text;
                accessibilityNodeInfoCompat.i0(context.getString(i11, objArr).trim());
            }
            accessibilityNodeInfoCompat.Z(Chip.this.getCloseIconTouchBoundsInt());
            accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            accessibilityNodeInfoCompat.m0(Chip.this.isEnabled());
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected int o(float f, float f6) {
            return (Chip.this.o() && Chip.this.getCloseIconTouchBounds().contains(f, f6)) ? 1 : 0;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected boolean w(int i10, int i11, Bundle bundle) {
            if (i11 != 16) {
                return false;
            }
            if (i10 == 0) {
                return Chip.this.performClick();
            }
            if (i10 == 1) {
                return Chip.this.u();
            }
            return false;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void z(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.c0(Chip.this.s());
            accessibilityNodeInfoCompat.f0(Chip.this.isClickable());
            accessibilityNodeInfoCompat.e0(Chip.this.getAccessibilityClassName());
            accessibilityNodeInfoCompat.L0(Chip.this.getText());
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    @Nullable
    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.insetBackgroundDrawable;
        return insetDrawable == null ? this.chipDrawable : insetDrawable;
    }

    public Drawable getChipDrawable() {
        return this.chipDrawable;
    }

    public void setAccessibilityClassName(@Nullable CharSequence charSequence) {
        this.accessibilityClassName = charSequence;
    }

    public void setCheckedIconVisible(@BoolRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.I1(i10);
        }
    }

    public void setChipIconVisible(@BoolRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.W1(i10);
        }
    }

    public void setCloseIconVisible(@BoolRes int i10) {
        setCloseIconVisible(getResources().getBoolean(i10));
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i10, i11, i12, i13);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i10, i11, i12, i13);
    }

    @Override // com.google.android.material.internal.i
    @RestrictTo
    public void setInternalOnCheckedChangeListener(@Nullable i.a<Chip> aVar) {
        this.onCheckedChangeListenerInternal = aVar;
    }

    @Override // android.widget.TextView
    public void setLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i10);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i10);
    }

    @Override // android.widget.TextView
    public void setMinLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i10);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListener = onCheckedChangeListener;
    }

    public void setTextAppearance(@Nullable com.google.android.material.resources.d dVar) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.J2(dVar);
        }
        C();
    }

    @CallSuper
    public boolean u() {
        boolean z6 = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.onCloseIconClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z6 = true;
        }
        if (this.touchHelperEnabled) {
            this.touchHelper.H(1, 1);
        }
        return z6;
    }

    public boolean w() {
        return this.ensureMinTouchTargetSize;
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d3.b.chipStyle);
    }

    private void A() {
        this.ripple = new RippleDrawable(com.google.android.material.ripple.b.d(this.chipDrawable.k1()), getBackgroundDrawable(), null);
        this.chipDrawable.P2(false);
        ViewCompat.y0(this, this.ripple);
        B();
    }

    private void D(@Nullable AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "background") != null) {
            Log.w(TAG, "Do not set the background; Chip manages its own background drawable.");
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "drawableLeft") != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "drawableStart") != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "drawableEnd") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (attributeSet.getAttributeValue(NAMESPACE_ANDROID, "drawableRight") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (!attributeSet.getAttributeBooleanValue(NAMESPACE_ANDROID, "singleLine", true) || attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, "lines", 1) != 1 || attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, "minLines", 1) != 1 || attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, "maxLines", 1) != 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        if (attributeSet.getAttributeIntValue(NAMESPACE_ANDROID, "gravity", 8388627) != 8388627) {
            Log.w(TAG, "Chip text must be vertically center and start aligned");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public RectF getCloseIconTouchBounds() {
        this.rectF.setEmpty();
        if (o() && this.onCloseIconClickListener != null) {
            this.chipDrawable.d1(this.rectF);
        }
        return this.rectF;
    }

    @Nullable
    private com.google.android.material.resources.d getTextAppearance() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.n1();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        return (aVar == null || aVar.W0() == null) ? false : true;
    }

    private void p(Context context, @Nullable AttributeSet attributeSet, int i10) {
        TypedArray typedArrayH = s.h(context, attributeSet, l.Chip, i10, DEF_STYLE_RES, new int[0]);
        this.ensureMinTouchTargetSize = typedArrayH.getBoolean(l.Chip_ensureMinTouchTargetSize, false);
        this.minTouchTargetSize = (int) Math.ceil(typedArrayH.getDimension(l.Chip_chipMinTouchTargetSize, (float) Math.ceil(u.d(getContext(), 48))));
        typedArrayH.recycle();
    }

    private void q() {
        setOutlineProvider(new c());
    }

    private void r(int i10, int i11, int i12, int i13) {
        this.insetBackgroundDrawable = new InsetDrawable((Drawable) this.chipDrawable, i10, i11, i12, i13);
    }

    private void setCloseIconHovered(boolean z6) {
        if (this.closeIconHovered != z6) {
            this.closeIconHovered = z6;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z6) {
        if (this.closeIconPressed != z6) {
            this.closeIconPressed = z6;
            refreshDrawableState();
        }
    }

    private void v() {
        if (this.insetBackgroundDrawable != null) {
            this.insetBackgroundDrawable = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            z();
        }
    }

    private void x(@Nullable com.google.android.material.chip.a aVar) {
        if (aVar != null) {
            aVar.u2(null);
        }
    }

    private void z() {
        if (com.google.android.material.ripple.b.USE_FRAMEWORK_RIPPLE) {
            A();
            return;
        }
        this.chipDrawable.P2(true);
        ViewCompat.y0(this, getBackgroundDrawable());
        B();
        n();
    }

    @Override // com.google.android.material.chip.a.InterfaceC0198a
    public void a() {
        m(this.minTouchTargetSize);
        requestLayout();
        invalidateOutline();
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        if (this.touchHelperEnabled) {
            return this.touchHelper.i(motionEvent) || super.dispatchHoverEvent(motionEvent);
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.touchHelperEnabled) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (!this.touchHelper.j(keyEvent) || this.touchHelper.n() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.accessibilityClassName)) {
            return this.accessibilityClassName;
        }
        if (!s()) {
            return isClickable() ? BUTTON_ACCESSIBILITY_CLASS_NAME : "android.view.View";
        }
        ViewParent parent = getParent();
        return ((parent instanceof ChipGroup) && ((ChipGroup) parent).h()) ? RADIO_BUTTON_ACCESSIBILITY_CLASS_NAME : COMPOUND_BUTTON_ACCESSIBILITY_CLASS_NAME;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.K0();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.L0();
        }
        return null;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.M0();
        }
        return null;
    }

    public float getChipCornerRadius() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return Math.max(0.0f, aVar.N0());
        }
        return 0.0f;
    }

    public float getChipEndPadding() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.O0();
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getChipIcon() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.P0();
        }
        return null;
    }

    public float getChipIconSize() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.Q0();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.R0();
        }
        return null;
    }

    public float getChipMinHeight() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.S0();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.T0();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.U0();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.V0();
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getCloseIcon() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.W0();
        }
        return null;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.X0();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.Y0();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.Z0();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.a1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.c1();
        }
        return null;
    }

    @Override // android.widget.TextView
    @Nullable
    public TextUtils.TruncateAt getEllipsize() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.g1();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(@NonNull Rect rect) {
        if (this.touchHelperEnabled && (this.touchHelper.n() == 1 || this.touchHelper.k() == 1)) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Nullable
    public h getHideMotionSpec() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.h1();
        }
        return null;
    }

    public float getIconEndPadding() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.i1();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.j1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.k1();
        }
        return null;
    }

    @NonNull
    public com.google.android.material.shape.k getShapeAppearanceModel() {
        return this.chipDrawable.E();
    }

    @Nullable
    public h getShowMotionSpec() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.l1();
        }
        return null;
    }

    public float getTextEndPadding() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.o1();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            return aVar.p1();
        }
        return 0.0f;
    }

    public boolean m(@Dimension int i10) {
        this.minTouchTargetSize = i10;
        if (!w()) {
            if (this.insetBackgroundDrawable != null) {
                v();
            } else {
                z();
            }
            return false;
        }
        int iMax = Math.max(0, i10 - this.chipDrawable.getIntrinsicHeight());
        int iMax2 = Math.max(0, i10 - this.chipDrawable.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            if (this.insetBackgroundDrawable != null) {
                v();
            } else {
                z();
            }
            return false;
        }
        int i11 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i12 = iMax > 0 ? iMax / 2 : 0;
        if (this.insetBackgroundDrawable != null) {
            Rect rect = new Rect();
            this.insetBackgroundDrawable.getPadding(rect);
            if (rect.top == i12 && rect.bottom == i12 && rect.left == i11 && rect.right == i11) {
                z();
                return true;
            }
        }
        if (getMinHeight() != i10) {
            setMinHeight(i10);
        }
        if (getMinWidth() != i10) {
            setMinWidth(i10);
        }
        r(i11, i12, i11, i12);
        z();
        return true;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, SELECTED_STATE);
        }
        if (s()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKABLE_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    public boolean s() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        return aVar != null && aVar.t1();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        Log.w(TAG, "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i10) {
        Log.w(TAG, "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        Log.w(TAG, "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        Log.w(TAG, "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z6) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.C1(z6);
        }
    }

    public void setCheckableResource(@BoolRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.D1(i10);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z6) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar == null) {
            this.deferredCheckedValue = z6;
        } else if (aVar.t1()) {
            super.setChecked(z6);
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.E1(drawable);
        }
    }

    public void setCheckedIconResource(@DrawableRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.F1(i10);
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.G1(colorStateList);
        }
    }

    public void setCheckedIconTintResource(@ColorRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.H1(i10);
        }
    }

    public void setCheckedIconVisible(boolean z6) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.J1(z6);
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.K1(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(@ColorRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.L1(i10);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.M1(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.N1(i10);
        }
    }

    public void setChipDrawable(@NonNull com.google.android.material.chip.a aVar) {
        com.google.android.material.chip.a aVar2 = this.chipDrawable;
        if (aVar2 != aVar) {
            x(aVar2);
            this.chipDrawable = aVar;
            aVar.F2(false);
            k(this.chipDrawable);
            m(this.minTouchTargetSize);
        }
    }

    public void setChipEndPadding(float f) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.O1(f);
        }
    }

    public void setChipEndPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.P1(i10);
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.Q1(drawable);
        }
    }

    public void setChipIconResource(@DrawableRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.R1(i10);
        }
    }

    public void setChipIconSize(float f) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.S1(f);
        }
    }

    public void setChipIconSizeResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.T1(i10);
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.U1(colorStateList);
        }
    }

    public void setChipIconTintResource(@ColorRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.V1(i10);
        }
    }

    public void setChipIconVisible(boolean z6) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.X1(z6);
        }
    }

    public void setChipMinHeight(float f) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.Y1(f);
        }
    }

    public void setChipMinHeightResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.Z1(i10);
        }
    }

    public void setChipStartPadding(float f) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.a2(f);
        }
    }

    public void setChipStartPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.b2(i10);
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.c2(colorStateList);
        }
    }

    public void setChipStrokeColorResource(@ColorRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.d2(i10);
        }
    }

    public void setChipStrokeWidth(float f) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.e2(f);
        }
    }

    public void setChipStrokeWidthResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.f2(i10);
        }
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.h2(drawable);
        }
        y();
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.i2(charSequence);
        }
    }

    public void setCloseIconEndPadding(float f) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.j2(f);
        }
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.k2(i10);
        }
    }

    public void setCloseIconResource(@DrawableRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.l2(i10);
        }
        y();
    }

    public void setCloseIconSize(float f) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.m2(f);
        }
    }

    public void setCloseIconSizeResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.n2(i10);
        }
    }

    public void setCloseIconStartPadding(float f) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.o2(f);
        }
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.p2(i10);
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.r2(colorStateList);
        }
    }

    public void setCloseIconTintResource(@ColorRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.s2(i10);
        }
    }

    public void setCloseIconVisible(boolean z6) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.t2(z6);
        }
        y();
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.chipDrawable == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.v2(truncateAt);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z6) {
        this.ensureMinTouchTargetSize = z6;
        m(this.minTouchTargetSize);
    }

    public void setHideMotionSpec(@Nullable h hVar) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.w2(hVar);
        }
    }

    public void setHideMotionSpecResource(@AnimatorRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.x2(i10);
        }
    }

    public void setIconEndPadding(float f) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.y2(f);
        }
    }

    public void setIconEndPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.z2(i10);
        }
    }

    public void setIconStartPadding(float f) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.A2(f);
        }
    }

    public void setIconStartPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.B2(i10);
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i10) {
        if (this.chipDrawable == null) {
            return;
        }
        super.setLayoutDirection(i10);
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.onCloseIconClickListener = onClickListener;
        y();
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.D2(colorStateList);
        }
        if (this.chipDrawable.r1()) {
            return;
        }
        A();
    }

    public void setRippleColorResource(@ColorRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.E2(i10);
            if (this.chipDrawable.r1()) {
                return;
            }
            A();
        }
    }

    @Override // com.google.android.material.shape.o
    public void setShapeAppearanceModel(@NonNull com.google.android.material.shape.k kVar) {
        this.chipDrawable.setShapeAppearanceModel(kVar);
    }

    public void setShowMotionSpec(@Nullable h hVar) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.G2(hVar);
        }
    }

    public void setShowMotionSpecResource(@AnimatorRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.H2(i10);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z6) {
        if (!z6) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z6);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(aVar.Q2() ? null : charSequence, bufferType);
        com.google.android.material.chip.a aVar2 = this.chipDrawable;
        if (aVar2 != null) {
            aVar2.I2(charSequence);
        }
    }

    public void setTextEndPadding(float f) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.L2(f);
        }
    }

    public void setTextEndPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.M2(i10);
        }
    }

    public void setTextStartPadding(float f) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.N2(f);
        }
    }

    public void setTextStartPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.O2(i10);
        }
    }

    public boolean t() {
        com.google.android.material.chip.a aVar = this.chipDrawable;
        return aVar != null && aVar.v1();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Chip(Context context, AttributeSet attributeSet, int i10) {
        int i11 = DEF_STYLE_RES;
        super(r3.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.rect = new Rect();
        this.rectF = new RectF();
        this.fontCallback = new a();
        Context context2 = getContext();
        D(attributeSet);
        com.google.android.material.chip.a aVarA0 = com.google.android.material.chip.a.A0(context2, attributeSet, i10, i11);
        p(context2, attributeSet, i10);
        setChipDrawable(aVarA0);
        aVarA0.Y(ViewCompat.y(this));
        TypedArray typedArrayH = s.h(context2, attributeSet, l.Chip, i10, i11, new int[0]);
        boolean zHasValue = typedArrayH.hasValue(l.Chip_shapeAppearance);
        typedArrayH.recycle();
        this.touchHelper = new d(this);
        y();
        if (!zHasValue) {
            q();
        }
        setChecked(this.deferredCheckedValue);
        setText(aVarA0.m1());
        setEllipsize(aVarA0.g1());
        C();
        if (!this.chipDrawable.Q2()) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        B();
        if (w()) {
            setMinHeight(this.minTouchTargetSize);
        }
        this.lastLayoutDirection = ViewCompat.D(this);
        super.setOnCheckedChangeListener(new b());
    }

    private void B() {
        com.google.android.material.chip.a aVar;
        if (!TextUtils.isEmpty(getText()) && (aVar = this.chipDrawable) != null) {
            int iO0 = (int) (aVar.O0() + this.chipDrawable.o1() + this.chipDrawable.v0());
            int iT0 = (int) (this.chipDrawable.T0() + this.chipDrawable.p1() + this.chipDrawable.r0());
            if (this.insetBackgroundDrawable != null) {
                Rect rect = new Rect();
                this.insetBackgroundDrawable.getPadding(rect);
                iT0 += rect.left;
                iO0 += rect.right;
            }
            ViewCompat.M0(this, iT0, getPaddingTop(), iO0, getPaddingBottom());
        }
    }

    private void C() {
        TextPaint paint = getPaint();
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            paint.drawableState = aVar.getState();
        }
        com.google.android.material.resources.d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.n(getContext(), paint, this.fontCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.rect.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.rect;
    }

    private void k(@NonNull com.google.android.material.chip.a aVar) {
        aVar.u2(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    @NonNull
    private int[] l() {
        ?? IsEnabled = isEnabled();
        int i10 = IsEnabled;
        if (this.closeIconFocused) {
            i10 = IsEnabled + 1;
        }
        int i11 = i10;
        if (this.closeIconHovered) {
            i11 = i10 + 1;
        }
        int i12 = i11;
        if (this.closeIconPressed) {
            i12 = i11 + 1;
        }
        int i13 = i12;
        if (isChecked()) {
            i13 = i12 + 1;
        }
        int[] iArr = new int[i13];
        int i14 = 0;
        if (isEnabled()) {
            iArr[0] = 16842910;
            i14 = 1;
        }
        if (this.closeIconFocused) {
            iArr[i14] = 16842908;
            i14++;
        }
        if (this.closeIconHovered) {
            iArr[i14] = 16843623;
            i14++;
        }
        if (this.closeIconPressed) {
            iArr[i14] = 16842919;
            i14++;
        }
        if (isChecked()) {
            iArr[i14] = 16842913;
        }
        return iArr;
    }

    private void n() {
        if (getBackgroundDrawable() == this.insetBackgroundDrawable && this.chipDrawable.getCallback() == null) {
            this.chipDrawable.setCallback(this.insetBackgroundDrawable);
        }
    }

    private void y() {
        if (o() && t() && this.onCloseIconClickListener != null) {
            ViewCompat.u0(this, this.touchHelper);
            this.touchHelperEnabled = true;
        } else {
            ViewCompat.u0(this, null);
            this.touchHelperEnabled = false;
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null && aVar.u1() && this.chipDrawable.q2(l())) {
            invalidate();
        }
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.h.f(this, this.chipDrawable);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z6, int i10, Rect rect) {
        super.onFocusChanged(z6, i10, rect);
        if (this.touchHelperEnabled) {
            this.touchHelper.v(z6, i10, rect);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 7) {
            if (actionMasked == 10) {
                setCloseIconHovered(false);
            }
        } else {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        int iG;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(s());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatR0 = AccessibilityNodeInfoCompat.R0(accessibilityNodeInfo);
            if (chipGroup.c()) {
                iG = chipGroup.g(this);
            } else {
                iG = -1;
            }
            accessibilityNodeInfoCompatR0.h0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(chipGroup.b(this), 1, iG, 1, false, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @Nullable
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(@NonNull MotionEvent motionEvent, int i10) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        if (this.lastLayoutDirection != i10) {
            this.lastLayoutDirection = i10;
            B();
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        if (r0 != 3) goto L23;
     */
    @Override // android.widget.TextView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        boolean z6;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.closeIconPressed) {
                        if (zContains) {
                            return true;
                        }
                        setCloseIconPressed(false);
                        return true;
                    }
                }
            } else {
                if (this.closeIconPressed) {
                    u();
                    z6 = true;
                }
                setCloseIconPressed(false);
                if (z6) {
                    return true;
                }
            }
            z6 = false;
            setCloseIconPressed(false);
            if (z6) {
                return true;
            }
        } else if (zContains) {
            setCloseIconPressed(true);
            return true;
        }
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable != getBackgroundDrawable() && drawable != this.ripple) {
            Log.w(TAG, "Do not set the background; Chip manages its own background drawable.");
        } else {
            super.setBackground(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != getBackgroundDrawable() && drawable != this.ripple) {
            Log.w(TAG, "Do not set the background drawable; Chip manages its own background drawable.");
        } else {
            super.setBackgroundDrawable(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z6) {
        setCheckedIconVisible(z6);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i10) {
        setCheckedIconVisible(i10);
    }

    @Deprecated
    public void setChipIconEnabled(boolean z6) {
        setChipIconVisible(z6);
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i10) {
        setChipIconVisible(i10);
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(@StringRes int i10) {
        setText(getResources().getString(i10));
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z6) {
        setCloseIconVisible(z6);
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i10) {
        setCloseIconVisible(i10);
    }

    @Override // android.view.View
    @RequiresApi
    public void setElevation(float f) {
        super.setElevation(f);
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.Y(f);
        }
    }

    @Override // android.widget.TextView
    public void setGravity(int i10) {
        if (i10 != 8388627) {
            Log.w(TAG, "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i10);
        }
    }

    @Override // android.widget.TextView
    public void setMaxWidth(@Px int i10) {
        super.setMaxWidth(i10);
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.C2(i10);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.K2(i10);
        }
        C();
    }

    public void setTextAppearanceResource(@StyleRes int i10) {
        setTextAppearance(getContext(), i10);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i10) {
        super.setTextAppearance(i10);
        com.google.android.material.chip.a aVar = this.chipDrawable;
        if (aVar != null) {
            aVar.K2(i10);
        }
        C();
    }
}
