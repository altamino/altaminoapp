package com.google.android.material.card;

import android.R;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.resources.c;
import com.google.android.material.shape.d;
import com.google.android.material.shape.e;
import com.google.android.material.shape.g;
import com.google.android.material.shape.j;
import com.google.android.material.shape.k;
import d3.f;
import d3.l;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
class b {
    private static final float CARD_VIEW_SHADOW_MULTIPLIER = 1.5f;
    private static final int CHECKED_ICON_LAYER_INDEX = 2;
    private static final Drawable CHECKED_ICON_NONE;
    private static final double COS_45 = Math.cos(Math.toRadians(45.0d));
    private static final int DEFAULT_STROKE_VALUE = -1;

    @NonNull
    private final g bgDrawable;
    private boolean checkable;

    @Nullable
    private Drawable checkedIcon;
    private int checkedIconGravity;

    @Dimension
    private int checkedIconMargin;

    @Dimension
    private int checkedIconSize;

    @Nullable
    private ColorStateList checkedIconTint;

    @Nullable
    private LayerDrawable clickableForegroundDrawable;

    @Nullable
    private g compatRippleDrawable;

    @Nullable
    private Drawable fgDrawable;

    @NonNull
    private final g foregroundContentDrawable;

    @Nullable
    private g foregroundShapeDrawable;

    @NonNull
    private final com.google.android.material.card.a materialCardView;

    @Nullable
    private ColorStateList rippleColor;

    @Nullable
    private Drawable rippleDrawable;

    @Nullable
    private k shapeAppearanceModel;

    @Nullable
    private ColorStateList strokeColor;

    @Dimension
    private int strokeWidth;

    @NonNull
    private final Rect userContentPadding = new Rect();
    private boolean isBackgroundOverwritten = false;

    class a extends InsetDrawable {
        @Override // android.graphics.drawable.Drawable
        public int getMinimumHeight() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumWidth() {
            return -1;
        }

        @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean getPadding(Rect rect) {
            return false;
        }

        a(Drawable drawable, int i10, int i11, int i12, int i13) {
            super(drawable, i10, i11, i12, i13);
        }
    }

    private boolean E() {
        return (this.checkedIconGravity & 80) == 80;
    }

    private boolean F() {
        return (this.checkedIconGravity & GravityCompat.END) == 8388613;
    }

    @NonNull
    Rect A() {
        return this.userContentPadding;
    }

    boolean C() {
        return this.isBackgroundOverwritten;
    }

    boolean D() {
        return this.checkable;
    }

    void I(boolean z6) {
        this.isBackgroundOverwritten = z6;
    }

    void L(boolean z6) {
        this.checkable = z6;
    }

    void P(@Dimension int i10) {
        this.checkedIconMargin = i10;
    }

    void Q(@Dimension int i10) {
        this.checkedIconSize = i10;
    }

    @NonNull
    g j() {
        return this.bgDrawable;
    }

    @Nullable
    Drawable m() {
        return this.checkedIcon;
    }

    int n() {
        return this.checkedIconGravity;
    }

    @Dimension
    int o() {
        return this.checkedIconMargin;
    }

    @Dimension
    int p() {
        return this.checkedIconSize;
    }

    @Nullable
    ColorStateList q() {
        return this.checkedIconTint;
    }

    @Nullable
    ColorStateList v() {
        return this.rippleColor;
    }

    k w() {
        return this.shapeAppearanceModel;
    }

    @Nullable
    ColorStateList y() {
        return this.strokeColor;
    }

    @Dimension
    int z() {
        return this.strokeWidth;
    }

    @NonNull
    private Drawable B(Drawable drawable) {
        int iCeil;
        int iCeil2;
        if (this.materialCardView.getUseCompatPadding()) {
            iCeil2 = (int) Math.ceil(d());
            iCeil = (int) Math.ceil(c());
        } else {
            iCeil = 0;
            iCeil2 = 0;
        }
        return new a(drawable, iCeil, iCeil2, iCeil, iCeil2);
    }

    private boolean Z() {
        return this.materialCardView.getPreventCornerOverlap() && !e();
    }

    private float a() {
        return Math.max(Math.max(b(this.shapeAppearanceModel.q(), this.bgDrawable.H()), b(this.shapeAppearanceModel.s(), this.bgDrawable.I())), Math.max(b(this.shapeAppearanceModel.k(), this.bgDrawable.t()), b(this.shapeAppearanceModel.i(), this.bgDrawable.s())));
    }

    private boolean a0() {
        return this.materialCardView.getPreventCornerOverlap() && e() && this.materialCardView.getUseCompatPadding();
    }

    private float b(d dVar, float f) {
        if (dVar instanceof j) {
            return (float) ((1.0d - COS_45) * ((double) f));
        }
        if (dVar instanceof e) {
            return f / 2.0f;
        }
        return 0.0f;
    }

    private float c() {
        return this.materialCardView.getMaxCardElevation() + (a0() ? a() : 0.0f);
    }

    private float d() {
        return (this.materialCardView.getMaxCardElevation() * 1.5f) + (a0() ? a() : 0.0f);
    }

    private boolean e() {
        return this.bgDrawable.R();
    }

    private void e0(Drawable drawable) {
        if (this.materialCardView.getForeground() instanceof InsetDrawable) {
            ((InsetDrawable) this.materialCardView.getForeground()).setDrawable(drawable);
        } else {
            this.materialCardView.setForeground(B(drawable));
        }
    }

    @NonNull
    private Drawable f() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        g gVarH = h();
        this.compatRippleDrawable = gVarH;
        gVarH.Z(this.rippleColor);
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, this.compatRippleDrawable);
        return stateListDrawable;
    }

    @NonNull
    private Drawable g() {
        if (!com.google.android.material.ripple.b.USE_FRAMEWORK_RIPPLE) {
            return f();
        }
        this.foregroundShapeDrawable = h();
        return new RippleDrawable(this.rippleColor, null, this.foregroundShapeDrawable);
    }

    private void g0() {
        Drawable drawable;
        if (com.google.android.material.ripple.b.USE_FRAMEWORK_RIPPLE && (drawable = this.rippleDrawable) != null) {
            ((RippleDrawable) drawable).setColor(this.rippleColor);
            return;
        }
        g gVar = this.compatRippleDrawable;
        if (gVar != null) {
            gVar.Z(this.rippleColor);
        }
    }

    @NonNull
    private g h() {
        return new g(this.shapeAppearanceModel);
    }

    @NonNull
    private Drawable r() {
        if (this.rippleDrawable == null) {
            this.rippleDrawable = g();
        }
        if (this.clickableForegroundDrawable == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.rippleDrawable, this.foregroundContentDrawable, this.checkedIcon});
            this.clickableForegroundDrawable = layerDrawable;
            layerDrawable.setId(2, f.mtrl_card_checked_layer_id);
        }
        return this.clickableForegroundDrawable;
    }

    private float t() {
        if (this.materialCardView.getPreventCornerOverlap() && this.materialCardView.getUseCompatPadding()) {
            return (float) ((1.0d - COS_45) * ((double) this.materialCardView.getCardViewRadius()));
        }
        return 0.0f;
    }

    void G(@NonNull TypedArray typedArray) {
        ColorStateList colorStateListA = c.a(this.materialCardView.getContext(), typedArray, l.MaterialCardView_strokeColor);
        this.strokeColor = colorStateListA;
        if (colorStateListA == null) {
            this.strokeColor = ColorStateList.valueOf(-1);
        }
        this.strokeWidth = typedArray.getDimensionPixelSize(l.MaterialCardView_strokeWidth, 0);
        boolean z6 = typedArray.getBoolean(l.MaterialCardView_android_checkable, false);
        this.checkable = z6;
        this.materialCardView.setLongClickable(z6);
        this.checkedIconTint = c.a(this.materialCardView.getContext(), typedArray, l.MaterialCardView_checkedIconTint);
        N(c.e(this.materialCardView.getContext(), typedArray, l.MaterialCardView_checkedIcon));
        Q(typedArray.getDimensionPixelSize(l.MaterialCardView_checkedIconSize, 0));
        P(typedArray.getDimensionPixelSize(l.MaterialCardView_checkedIconMargin, 0));
        this.checkedIconGravity = typedArray.getInteger(l.MaterialCardView_checkedIconGravity, 8388661);
        ColorStateList colorStateListA2 = c.a(this.materialCardView.getContext(), typedArray, l.MaterialCardView_rippleColor);
        this.rippleColor = colorStateListA2;
        if (colorStateListA2 == null) {
            this.rippleColor = ColorStateList.valueOf(i3.a.d(this.materialCardView, d3.b.colorControlHighlight));
        }
        K(c.a(this.materialCardView.getContext(), typedArray, l.MaterialCardView_cardForegroundColor));
        g0();
        d0();
        h0();
        this.materialCardView.setBackgroundInternal(B(this.bgDrawable));
        Drawable drawableR = this.materialCardView.isClickable() ? r() : this.foregroundContentDrawable;
        this.fgDrawable = drawableR;
        this.materialCardView.setForeground(B(drawableR));
    }

    void H(int i10, int i11) {
        int iCeil;
        int iCeil2;
        int i12;
        int i13;
        if (this.clickableForegroundDrawable != null) {
            if (this.materialCardView.getUseCompatPadding()) {
                iCeil = (int) Math.ceil(d() * 2.0f);
                iCeil2 = (int) Math.ceil(c() * 2.0f);
            } else {
                iCeil = 0;
                iCeil2 = 0;
            }
            int i14 = F() ? ((i10 - this.checkedIconMargin) - this.checkedIconSize) - iCeil2 : this.checkedIconMargin;
            int i15 = E() ? this.checkedIconMargin : ((i11 - this.checkedIconMargin) - this.checkedIconSize) - iCeil;
            int i16 = F() ? this.checkedIconMargin : ((i10 - this.checkedIconMargin) - this.checkedIconSize) - iCeil2;
            int i17 = E() ? ((i11 - this.checkedIconMargin) - this.checkedIconSize) - iCeil : this.checkedIconMargin;
            if (ViewCompat.D(this.materialCardView) == 1) {
                i13 = i16;
                i12 = i14;
            } else {
                i12 = i16;
                i13 = i14;
            }
            this.clickableForegroundDrawable.setLayerInset(2, i13, i17, i12, i15);
        }
    }

    void J(ColorStateList colorStateList) {
        this.bgDrawable.Z(colorStateList);
    }

    void K(@Nullable ColorStateList colorStateList) {
        g gVar = this.foregroundContentDrawable;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        gVar.Z(colorStateList);
    }

    public void M(boolean z6) {
        Drawable drawable = this.checkedIcon;
        if (drawable != null) {
            drawable.setAlpha(z6 ? 255 : 0);
        }
    }

    void N(@Nullable Drawable drawable) {
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.r(drawable).mutate();
            this.checkedIcon = drawableMutate;
            DrawableCompat.o(drawableMutate, this.checkedIconTint);
            M(this.materialCardView.isChecked());
        } else {
            this.checkedIcon = CHECKED_ICON_NONE;
        }
        LayerDrawable layerDrawable = this.clickableForegroundDrawable;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(f.mtrl_card_checked_layer_id, this.checkedIcon);
        }
    }

    void O(int i10) {
        this.checkedIconGravity = i10;
        H(this.materialCardView.getMeasuredWidth(), this.materialCardView.getMeasuredHeight());
    }

    void R(@Nullable ColorStateList colorStateList) {
        this.checkedIconTint = colorStateList;
        Drawable drawable = this.checkedIcon;
        if (drawable != null) {
            DrawableCompat.o(drawable, colorStateList);
        }
    }

    void S(float f) {
        V(this.shapeAppearanceModel.w(f));
        this.fgDrawable.invalidateSelf();
        if (a0() || Z()) {
            c0();
        }
        if (a0()) {
            f0();
        }
    }

    void T(@FloatRange float f) {
        this.bgDrawable.a0(f);
        g gVar = this.foregroundContentDrawable;
        if (gVar != null) {
            gVar.a0(f);
        }
        g gVar2 = this.foregroundShapeDrawable;
        if (gVar2 != null) {
            gVar2.a0(f);
        }
    }

    void U(@Nullable ColorStateList colorStateList) {
        this.rippleColor = colorStateList;
        g0();
    }

    void V(@NonNull k kVar) {
        this.shapeAppearanceModel = kVar;
        this.bgDrawable.setShapeAppearanceModel(kVar);
        g gVar = this.bgDrawable;
        gVar.e0(!gVar.R());
        g gVar2 = this.foregroundContentDrawable;
        if (gVar2 != null) {
            gVar2.setShapeAppearanceModel(kVar);
        }
        g gVar3 = this.foregroundShapeDrawable;
        if (gVar3 != null) {
            gVar3.setShapeAppearanceModel(kVar);
        }
        g gVar4 = this.compatRippleDrawable;
        if (gVar4 != null) {
            gVar4.setShapeAppearanceModel(kVar);
        }
    }

    void W(ColorStateList colorStateList) {
        if (this.strokeColor == colorStateList) {
            return;
        }
        this.strokeColor = colorStateList;
        h0();
    }

    void X(@Dimension int i10) {
        if (i10 == this.strokeWidth) {
            return;
        }
        this.strokeWidth = i10;
        h0();
    }

    void Y(int i10, int i11, int i12, int i13) {
        this.userContentPadding.set(i10, i11, i12, i13);
        c0();
    }

    void b0() {
        Drawable drawable = this.fgDrawable;
        Drawable drawableR = this.materialCardView.isClickable() ? r() : this.foregroundContentDrawable;
        this.fgDrawable = drawableR;
        if (drawable != drawableR) {
            e0(drawableR);
        }
    }

    void d0() {
        this.bgDrawable.Y(this.materialCardView.getCardElevation());
    }

    void h0() {
        this.foregroundContentDrawable.j0(this.strokeWidth, this.strokeColor);
    }

    @RequiresApi
    void i() {
        Drawable drawable = this.rippleDrawable;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i10 = bounds.bottom;
            this.rippleDrawable.setBounds(bounds.left, bounds.top, bounds.right, i10 - 1);
            this.rippleDrawable.setBounds(bounds.left, bounds.top, bounds.right, i10);
        }
    }

    ColorStateList k() {
        return this.bgDrawable.x();
    }

    ColorStateList l() {
        return this.foregroundContentDrawable.x();
    }

    float s() {
        return this.bgDrawable.H();
    }

    @FloatRange
    float u() {
        return this.bgDrawable.y();
    }

    @ColorInt
    int x() {
        ColorStateList colorStateList = this.strokeColor;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    public b(@NonNull com.google.android.material.card.a aVar, AttributeSet attributeSet, int i10, @StyleRes int i11) {
        this.materialCardView = aVar;
        g gVar = new g(aVar.getContext(), attributeSet, i10, i11);
        this.bgDrawable = gVar;
        gVar.O(aVar.getContext());
        gVar.f0(-12303292);
        k.b bVarV = gVar.E().v();
        TypedArray typedArrayObtainStyledAttributes = aVar.getContext().obtainStyledAttributes(attributeSet, l.CardView, i10, d3.k.CardView);
        int i12 = l.CardView_cardCornerRadius;
        if (typedArrayObtainStyledAttributes.hasValue(i12)) {
            bVarV.o(typedArrayObtainStyledAttributes.getDimension(i12, 0.0f));
        }
        this.foregroundContentDrawable = new g();
        V(bVarV.m());
        typedArrayObtainStyledAttributes.recycle();
    }

    void c0() {
        float fA;
        if (!Z() && !a0()) {
            fA = 0.0f;
        } else {
            fA = a();
        }
        int iT = (int) (fA - t());
        com.google.android.material.card.a aVar = this.materialCardView;
        Rect rect = this.userContentPadding;
        aVar.m(rect.left + iT, rect.top + iT, rect.right + iT, rect.bottom + iT);
    }

    void f0() {
        if (!C()) {
            this.materialCardView.setBackgroundInternal(B(this.bgDrawable));
        }
        this.materialCardView.setForeground(B(this.fgDrawable));
    }

    static {
        ColorDrawable colorDrawable;
        if (Build.VERSION.SDK_INT <= 28) {
            colorDrawable = new ColorDrawable();
        } else {
            colorDrawable = null;
        }
        CHECKED_ICON_NONE = colorDrawable;
    }
}
