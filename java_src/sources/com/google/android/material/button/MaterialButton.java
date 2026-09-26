package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.s;
import com.google.android.material.internal.u;
import com.google.android.material.resources.c;
import com.google.android.material.shape.h;
import com.google.android.material.shape.o;
import d3.k;
import d3.l;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes5.dex */
public class MaterialButton extends AppCompatButton implements Checkable, o {
    private static final int[] CHECKABLE_STATE_SET = {R.attr.state_checkable};
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int DEF_STYLE_RES = k.Widget_MaterialComponents_Button;
    public static final int ICON_GRAVITY_END = 3;
    public static final int ICON_GRAVITY_START = 1;
    public static final int ICON_GRAVITY_TEXT_END = 4;
    public static final int ICON_GRAVITY_TEXT_START = 2;
    public static final int ICON_GRAVITY_TEXT_TOP = 32;
    public static final int ICON_GRAVITY_TOP = 16;
    private static final String LOG_TAG = "MaterialButton";
    private boolean broadcasting;
    private boolean checked;

    @Nullable
    private Drawable icon;
    private int iconGravity;

    @Px
    private int iconLeft;

    @Px
    private int iconPadding;

    @Px
    private int iconSize;

    @Nullable
    private ColorStateList iconTint;

    @Nullable
    private PorterDuff.Mode iconTintMode;

    @Px
    private int iconTop;

    @NonNull
    private final com.google.android.material.button.a materialButtonHelper;

    @NonNull
    private final LinkedHashSet<a> onCheckedChangeListeners;

    @Nullable
    private b onPressedChangeListenerInternal;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        boolean checked;

        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }

            a() {
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            a(parcel);
        }

        private void a(@NonNull Parcel parcel) {
            boolean z6 = true;
            if (parcel.readInt() != 1) {
                z6 = false;
            }
            this.checked = z6;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.checked ? 1 : 0);
        }
    }

    public interface a {
        void a(MaterialButton materialButton, boolean z6);
    }

    interface b {
        void a(MaterialButton materialButton, boolean z6);
    }

    public MaterialButton(@NonNull Context context) {
        this(context, null);
    }

    private boolean b() {
        int i10 = this.iconGravity;
        return i10 == 3 || i10 == 4;
    }

    private boolean c() {
        int i10 = this.iconGravity;
        return i10 == 1 || i10 == 2;
    }

    private boolean d() {
        int i10 = this.iconGravity;
        return i10 == 16 || i10 == 32;
    }

    public Drawable getIcon() {
        return this.icon;
    }

    public int getIconGravity() {
        return this.iconGravity;
    }

    @Px
    public int getIconPadding() {
        return this.iconPadding;
    }

    @Px
    public int getIconSize() {
        return this.iconSize;
    }

    public ColorStateList getIconTint() {
        return this.iconTint;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.iconTintMode;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.checked;
    }

    void setOnPressedChangeListenerInternal(@Nullable b bVar) {
        this.onPressedChangeListenerInternal = bVar;
    }

    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, d3.b.materialButtonStyle);
    }

    private boolean f() {
        com.google.android.material.button.a aVar = this.materialButtonHelper;
        return (aVar == null || aVar.o()) ? false : true;
    }

    private void h(boolean z6) {
        Drawable drawable = this.icon;
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.r(drawable).mutate();
            this.icon = drawableMutate;
            DrawableCompat.o(drawableMutate, this.iconTint);
            PorterDuff.Mode mode = this.iconTintMode;
            if (mode != null) {
                DrawableCompat.p(this.icon, mode);
            }
            int intrinsicWidth = this.iconSize;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.icon.getIntrinsicWidth();
            }
            int intrinsicHeight = this.iconSize;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.icon.getIntrinsicHeight();
            }
            Drawable drawable2 = this.icon;
            int i10 = this.iconLeft;
            int i11 = this.iconTop;
            drawable2.setBounds(i10, i11, intrinsicWidth + i10, intrinsicHeight + i11);
            this.icon.setVisible(true, z6);
        }
        if (z6) {
            g();
            return;
        }
        Drawable[] drawableArrA = TextViewCompat.a(this);
        Drawable drawable3 = drawableArrA[0];
        Drawable drawable4 = drawableArrA[1];
        Drawable drawable5 = drawableArrA[2];
        if ((!c() || drawable3 == this.icon) && ((!b() || drawable5 == this.icon) && (!d() || drawable4 == this.icon))) {
            return;
        }
        g();
    }

    private void i(int i10, int i11) {
        if (this.icon == null || getLayout() == null) {
            return;
        }
        if (!c() && !b()) {
            if (d()) {
                this.iconLeft = 0;
                if (this.iconGravity == 16) {
                    this.iconTop = 0;
                    h(false);
                    return;
                }
                int intrinsicHeight = this.iconSize;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.icon.getIntrinsicHeight();
                }
                int textHeight = (((((i11 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.iconPadding) - getPaddingBottom()) / 2;
                if (this.iconTop != textHeight) {
                    this.iconTop = textHeight;
                    h(false);
                    return;
                }
                return;
            }
            return;
        }
        this.iconTop = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i12 = this.iconGravity;
        if (i12 == 1 || i12 == 3 || ((i12 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i12 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.iconLeft = 0;
            h(false);
            return;
        }
        int intrinsicWidth = this.iconSize;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.icon.getIntrinsicWidth();
        }
        int textWidth = ((((i10 - getTextWidth()) - ViewCompat.H(this)) - intrinsicWidth) - this.iconPadding) - ViewCompat.I(this);
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            textWidth /= 2;
        }
        if (e() != (this.iconGravity == 4)) {
            textWidth = -textWidth;
        }
        if (this.iconLeft != textWidth) {
            this.iconLeft = textWidth;
            h(false);
        }
    }

    public boolean a() {
        com.google.android.material.button.a aVar = this.materialButtonHelper;
        return aVar != null && aVar.p();
    }

    @Dimension
    public int getInsetBottom() {
        return this.materialButtonHelper.c();
    }

    @Dimension
    public int getInsetTop() {
        return this.materialButtonHelper.d();
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (a()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKABLE_STATE_SET);
        }
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.checked);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(@DrawableRes int i10) {
        setBackgroundDrawable(i10 != 0 ? AppCompatResources.b(getContext(), i10) : null);
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (this.icon != drawable) {
            this.icon = drawable;
            h(true);
            i(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i10) {
        if (this.iconGravity != i10) {
            this.iconGravity = i10;
            i(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(@Px int i10) {
        if (this.iconPadding != i10) {
            this.iconPadding = i10;
            setCompoundDrawablePadding(i10);
        }
    }

    public void setIconResource(@DrawableRes int i10) {
        setIcon(i10 != 0 ? AppCompatResources.b(getContext(), i10) : null);
    }

    public void setIconSize(@Px int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.iconSize != i10) {
            this.iconSize = i10;
            h(true);
        }
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.iconTint != colorStateList) {
            this.iconTint = colorStateList;
            h(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.iconTintMode != mode) {
            this.iconTintMode = mode;
            h(false);
        }
    }

    public void setInsetBottom(@Dimension int i10) {
        this.materialButtonHelper.v(i10);
    }

    public void setInsetTop(@Dimension int i10) {
        this.materialButtonHelper.w(i10);
    }

    @Override // android.view.View
    public void setPressed(boolean z6) {
        b bVar = this.onPressedChangeListenerInternal;
        if (bVar != null) {
            bVar.a(this, z6);
        }
        super.setPressed(z6);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.checked);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = DEF_STYLE_RES;
        super(r3.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.onCheckedChangeListeners = new LinkedHashSet<>();
        this.checked = false;
        this.broadcasting = false;
        Context context2 = getContext();
        TypedArray typedArrayH = s.h(context2, attributeSet, l.MaterialButton, i10, i11, new int[0]);
        this.iconPadding = typedArrayH.getDimensionPixelSize(l.MaterialButton_iconPadding, 0);
        this.iconTintMode = u.h(typedArrayH.getInt(l.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.iconTint = c.a(getContext(), typedArrayH, l.MaterialButton_iconTint);
        this.icon = c.e(getContext(), typedArrayH, l.MaterialButton_icon);
        this.iconGravity = typedArrayH.getInteger(l.MaterialButton_iconGravity, 1);
        this.iconSize = typedArrayH.getDimensionPixelSize(l.MaterialButton_iconSize, 0);
        com.google.android.material.button.a aVar = new com.google.android.material.button.a(this, com.google.android.material.shape.k.e(context2, attributeSet, i10, i11).m());
        this.materialButtonHelper = aVar;
        aVar.q(typedArrayH);
        typedArrayH.recycle();
        setCompoundDrawablePadding(this.iconPadding);
        h(this.icon != null);
    }

    private boolean e() {
        if (ViewCompat.D(this) == 1) {
            return true;
        }
        return false;
    }

    private void g() {
        if (c()) {
            TextViewCompat.l(this, this.icon, null, null, null);
        } else if (b()) {
            TextViewCompat.l(this, null, null, this.icon, null);
        } else if (d()) {
            TextViewCompat.l(this, null, this.icon, null, null);
        }
    }

    @NonNull
    private String getA11yClassName() {
        Class cls;
        if (a()) {
            cls = CompoundButton.class;
        } else {
            cls = Button.class;
        }
        return cls.getName();
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        if (textAlignment != 1) {
            if (textAlignment != 6 && textAlignment != 3) {
                if (textAlignment != 4) {
                    return Layout.Alignment.ALIGN_NORMAL;
                }
                return Layout.Alignment.ALIGN_CENTER;
            }
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return getGravityTextAlignment();
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (gravity != 1) {
            if (gravity != 5 && gravity != 8388613) {
                return Layout.Alignment.ALIGN_NORMAL;
            }
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextWidth() {
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        return Math.min((int) paint.measureText(string), getLayout().getEllipsizedWidth());
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Px
    public int getCornerRadius() {
        if (f()) {
            return this.materialButtonHelper.b();
        }
        return 0;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        if (f()) {
            return this.materialButtonHelper.h();
        }
        return null;
    }

    @NonNull
    public com.google.android.material.shape.k getShapeAppearanceModel() {
        if (f()) {
            return this.materialButtonHelper.i();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (f()) {
            return this.materialButtonHelper.j();
        }
        return null;
    }

    @Px
    public int getStrokeWidth() {
        if (f()) {
            return this.materialButtonHelper.k();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    @Nullable
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        if (f()) {
            return this.materialButtonHelper.l();
        }
        return super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (f()) {
            return this.materialButtonHelper.m();
        }
        return super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (f()) {
            h.f(this, this.materialButtonHelper.f());
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(a());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        i(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.checked = this.checked;
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        i(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.view.View
    public void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.icon != null) {
            if (this.icon.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    public void setBackground(@NonNull Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i10) {
        if (f()) {
            this.materialButtonHelper.r(i10);
        } else {
            super.setBackgroundColor(i10);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(@NonNull Drawable drawable) {
        if (f()) {
            if (drawable != getBackground()) {
                Log.w(LOG_TAG, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
                this.materialButtonHelper.s();
                super.setBackgroundDrawable(drawable);
                return;
            }
            getBackground().setState(drawable.getState());
            return;
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z6) {
        if (f()) {
            this.materialButtonHelper.t(z6);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z6) {
        if (a() && isEnabled() && this.checked != z6) {
            this.checked = z6;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                ((MaterialButtonToggleGroup) getParent()).n(this, this.checked);
            }
            if (this.broadcasting) {
                return;
            }
            this.broadcasting = true;
            Iterator<a> it = this.onCheckedChangeListeners.iterator();
            while (it.hasNext()) {
                it.next().a(this, this.checked);
            }
            this.broadcasting = false;
        }
    }

    public void setCornerRadius(@Px int i10) {
        if (f()) {
            this.materialButtonHelper.u(i10);
        }
    }

    public void setCornerRadiusResource(@DimenRes int i10) {
        if (f()) {
            setCornerRadius(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override // android.view.View
    @RequiresApi
    public void setElevation(float f) {
        super.setElevation(f);
        if (f()) {
            this.materialButtonHelper.f().Y(f);
        }
    }

    public void setIconTintResource(@ColorRes int i10) {
        setIconTint(AppCompatResources.a(getContext(), i10));
    }

    void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (f()) {
            this.materialButtonHelper.x(colorStateList);
        }
    }

    public void setRippleColorResource(@ColorRes int i10) {
        if (f()) {
            setRippleColor(AppCompatResources.a(getContext(), i10));
        }
    }

    @Override // com.google.android.material.shape.o
    public void setShapeAppearanceModel(@NonNull com.google.android.material.shape.k kVar) {
        if (f()) {
            this.materialButtonHelper.y(kVar);
            return;
        }
        throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
    }

    void setShouldDrawSurfaceColorStroke(boolean z6) {
        if (f()) {
            this.materialButtonHelper.z(z6);
        }
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (f()) {
            this.materialButtonHelper.A(colorStateList);
        }
    }

    public void setStrokeColorResource(@ColorRes int i10) {
        if (f()) {
            setStrokeColor(AppCompatResources.a(getContext(), i10));
        }
    }

    public void setStrokeWidth(@Px int i10) {
        if (f()) {
            this.materialButtonHelper.B(i10);
        }
    }

    public void setStrokeWidthResource(@DimenRes int i10) {
        if (f()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    @RestrictTo
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (f()) {
            this.materialButtonHelper.C(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    @RestrictTo
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (f()) {
            this.materialButtonHelper.D(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // android.view.View
    @RequiresApi
    public void setTextAlignment(int i10) {
        super.setTextAlignment(i10);
        i(getMeasuredWidth(), getMeasuredHeight());
    }
}
