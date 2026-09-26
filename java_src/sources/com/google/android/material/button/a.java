package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.u;
import com.google.android.material.resources.c;
import com.google.android.material.shape.g;
import com.google.android.material.shape.k;
import com.google.android.material.shape.o;
import d3.b;
import d3.l;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
class a {

    @Nullable
    private ColorStateList backgroundTint;

    @Nullable
    private PorterDuff.Mode backgroundTintMode;
    private boolean checkable;
    private int cornerRadius;
    private int elevation;
    private int insetBottom;
    private int insetLeft;
    private int insetRight;
    private int insetTop;

    @Nullable
    private Drawable maskDrawable;
    private final MaterialButton materialButton;

    @Nullable
    private ColorStateList rippleColor;
    private LayerDrawable rippleDrawable;

    @NonNull
    private k shapeAppearanceModel;

    @Nullable
    private ColorStateList strokeColor;
    private int strokeWidth;

    @ChecksSdkIntAtLeast
    private static final boolean IS_MIN_LOLLIPOP = true;
    private static final boolean IS_LOLLIPOP = false;
    private boolean shouldDrawSurfaceColorStroke = false;
    private boolean backgroundOverwritten = false;
    private boolean cornerRadiusSet = false;

    @Nullable
    private g n() {
        return g(true);
    }

    int b() {
        return this.cornerRadius;
    }

    public int c() {
        return this.insetBottom;
    }

    public int d() {
        return this.insetTop;
    }

    @Nullable
    g f() {
        return g(false);
    }

    @Nullable
    ColorStateList h() {
        return this.rippleColor;
    }

    @NonNull
    k i() {
        return this.shapeAppearanceModel;
    }

    @Nullable
    ColorStateList j() {
        return this.strokeColor;
    }

    int k() {
        return this.strokeWidth;
    }

    ColorStateList l() {
        return this.backgroundTint;
    }

    PorterDuff.Mode m() {
        return this.backgroundTintMode;
    }

    boolean o() {
        return this.backgroundOverwritten;
    }

    boolean p() {
        return this.checkable;
    }

    void s() {
        this.backgroundOverwritten = true;
        this.materialButton.setSupportBackgroundTintList(this.backgroundTint);
        this.materialButton.setSupportBackgroundTintMode(this.backgroundTintMode);
    }

    void t(boolean z6) {
        this.checkable = z6;
    }

    private void E(@Dimension int i10, @Dimension int i11) {
        int I = ViewCompat.I(this.materialButton);
        int paddingTop = this.materialButton.getPaddingTop();
        int iH = ViewCompat.H(this.materialButton);
        int paddingBottom = this.materialButton.getPaddingBottom();
        int i12 = this.insetTop;
        int i13 = this.insetBottom;
        this.insetBottom = i11;
        this.insetTop = i10;
        if (!this.backgroundOverwritten) {
            F();
        }
        ViewCompat.M0(this.materialButton, I, (paddingTop + i10) - i12, iH, (paddingBottom + i11) - i13);
    }

    private void F() {
        this.materialButton.setInternalBackground(a());
        g gVarF = f();
        if (gVarF != null) {
            gVarF.Y(this.elevation);
        }
    }

    private void G(@NonNull k kVar) {
        if (IS_LOLLIPOP && !this.backgroundOverwritten) {
            int I = ViewCompat.I(this.materialButton);
            int paddingTop = this.materialButton.getPaddingTop();
            int iH = ViewCompat.H(this.materialButton);
            int paddingBottom = this.materialButton.getPaddingBottom();
            F();
            ViewCompat.M0(this.materialButton, I, paddingTop, iH, paddingBottom);
            return;
        }
        if (f() != null) {
            f().setShapeAppearanceModel(kVar);
        }
        if (n() != null) {
            n().setShapeAppearanceModel(kVar);
        }
        if (e() != null) {
            e().setShapeAppearanceModel(kVar);
        }
    }

    @NonNull
    private InsetDrawable I(Drawable drawable) {
        return new InsetDrawable(drawable, this.insetLeft, this.insetTop, this.insetRight, this.insetBottom);
    }

    private Drawable a() {
        g gVar = new g(this.shapeAppearanceModel);
        gVar.O(this.materialButton.getContext());
        DrawableCompat.o(gVar, this.backgroundTint);
        PorterDuff.Mode mode = this.backgroundTintMode;
        if (mode != null) {
            DrawableCompat.p(gVar, mode);
        }
        gVar.j0(this.strokeWidth, this.strokeColor);
        g gVar2 = new g(this.shapeAppearanceModel);
        gVar2.setTint(0);
        gVar2.i0(this.strokeWidth, this.shouldDrawSurfaceColorStroke ? i3.a.d(this.materialButton, b.colorSurface) : 0);
        if (IS_MIN_LOLLIPOP) {
            g gVar3 = new g(this.shapeAppearanceModel);
            this.maskDrawable = gVar3;
            DrawableCompat.n(gVar3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(com.google.android.material.ripple.b.d(this.rippleColor), I(new LayerDrawable(new Drawable[]{gVar2, gVar})), this.maskDrawable);
            this.rippleDrawable = rippleDrawable;
            return rippleDrawable;
        }
        com.google.android.material.ripple.a aVar = new com.google.android.material.ripple.a(this.shapeAppearanceModel);
        this.maskDrawable = aVar;
        DrawableCompat.o(aVar, com.google.android.material.ripple.b.d(this.rippleColor));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gVar2, gVar, this.maskDrawable});
        this.rippleDrawable = layerDrawable;
        return I(layerDrawable);
    }

    @Nullable
    private g g(boolean z6) {
        LayerDrawable layerDrawable = this.rippleDrawable;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return IS_MIN_LOLLIPOP ? (g) ((LayerDrawable) ((InsetDrawable) this.rippleDrawable.getDrawable(0)).getDrawable()).getDrawable(!z6 ? 1 : 0) : (g) this.rippleDrawable.getDrawable(!z6 ? 1 : 0);
    }

    void A(@Nullable ColorStateList colorStateList) {
        if (this.strokeColor != colorStateList) {
            this.strokeColor = colorStateList;
            H();
        }
    }

    void B(int i10) {
        if (this.strokeWidth != i10) {
            this.strokeWidth = i10;
            H();
        }
    }

    void C(@Nullable ColorStateList colorStateList) {
        if (this.backgroundTint != colorStateList) {
            this.backgroundTint = colorStateList;
            if (f() != null) {
                DrawableCompat.o(f(), this.backgroundTint);
            }
        }
    }

    void D(@Nullable PorterDuff.Mode mode) {
        if (this.backgroundTintMode != mode) {
            this.backgroundTintMode = mode;
            if (f() == null || this.backgroundTintMode == null) {
                return;
            }
            DrawableCompat.p(f(), this.backgroundTintMode);
        }
    }

    @Nullable
    public o e() {
        LayerDrawable layerDrawable = this.rippleDrawable;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.rippleDrawable.getNumberOfLayers() > 2 ? (o) this.rippleDrawable.getDrawable(2) : (o) this.rippleDrawable.getDrawable(1);
    }

    void q(@NonNull TypedArray typedArray) {
        this.insetLeft = typedArray.getDimensionPixelOffset(l.MaterialButton_android_insetLeft, 0);
        this.insetRight = typedArray.getDimensionPixelOffset(l.MaterialButton_android_insetRight, 0);
        this.insetTop = typedArray.getDimensionPixelOffset(l.MaterialButton_android_insetTop, 0);
        this.insetBottom = typedArray.getDimensionPixelOffset(l.MaterialButton_android_insetBottom, 0);
        int i10 = l.MaterialButton_cornerRadius;
        if (typedArray.hasValue(i10)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(i10, -1);
            this.cornerRadius = dimensionPixelSize;
            y(this.shapeAppearanceModel.w(dimensionPixelSize));
            this.cornerRadiusSet = true;
        }
        this.strokeWidth = typedArray.getDimensionPixelSize(l.MaterialButton_strokeWidth, 0);
        this.backgroundTintMode = u.h(typedArray.getInt(l.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.backgroundTint = c.a(this.materialButton.getContext(), typedArray, l.MaterialButton_backgroundTint);
        this.strokeColor = c.a(this.materialButton.getContext(), typedArray, l.MaterialButton_strokeColor);
        this.rippleColor = c.a(this.materialButton.getContext(), typedArray, l.MaterialButton_rippleColor);
        this.checkable = typedArray.getBoolean(l.MaterialButton_android_checkable, false);
        this.elevation = typedArray.getDimensionPixelSize(l.MaterialButton_elevation, 0);
        int I = ViewCompat.I(this.materialButton);
        int paddingTop = this.materialButton.getPaddingTop();
        int iH = ViewCompat.H(this.materialButton);
        int paddingBottom = this.materialButton.getPaddingBottom();
        if (typedArray.hasValue(l.MaterialButton_android_background)) {
            s();
        } else {
            F();
        }
        ViewCompat.M0(this.materialButton, I + this.insetLeft, paddingTop + this.insetTop, iH + this.insetRight, paddingBottom + this.insetBottom);
    }

    void u(int i10) {
        if (this.cornerRadiusSet && this.cornerRadius == i10) {
            return;
        }
        this.cornerRadius = i10;
        this.cornerRadiusSet = true;
        y(this.shapeAppearanceModel.w(i10));
    }

    public void v(@Dimension int i10) {
        E(this.insetTop, i10);
    }

    public void w(@Dimension int i10) {
        E(i10, this.insetBottom);
    }

    void x(@Nullable ColorStateList colorStateList) {
        if (this.rippleColor != colorStateList) {
            this.rippleColor = colorStateList;
            boolean z6 = IS_MIN_LOLLIPOP;
            if (z6 && (this.materialButton.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.materialButton.getBackground()).setColor(com.google.android.material.ripple.b.d(colorStateList));
            } else {
                if (z6 || !(this.materialButton.getBackground() instanceof com.google.android.material.ripple.a)) {
                    return;
                }
                ((com.google.android.material.ripple.a) this.materialButton.getBackground()).setTintList(com.google.android.material.ripple.b.d(colorStateList));
            }
        }
    }

    void y(@NonNull k kVar) {
        this.shapeAppearanceModel = kVar;
        G(kVar);
    }

    void z(boolean z6) {
        this.shouldDrawSurfaceColorStroke = z6;
        H();
    }

    a(MaterialButton materialButton, @NonNull k kVar) {
        this.materialButton = materialButton;
        this.shapeAppearanceModel = kVar;
    }

    private void H() {
        int iD;
        g gVarF = f();
        g gVarN = n();
        if (gVarF != null) {
            gVarF.j0(this.strokeWidth, this.strokeColor);
            if (gVarN != null) {
                float f = this.strokeWidth;
                if (this.shouldDrawSurfaceColorStroke) {
                    iD = i3.a.d(this.materialButton, b.colorSurface);
                } else {
                    iD = 0;
                }
                gVarN.i0(f, iD);
            }
        }
    }

    void r(int i10) {
        if (f() != null) {
            f().setTint(i10);
        }
    }
}
