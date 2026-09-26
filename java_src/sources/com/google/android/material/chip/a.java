package com.google.android.material.chip;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.AnimatorRes;
import androidx.annotation.AttrRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.text.BidiFormatter;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.p;
import com.google.android.material.internal.s;
import com.google.android.material.internal.u;
import com.google.android.material.resources.c;
import com.google.android.material.resources.d;
import com.google.android.material.ripple.b;
import com.google.android.material.shape.g;
import d3.l;
import e3.h;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: loaded from: classes10.dex */
public class a extends g implements Drawable.Callback, p.b {
    private static final boolean DEBUG = false;
    private static final int MAX_CHIP_ICON_HEIGHT = 24;
    private static final String NAMESPACE_APP = "http://schemas.android.com/apk/res-auto";
    private int alpha;
    private boolean checkable;

    @Nullable
    private Drawable checkedIcon;

    @Nullable
    private ColorStateList checkedIconTint;
    private boolean checkedIconVisible;

    @Nullable
    private ColorStateList chipBackgroundColor;
    private float chipCornerRadius;
    private float chipEndPadding;

    @Nullable
    private Drawable chipIcon;
    private float chipIconSize;

    @Nullable
    private ColorStateList chipIconTint;
    private boolean chipIconVisible;
    private float chipMinHeight;
    private final Paint chipPaint;
    private float chipStartPadding;

    @Nullable
    private ColorStateList chipStrokeColor;
    private float chipStrokeWidth;

    @Nullable
    private ColorStateList chipSurfaceColor;

    @Nullable
    private Drawable closeIcon;

    @Nullable
    private CharSequence closeIconContentDescription;
    private float closeIconEndPadding;

    @Nullable
    private Drawable closeIconRipple;
    private float closeIconSize;
    private float closeIconStartPadding;
    private int[] closeIconStateSet;

    @Nullable
    private ColorStateList closeIconTint;
    private boolean closeIconVisible;

    @Nullable
    private ColorFilter colorFilter;

    @Nullable
    private ColorStateList compatRippleColor;

    @NonNull
    private final Context context;
    private boolean currentChecked;

    @ColorInt
    private int currentChipBackgroundColor;

    @ColorInt
    private int currentChipStrokeColor;

    @ColorInt
    private int currentChipSurfaceColor;

    @ColorInt
    private int currentCompatRippleColor;

    @ColorInt
    private int currentCompositeSurfaceBackgroundColor;

    @ColorInt
    private int currentTextColor;

    @ColorInt
    private int currentTint;

    @Nullable
    private final Paint debugPaint;

    @NonNull
    private WeakReference<InterfaceC0198a> delegate;
    private final Paint.FontMetrics fontMetrics;
    private boolean hasChipIconTint;

    @Nullable
    private h hideMotionSpec;
    private float iconEndPadding;
    private float iconStartPadding;
    private boolean isShapeThemingEnabled;
    private int maxWidth;
    private final PointF pointF;
    private final RectF rectF;

    @Nullable
    private ColorStateList rippleColor;
    private final Path shapePath;
    private boolean shouldDrawText;

    @Nullable
    private h showMotionSpec;

    @Nullable
    private CharSequence text;

    @NonNull
    private final p textDrawableHelper;
    private float textEndPadding;
    private float textStartPadding;

    @Nullable
    private ColorStateList tint;

    @Nullable
    private PorterDuffColorFilter tintFilter;

    @Nullable
    private PorterDuff.Mode tintMode;
    private TextUtils.TruncateAt truncateAt;
    private boolean useCompatRipple;
    private static final int[] DEFAULT_STATE = {R.attr.state_enabled};
    private static final ShapeDrawable closeIconRippleMask = new ShapeDrawable(new OvalShape());

    /* JADX INFO: renamed from: com.google.android.material.chip.a$a, reason: collision with other inner class name */
    public interface InterfaceC0198a {
        void a();
    }

    private boolean R2() {
        return this.checkedIconVisible && this.checkedIcon != null && this.currentChecked;
    }

    private boolean S2() {
        return this.chipIconVisible && this.chipIcon != null;
    }

    private boolean T2() {
        return this.closeIconVisible && this.closeIcon != null;
    }

    @Nullable
    private ColorFilter q1() {
        ColorFilter colorFilter = this.colorFilter;
        return colorFilter != null ? colorFilter : this.tintFilter;
    }

    private static boolean s1(@Nullable int[] iArr, @AttrRes int i10) {
        if (iArr == null) {
            return false;
        }
        for (int i11 : iArr) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    private boolean z0() {
        return this.checkedIconVisible && this.checkedIcon != null && this.checkable;
    }

    public void C2(@Px int i10) {
        this.maxWidth = i10;
    }

    void F2(boolean z6) {
        this.shouldDrawText = z6;
    }

    public void G2(@Nullable h hVar) {
        this.showMotionSpec = hVar;
    }

    @Nullable
    public Drawable K0() {
        return this.checkedIcon;
    }

    @Nullable
    public ColorStateList L0() {
        return this.checkedIconTint;
    }

    @Nullable
    public ColorStateList M0() {
        return this.chipBackgroundColor;
    }

    public float O0() {
        return this.chipEndPadding;
    }

    public float Q0() {
        return this.chipIconSize;
    }

    boolean Q2() {
        return this.shouldDrawText;
    }

    @Nullable
    public ColorStateList R0() {
        return this.chipIconTint;
    }

    public float S0() {
        return this.chipMinHeight;
    }

    public float T0() {
        return this.chipStartPadding;
    }

    @Nullable
    public ColorStateList U0() {
        return this.chipStrokeColor;
    }

    public void U1(@Nullable ColorStateList colorStateList) {
        this.hasChipIconTint = true;
        if (this.chipIconTint != colorStateList) {
            this.chipIconTint = colorStateList;
            if (S2()) {
                DrawableCompat.o(this.chipIcon, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public float V0() {
        return this.chipStrokeWidth;
    }

    @Nullable
    public CharSequence X0() {
        return this.closeIconContentDescription;
    }

    public float Y0() {
        return this.closeIconEndPadding;
    }

    public float Z0() {
        return this.closeIconSize;
    }

    public float a1() {
        return this.closeIconStartPadding;
    }

    @NonNull
    public int[] b1() {
        return this.closeIconStateSet;
    }

    @Nullable
    public ColorStateList c1() {
        return this.closeIconTint;
    }

    public TextUtils.TruncateAt g1() {
        return this.truncateAt;
    }

    @Override // com.google.android.material.shape.g, android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.alpha;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.colorFilter;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.chipMinHeight;
    }

    @Override // com.google.android.material.shape.g, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Nullable
    public h h1() {
        return this.hideMotionSpec;
    }

    public float i1() {
        return this.iconEndPadding;
    }

    public float j1() {
        return this.iconStartPadding;
    }

    @Nullable
    public ColorStateList k1() {
        return this.rippleColor;
    }

    @Nullable
    public h l1() {
        return this.showMotionSpec;
    }

    @Nullable
    public CharSequence m1() {
        return this.text;
    }

    public float o1() {
        return this.textEndPadding;
    }

    public float p1() {
        return this.textStartPadding;
    }

    public boolean r1() {
        return this.useCompatRipple;
    }

    public boolean t1() {
        return this.checkable;
    }

    public boolean v1() {
        return this.closeIconVisible;
    }

    public void v2(@Nullable TextUtils.TruncateAt truncateAt) {
        this.truncateAt = truncateAt;
    }

    public void w2(@Nullable h hVar) {
        this.hideMotionSpec = hVar;
    }

    @NonNull
    Paint.Align y0(@NonNull Rect rect, @NonNull PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.text != null) {
            float fR0 = this.chipStartPadding + r0() + this.textStartPadding;
            if (DrawableCompat.f(this) == 0) {
                pointF.x = rect.left + fR0;
            } else {
                pointF.x = rect.right - fR0;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - x0();
        }
        return align;
    }

    @NonNull
    public static a A0(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        a aVar = new a(context, attributeSet, i10, i11);
        aVar.z1(attributeSet, i10, i11);
        return aVar;
    }

    private void C0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.isShapeThemingEnabled) {
            return;
        }
        this.chipPaint.setColor(this.currentChipBackgroundColor);
        this.chipPaint.setStyle(Paint.Style.FILL);
        this.chipPaint.setColorFilter(q1());
        this.rectF.set(rect);
        canvas.drawRoundRect(this.rectF, N0(), N0(), this.chipPaint);
    }

    private void E0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.chipStrokeWidth <= 0.0f || this.isShapeThemingEnabled) {
            return;
        }
        this.chipPaint.setColor(this.currentChipStrokeColor);
        this.chipPaint.setStyle(Paint.Style.STROKE);
        if (!this.isShapeThemingEnabled) {
            this.chipPaint.setColorFilter(q1());
        }
        RectF rectF = this.rectF;
        float f = rect.left;
        float f6 = this.chipStrokeWidth;
        rectF.set(f + (f6 / 2.0f), rect.top + (f6 / 2.0f), rect.right - (f6 / 2.0f), rect.bottom - (f6 / 2.0f));
        float f7 = this.chipCornerRadius - (this.chipStrokeWidth / 2.0f);
        canvas.drawRoundRect(this.rectF, f7, f7, this.chipPaint);
    }

    private void F0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.isShapeThemingEnabled) {
            return;
        }
        this.chipPaint.setColor(this.currentChipSurfaceColor);
        this.chipPaint.setStyle(Paint.Style.FILL);
        this.rectF.set(rect);
        canvas.drawRoundRect(this.rectF, N0(), N0(), this.chipPaint);
    }

    private void H0(@NonNull Canvas canvas, @NonNull Rect rect) {
        this.chipPaint.setColor(this.currentCompatRippleColor);
        this.chipPaint.setStyle(Paint.Style.FILL);
        this.rectF.set(rect);
        if (!this.isShapeThemingEnabled) {
            canvas.drawRoundRect(this.rectF, N0(), N0(), this.chipPaint);
        } else {
            h(new RectF(rect), this.shapePath);
            super.p(canvas, this.chipPaint, this.shapePath, u());
        }
    }

    private void I0(@NonNull Canvas canvas, @NonNull Rect rect) {
        Paint paint = this.debugPaint;
        if (paint != null) {
            paint.setColor(ColorUtils.o(ViewCompat.MEASURED_STATE_MASK, 127));
            canvas.drawRect(rect, this.debugPaint);
            if (S2() || R2()) {
                q0(rect, this.rectF);
                canvas.drawRect(this.rectF, this.debugPaint);
            }
            if (this.text != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.debugPaint);
            }
            if (T2()) {
                t0(rect, this.rectF);
                canvas.drawRect(this.rectF, this.debugPaint);
            }
            this.debugPaint.setColor(ColorUtils.o(SupportMenu.CATEGORY_MASK, 127));
            s0(rect, this.rectF);
            canvas.drawRect(this.rectF, this.debugPaint);
            this.debugPaint.setColor(ColorUtils.o(-16711936, 127));
            u0(rect, this.rectF);
            canvas.drawRect(this.rectF, this.debugPaint);
        }
    }

    private void J0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.text != null) {
            Paint.Align alignY0 = y0(rect, this.pointF);
            w0(rect, this.rectF);
            if (this.textDrawableHelper.d() != null) {
                this.textDrawableHelper.e().drawableState = getState();
                this.textDrawableHelper.j(this.context);
            }
            this.textDrawableHelper.e().setTextAlign(alignY0);
            int iSave = 0;
            boolean z6 = Math.round(this.textDrawableHelper.f(m1().toString())) > Math.round(this.rectF.width());
            if (z6) {
                iSave = canvas.save();
                canvas.clipRect(this.rectF);
            }
            CharSequence charSequenceEllipsize = this.text;
            if (z6 && this.truncateAt != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.textDrawableHelper.e(), this.rectF.width(), this.truncateAt);
            }
            CharSequence charSequence = charSequenceEllipsize;
            int length = charSequence.length();
            PointF pointF = this.pointF;
            canvas.drawText(charSequence, 0, length, pointF.x, pointF.y, this.textDrawableHelper.e());
            if (z6) {
                canvas.restoreToCount(iSave);
            }
        }
    }

    private void U2(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void V2() {
        this.compatRippleColor = this.useCompatRipple ? b.d(this.rippleColor) : null;
    }

    @TargetApi(21)
    private void W2() {
        this.closeIconRipple = new RippleDrawable(b.d(k1()), this.closeIcon, closeIconRippleMask);
    }

    private float e1() {
        Drawable drawable = this.currentChecked ? this.checkedIcon : this.chipIcon;
        float fCeil = this.chipIconSize;
        if (fCeil <= 0.0f && drawable != null) {
            fCeil = (float) Math.ceil(u.d(this.context, 24));
            if (drawable.getIntrinsicHeight() <= fCeil) {
                return drawable.getIntrinsicHeight();
            }
        }
        return fCeil;
    }

    private float f1() {
        Drawable drawable = this.currentChecked ? this.checkedIcon : this.chipIcon;
        float f = this.chipIconSize;
        return (f > 0.0f || drawable == null) ? f : drawable.getIntrinsicWidth();
    }

    private void g2(@Nullable ColorStateList colorStateList) {
        if (this.chipSurfaceColor != colorStateList) {
            this.chipSurfaceColor = colorStateList;
            onStateChange(getState());
        }
    }

    private void p0(@Nullable Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        DrawableCompat.m(drawable, DrawableCompat.f(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.closeIcon) {
            if (drawable.isStateful()) {
                drawable.setState(b1());
            }
            DrawableCompat.o(drawable, this.closeIconTint);
            return;
        }
        Drawable drawable2 = this.chipIcon;
        if (drawable == drawable2 && this.hasChipIconTint) {
            DrawableCompat.o(drawable2, this.chipIconTint);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    private static boolean w1(@Nullable ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private float x0() {
        this.textDrawableHelper.e().getFontMetrics(this.fontMetrics);
        Paint.FontMetrics fontMetrics = this.fontMetrics;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private static boolean x1(@Nullable Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    private static boolean y1(@Nullable d dVar) {
        return (dVar == null || dVar.i() == null || !dVar.i().isStateful()) ? false : true;
    }

    private void z1(@Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        TypedArray typedArrayH = s.h(this.context, attributeSet, l.Chip, i10, i11, new int[0]);
        this.isShapeThemingEnabled = typedArrayH.hasValue(l.Chip_shapeAppearance);
        g2(c.a(this.context, typedArrayH, l.Chip_chipSurfaceColor));
        K1(c.a(this.context, typedArrayH, l.Chip_chipBackgroundColor));
        Y1(typedArrayH.getDimension(l.Chip_chipMinHeight, 0.0f));
        int i12 = l.Chip_chipCornerRadius;
        if (typedArrayH.hasValue(i12)) {
            M1(typedArrayH.getDimension(i12, 0.0f));
        }
        c2(c.a(this.context, typedArrayH, l.Chip_chipStrokeColor));
        e2(typedArrayH.getDimension(l.Chip_chipStrokeWidth, 0.0f));
        D2(c.a(this.context, typedArrayH, l.Chip_rippleColor));
        I2(typedArrayH.getText(l.Chip_android_text));
        d dVarG = c.g(this.context, typedArrayH, l.Chip_android_textAppearance);
        dVarG.l(typedArrayH.getDimension(l.Chip_android_textSize, dVarG.j()));
        J2(dVarG);
        int i13 = typedArrayH.getInt(l.Chip_android_ellipsize, 0);
        if (i13 == 1) {
            v2(TextUtils.TruncateAt.START);
        } else if (i13 == 2) {
            v2(TextUtils.TruncateAt.MIDDLE);
        } else if (i13 == 3) {
            v2(TextUtils.TruncateAt.END);
        }
        X1(typedArrayH.getBoolean(l.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(NAMESPACE_APP, "chipIconEnabled") != null && attributeSet.getAttributeValue(NAMESPACE_APP, "chipIconVisible") == null) {
            X1(typedArrayH.getBoolean(l.Chip_chipIconEnabled, false));
        }
        Q1(c.e(this.context, typedArrayH, l.Chip_chipIcon));
        int i14 = l.Chip_chipIconTint;
        if (typedArrayH.hasValue(i14)) {
            U1(c.a(this.context, typedArrayH, i14));
        }
        S1(typedArrayH.getDimension(l.Chip_chipIconSize, -1.0f));
        t2(typedArrayH.getBoolean(l.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(NAMESPACE_APP, "closeIconEnabled") != null && attributeSet.getAttributeValue(NAMESPACE_APP, "closeIconVisible") == null) {
            t2(typedArrayH.getBoolean(l.Chip_closeIconEnabled, false));
        }
        h2(c.e(this.context, typedArrayH, l.Chip_closeIcon));
        r2(c.a(this.context, typedArrayH, l.Chip_closeIconTint));
        m2(typedArrayH.getDimension(l.Chip_closeIconSize, 0.0f));
        C1(typedArrayH.getBoolean(l.Chip_android_checkable, false));
        J1(typedArrayH.getBoolean(l.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(NAMESPACE_APP, "checkedIconEnabled") != null && attributeSet.getAttributeValue(NAMESPACE_APP, "checkedIconVisible") == null) {
            J1(typedArrayH.getBoolean(l.Chip_checkedIconEnabled, false));
        }
        E1(c.e(this.context, typedArrayH, l.Chip_checkedIcon));
        int i15 = l.Chip_checkedIconTint;
        if (typedArrayH.hasValue(i15)) {
            G1(c.a(this.context, typedArrayH, i15));
        }
        G2(h.c(this.context, typedArrayH, l.Chip_showMotionSpec));
        w2(h.c(this.context, typedArrayH, l.Chip_hideMotionSpec));
        a2(typedArrayH.getDimension(l.Chip_chipStartPadding, 0.0f));
        A2(typedArrayH.getDimension(l.Chip_iconStartPadding, 0.0f));
        y2(typedArrayH.getDimension(l.Chip_iconEndPadding, 0.0f));
        N2(typedArrayH.getDimension(l.Chip_textStartPadding, 0.0f));
        L2(typedArrayH.getDimension(l.Chip_textEndPadding, 0.0f));
        o2(typedArrayH.getDimension(l.Chip_closeIconStartPadding, 0.0f));
        j2(typedArrayH.getDimension(l.Chip_closeIconEndPadding, 0.0f));
        O1(typedArrayH.getDimension(l.Chip_chipEndPadding, 0.0f));
        C2(typedArrayH.getDimensionPixelSize(l.Chip_android_maxWidth, Integer.MAX_VALUE));
        typedArrayH.recycle();
    }

    protected void A1() {
        InterfaceC0198a interfaceC0198a = this.delegate.get();
        if (interfaceC0198a != null) {
            interfaceC0198a.a();
        }
    }

    public void A2(float f) {
        if (this.iconStartPadding != f) {
            float fR0 = r0();
            this.iconStartPadding = f;
            float fR1 = r0();
            invalidateSelf();
            if (fR0 != fR1) {
                A1();
            }
        }
    }

    public void B2(@DimenRes int i10) {
        A2(this.context.getResources().getDimension(i10));
    }

    public void C1(boolean z6) {
        if (this.checkable != z6) {
            this.checkable = z6;
            float fR0 = r0();
            if (!z6 && this.currentChecked) {
                this.currentChecked = false;
            }
            float fR1 = r0();
            invalidateSelf();
            if (fR0 != fR1) {
                A1();
            }
        }
    }

    public void D1(@BoolRes int i10) {
        C1(this.context.getResources().getBoolean(i10));
    }

    public void D2(@Nullable ColorStateList colorStateList) {
        if (this.rippleColor != colorStateList) {
            this.rippleColor = colorStateList;
            V2();
            onStateChange(getState());
        }
    }

    public void E1(@Nullable Drawable drawable) {
        if (this.checkedIcon != drawable) {
            float fR0 = r0();
            this.checkedIcon = drawable;
            float fR1 = r0();
            U2(this.checkedIcon);
            p0(this.checkedIcon);
            invalidateSelf();
            if (fR0 != fR1) {
                A1();
            }
        }
    }

    public void E2(@ColorRes int i10) {
        D2(AppCompatResources.a(this.context, i10));
    }

    public void F1(@DrawableRes int i10) {
        E1(AppCompatResources.b(this.context, i10));
    }

    public void G1(@Nullable ColorStateList colorStateList) {
        if (this.checkedIconTint != colorStateList) {
            this.checkedIconTint = colorStateList;
            if (z0()) {
                DrawableCompat.o(this.checkedIcon, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void H1(@ColorRes int i10) {
        G1(AppCompatResources.a(this.context, i10));
    }

    public void H2(@AnimatorRes int i10) {
        G2(h.d(this.context, i10));
    }

    public void I1(@BoolRes int i10) {
        J1(this.context.getResources().getBoolean(i10));
    }

    public void I2(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (TextUtils.equals(this.text, charSequence)) {
            return;
        }
        this.text = charSequence;
        this.textDrawableHelper.i(true);
        invalidateSelf();
        A1();
    }

    public void J1(boolean z6) {
        if (this.checkedIconVisible != z6) {
            boolean zR2 = R2();
            this.checkedIconVisible = z6;
            boolean zR3 = R2();
            if (zR2 != zR3) {
                if (zR3) {
                    p0(this.checkedIcon);
                } else {
                    U2(this.checkedIcon);
                }
                invalidateSelf();
                A1();
            }
        }
    }

    public void J2(@Nullable d dVar) {
        this.textDrawableHelper.h(dVar, this.context);
    }

    public void K1(@Nullable ColorStateList colorStateList) {
        if (this.chipBackgroundColor != colorStateList) {
            this.chipBackgroundColor = colorStateList;
            onStateChange(getState());
        }
    }

    public void K2(@StyleRes int i10) {
        J2(new d(this.context, i10));
    }

    public void L1(@ColorRes int i10) {
        K1(AppCompatResources.a(this.context, i10));
    }

    public void L2(float f) {
        if (this.textEndPadding != f) {
            this.textEndPadding = f;
            invalidateSelf();
            A1();
        }
    }

    @Deprecated
    public void M1(float f) {
        if (this.chipCornerRadius != f) {
            this.chipCornerRadius = f;
            setShapeAppearanceModel(E().w(f));
        }
    }

    public void M2(@DimenRes int i10) {
        L2(this.context.getResources().getDimension(i10));
    }

    public float N0() {
        return this.isShapeThemingEnabled ? H() : this.chipCornerRadius;
    }

    @Deprecated
    public void N1(@DimenRes int i10) {
        M1(this.context.getResources().getDimension(i10));
    }

    public void N2(float f) {
        if (this.textStartPadding != f) {
            this.textStartPadding = f;
            invalidateSelf();
            A1();
        }
    }

    public void O1(float f) {
        if (this.chipEndPadding != f) {
            this.chipEndPadding = f;
            invalidateSelf();
            A1();
        }
    }

    public void O2(@DimenRes int i10) {
        N2(this.context.getResources().getDimension(i10));
    }

    @Nullable
    public Drawable P0() {
        Drawable drawable = this.chipIcon;
        if (drawable != null) {
            return DrawableCompat.q(drawable);
        }
        return null;
    }

    public void P1(@DimenRes int i10) {
        O1(this.context.getResources().getDimension(i10));
    }

    public void P2(boolean z6) {
        if (this.useCompatRipple != z6) {
            this.useCompatRipple = z6;
            V2();
            onStateChange(getState());
        }
    }

    public void R1(@DrawableRes int i10) {
        Q1(AppCompatResources.b(this.context, i10));
    }

    public void S1(float f) {
        if (this.chipIconSize != f) {
            float fR0 = r0();
            this.chipIconSize = f;
            float fR1 = r0();
            invalidateSelf();
            if (fR0 != fR1) {
                A1();
            }
        }
    }

    public void T1(@DimenRes int i10) {
        S1(this.context.getResources().getDimension(i10));
    }

    public void V1(@ColorRes int i10) {
        U1(AppCompatResources.a(this.context, i10));
    }

    @Nullable
    public Drawable W0() {
        Drawable drawable = this.closeIcon;
        if (drawable != null) {
            return DrawableCompat.q(drawable);
        }
        return null;
    }

    public void W1(@BoolRes int i10) {
        X1(this.context.getResources().getBoolean(i10));
    }

    public void X1(boolean z6) {
        if (this.chipIconVisible != z6) {
            boolean zS2 = S2();
            this.chipIconVisible = z6;
            boolean zS3 = S2();
            if (zS2 != zS3) {
                if (zS3) {
                    p0(this.chipIcon);
                } else {
                    U2(this.chipIcon);
                }
                invalidateSelf();
                A1();
            }
        }
    }

    public void Y1(float f) {
        if (this.chipMinHeight != f) {
            this.chipMinHeight = f;
            invalidateSelf();
            A1();
        }
    }

    public void Z1(@DimenRes int i10) {
        Y1(this.context.getResources().getDimension(i10));
    }

    public void a2(float f) {
        if (this.chipStartPadding != f) {
            this.chipStartPadding = f;
            invalidateSelf();
            A1();
        }
    }

    public void b2(@DimenRes int i10) {
        a2(this.context.getResources().getDimension(i10));
    }

    public void c2(@Nullable ColorStateList colorStateList) {
        if (this.chipStrokeColor != colorStateList) {
            this.chipStrokeColor = colorStateList;
            if (this.isShapeThemingEnabled) {
                k0(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void d2(@ColorRes int i10) {
        c2(AppCompatResources.a(this.context, i10));
    }

    public void e2(float f) {
        if (this.chipStrokeWidth != f) {
            this.chipStrokeWidth = f;
            this.chipPaint.setStrokeWidth(f);
            if (this.isShapeThemingEnabled) {
                super.l0(f);
            }
            invalidateSelf();
        }
    }

    public void f2(@DimenRes int i10) {
        e2(this.context.getResources().getDimension(i10));
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.chipStartPadding + r0() + this.textStartPadding + this.textDrawableHelper.f(m1().toString()) + this.textEndPadding + v0() + this.chipEndPadding), this.maxWidth);
    }

    @Override // com.google.android.material.shape.g, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.isShapeThemingEnabled) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.chipCornerRadius);
        } else {
            outline.setRoundRect(bounds, this.chipCornerRadius);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    public void i2(@Nullable CharSequence charSequence) {
        if (this.closeIconContentDescription != charSequence) {
            this.closeIconContentDescription = BidiFormatter.c().h(charSequence);
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.g, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return w1(this.chipSurfaceColor) || w1(this.chipBackgroundColor) || w1(this.chipStrokeColor) || (this.useCompatRipple && w1(this.compatRippleColor)) || y1(this.textDrawableHelper.d()) || z0() || x1(this.chipIcon) || x1(this.checkedIcon) || w1(this.tint);
    }

    public void j2(float f) {
        if (this.closeIconEndPadding != f) {
            this.closeIconEndPadding = f;
            invalidateSelf();
            if (T2()) {
                A1();
            }
        }
    }

    public void k2(@DimenRes int i10) {
        j2(this.context.getResources().getDimension(i10));
    }

    public void l2(@DrawableRes int i10) {
        h2(AppCompatResources.b(this.context, i10));
    }

    public void m2(float f) {
        if (this.closeIconSize != f) {
            this.closeIconSize = f;
            invalidateSelf();
            if (T2()) {
                A1();
            }
        }
    }

    @Nullable
    public d n1() {
        return this.textDrawableHelper.d();
    }

    public void n2(@DimenRes int i10) {
        m2(this.context.getResources().getDimension(i10));
    }

    public void o2(float f) {
        if (this.closeIconStartPadding != f) {
            this.closeIconStartPadding = f;
            invalidateSelf();
            if (T2()) {
                A1();
            }
        }
    }

    @Override // com.google.android.material.shape.g, android.graphics.drawable.Drawable, com.google.android.material.internal.p.b
    public boolean onStateChange(@NonNull int[] iArr) {
        if (this.isShapeThemingEnabled) {
            super.onStateChange(iArr);
        }
        return B1(iArr, b1());
    }

    public void p2(@DimenRes int i10) {
        o2(this.context.getResources().getDimension(i10));
    }

    public boolean q2(@NonNull int[] iArr) {
        if (Arrays.equals(this.closeIconStateSet, iArr)) {
            return false;
        }
        this.closeIconStateSet = iArr;
        if (T2()) {
            return B1(getState(), iArr);
        }
        return false;
    }

    public void r2(@Nullable ColorStateList colorStateList) {
        if (this.closeIconTint != colorStateList) {
            this.closeIconTint = colorStateList;
            if (T2()) {
                DrawableCompat.o(this.closeIcon, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void s2(@ColorRes int i10) {
        r2(AppCompatResources.a(this.context, i10));
    }

    @Override // com.google.android.material.shape.g, android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (this.alpha != i10) {
            this.alpha = i10;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.g, android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.colorFilter != colorFilter) {
            this.colorFilter = colorFilter;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.g, android.graphics.drawable.Drawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        if (this.tint != colorStateList) {
            this.tint = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.shape.g, android.graphics.drawable.Drawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.tintMode != mode) {
            this.tintMode = mode;
            this.tintFilter = k3.a.b(this, this.tint, mode);
            invalidateSelf();
        }
    }

    public void t2(boolean z6) {
        if (this.closeIconVisible != z6) {
            boolean zT2 = T2();
            this.closeIconVisible = z6;
            boolean zT3 = T2();
            if (zT2 != zT3) {
                if (zT3) {
                    p0(this.closeIcon);
                } else {
                    U2(this.closeIcon);
                }
                invalidateSelf();
                A1();
            }
        }
    }

    public boolean u1() {
        return x1(this.closeIcon);
    }

    public void u2(@Nullable InterfaceC0198a interfaceC0198a) {
        this.delegate = new WeakReference<>(interfaceC0198a);
    }

    public void x2(@AnimatorRes int i10) {
        w2(h.d(this.context, i10));
    }

    public void y2(float f) {
        if (this.iconEndPadding != f) {
            float fR0 = r0();
            this.iconEndPadding = f;
            float fR1 = r0();
            invalidateSelf();
            if (fR0 != fR1) {
                A1();
            }
        }
    }

    public void z2(@DimenRes int i10) {
        y2(this.context.getResources().getDimension(i10));
    }

    private a(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(context, attributeSet, i10, i11);
        this.chipCornerRadius = -1.0f;
        this.chipPaint = new Paint(1);
        this.fontMetrics = new Paint.FontMetrics();
        this.rectF = new RectF();
        this.pointF = new PointF();
        this.shapePath = new Path();
        this.alpha = 255;
        this.tintMode = PorterDuff.Mode.SRC_IN;
        this.delegate = new WeakReference<>(null);
        O(context);
        this.context = context;
        p pVar = new p(this);
        this.textDrawableHelper = pVar;
        this.text = "";
        pVar.e().density = context.getResources().getDisplayMetrics().density;
        this.debugPaint = null;
        int[] iArr = DEFAULT_STATE;
        setState(iArr);
        q2(iArr);
        this.shouldDrawText = true;
        if (b.USE_FRAMEWORK_RIPPLE) {
            closeIconRippleMask.setTint(-1);
        }
    }

    private void B0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (R2()) {
            q0(rect, this.rectF);
            RectF rectF = this.rectF;
            float f = rectF.left;
            float f6 = rectF.top;
            canvas.translate(f, f6);
            this.checkedIcon.setBounds(0, 0, (int) this.rectF.width(), (int) this.rectF.height());
            this.checkedIcon.draw(canvas);
            canvas.translate(-f, -f6);
        }
    }

    private boolean B1(@NonNull int[] iArr, @NonNull int[] iArr2) {
        int colorForState;
        int colorForState2;
        boolean z6;
        boolean z10;
        int colorForState3;
        int colorForState4;
        int colorForState5;
        boolean z11;
        boolean z12;
        int colorForState6;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList = this.chipSurfaceColor;
        if (colorStateList != null) {
            colorForState = colorStateList.getColorForState(iArr, this.currentChipSurfaceColor);
        } else {
            colorForState = 0;
        }
        int iL = l(colorForState);
        boolean state = true;
        if (this.currentChipSurfaceColor != iL) {
            this.currentChipSurfaceColor = iL;
            zOnStateChange = true;
        }
        ColorStateList colorStateList2 = this.chipBackgroundColor;
        if (colorStateList2 != null) {
            colorForState2 = colorStateList2.getColorForState(iArr, this.currentChipBackgroundColor);
        } else {
            colorForState2 = 0;
        }
        int iL2 = l(colorForState2);
        if (this.currentChipBackgroundColor != iL2) {
            this.currentChipBackgroundColor = iL2;
            zOnStateChange = true;
        }
        int iG = i3.a.g(iL, iL2);
        if (this.currentCompositeSurfaceBackgroundColor != iG) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (x() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z6 | z10) {
            this.currentCompositeSurfaceBackgroundColor = iG;
            Z(ColorStateList.valueOf(iG));
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.chipStrokeColor;
        if (colorStateList3 != null) {
            colorForState3 = colorStateList3.getColorForState(iArr, this.currentChipStrokeColor);
        } else {
            colorForState3 = 0;
        }
        if (this.currentChipStrokeColor != colorForState3) {
            this.currentChipStrokeColor = colorForState3;
            zOnStateChange = true;
        }
        if (this.compatRippleColor != null && b.e(iArr)) {
            colorForState4 = this.compatRippleColor.getColorForState(iArr, this.currentCompatRippleColor);
        } else {
            colorForState4 = 0;
        }
        if (this.currentCompatRippleColor != colorForState4) {
            this.currentCompatRippleColor = colorForState4;
            if (this.useCompatRipple) {
                zOnStateChange = true;
            }
        }
        if (this.textDrawableHelper.d() != null && this.textDrawableHelper.d().i() != null) {
            colorForState5 = this.textDrawableHelper.d().i().getColorForState(iArr, this.currentTextColor);
        } else {
            colorForState5 = 0;
        }
        if (this.currentTextColor != colorForState5) {
            this.currentTextColor = colorForState5;
            zOnStateChange = true;
        }
        if (s1(getState(), R.attr.state_checked) && this.checkable) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (this.currentChecked != z11 && this.checkedIcon != null) {
            float fR0 = r0();
            this.currentChecked = z11;
            if (fR0 != r0()) {
                zOnStateChange = true;
                z12 = true;
            } else {
                z12 = false;
                zOnStateChange = true;
            }
        } else {
            z12 = false;
        }
        ColorStateList colorStateList4 = this.tint;
        if (colorStateList4 != null) {
            colorForState6 = colorStateList4.getColorForState(iArr, this.currentTint);
        } else {
            colorForState6 = 0;
        }
        if (this.currentTint != colorForState6) {
            this.currentTint = colorForState6;
            this.tintFilter = k3.a.b(this, this.tint, this.tintMode);
        } else {
            state = zOnStateChange;
        }
        if (x1(this.chipIcon)) {
            state |= this.chipIcon.setState(iArr);
        }
        if (x1(this.checkedIcon)) {
            state |= this.checkedIcon.setState(iArr);
        }
        if (x1(this.closeIcon)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.closeIcon.setState(iArr3);
        }
        if (b.USE_FRAMEWORK_RIPPLE && x1(this.closeIconRipple)) {
            state |= this.closeIconRipple.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z12) {
            A1();
        }
        return state;
    }

    private void D0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (S2()) {
            q0(rect, this.rectF);
            RectF rectF = this.rectF;
            float f = rectF.left;
            float f6 = rectF.top;
            canvas.translate(f, f6);
            this.chipIcon.setBounds(0, 0, (int) this.rectF.width(), (int) this.rectF.height());
            this.chipIcon.draw(canvas);
            canvas.translate(-f, -f6);
        }
    }

    private void G0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (T2()) {
            t0(rect, this.rectF);
            RectF rectF = this.rectF;
            float f = rectF.left;
            float f6 = rectF.top;
            canvas.translate(f, f6);
            this.closeIcon.setBounds(0, 0, (int) this.rectF.width(), (int) this.rectF.height());
            if (b.USE_FRAMEWORK_RIPPLE) {
                this.closeIconRipple.setBounds(this.closeIcon.getBounds());
                this.closeIconRipple.jumpToCurrentState();
                this.closeIconRipple.draw(canvas);
            } else {
                this.closeIcon.draw(canvas);
            }
            canvas.translate(-f, -f6);
        }
    }

    private void q0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (S2() || R2()) {
            float f = this.chipStartPadding + this.iconStartPadding;
            float fF1 = f1();
            if (DrawableCompat.f(this) == 0) {
                float f6 = rect.left + f;
                rectF.left = f6;
                rectF.right = f6 + fF1;
            } else {
                float f7 = rect.right - f;
                rectF.right = f7;
                rectF.left = f7 - fF1;
            }
            float fE1 = e1();
            float fExactCenterY = rect.exactCenterY() - (fE1 / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fE1;
        }
    }

    private void s0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.set(rect);
        if (T2()) {
            float f = this.chipEndPadding + this.closeIconEndPadding + this.closeIconSize + this.closeIconStartPadding + this.textEndPadding;
            if (DrawableCompat.f(this) == 0) {
                rectF.right = rect.right - f;
            } else {
                rectF.left = rect.left + f;
            }
        }
    }

    private void t0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (T2()) {
            float f = this.chipEndPadding + this.closeIconEndPadding;
            if (DrawableCompat.f(this) == 0) {
                float f6 = rect.right - f;
                rectF.right = f6;
                rectF.left = f6 - this.closeIconSize;
            } else {
                float f7 = rect.left + f;
                rectF.left = f7;
                rectF.right = f7 + this.closeIconSize;
            }
            float fExactCenterY = rect.exactCenterY();
            float f10 = this.closeIconSize;
            float f11 = fExactCenterY - (f10 / 2.0f);
            rectF.top = f11;
            rectF.bottom = f11 + f10;
        }
    }

    private void u0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (T2()) {
            float f = this.chipEndPadding + this.closeIconEndPadding + this.closeIconSize + this.closeIconStartPadding + this.textEndPadding;
            if (DrawableCompat.f(this) == 0) {
                float f6 = rect.right;
                rectF.right = f6;
                rectF.left = f6 - f;
            } else {
                int i10 = rect.left;
                rectF.left = i10;
                rectF.right = i10 + f;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private void w0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (this.text != null) {
            float fR0 = this.chipStartPadding + r0() + this.textStartPadding;
            float fV0 = this.chipEndPadding + v0() + this.textEndPadding;
            if (DrawableCompat.f(this) == 0) {
                rectF.left = rect.left + fR0;
                rectF.right = rect.right - fV0;
            } else {
                rectF.left = rect.left + fV0;
                rectF.right = rect.right - fR0;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    public void Q1(@Nullable Drawable drawable) {
        Drawable drawableMutate;
        Drawable drawableP0 = P0();
        if (drawableP0 != drawable) {
            float fR0 = r0();
            if (drawable != null) {
                drawableMutate = DrawableCompat.r(drawable).mutate();
            } else {
                drawableMutate = null;
            }
            this.chipIcon = drawableMutate;
            float fR1 = r0();
            U2(drawableP0);
            if (S2()) {
                p0(this.chipIcon);
            }
            invalidateSelf();
            if (fR0 != fR1) {
                A1();
            }
        }
    }

    @Override // com.google.android.material.internal.p.b
    public void a() {
        A1();
        invalidateSelf();
    }

    public void d1(@NonNull RectF rectF) {
        u0(getBounds(), rectF);
    }

    @Override // com.google.android.material.shape.g, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        int iA;
        Rect bounds = getBounds();
        if (!bounds.isEmpty() && getAlpha() != 0) {
            int i10 = this.alpha;
            if (i10 < 255) {
                iA = f3.a.a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i10);
            } else {
                iA = 0;
            }
            F0(canvas, bounds);
            C0(canvas, bounds);
            if (this.isShapeThemingEnabled) {
                super.draw(canvas);
            }
            E0(canvas, bounds);
            H0(canvas, bounds);
            D0(canvas, bounds);
            B0(canvas, bounds);
            if (this.shouldDrawText) {
                J0(canvas, bounds);
            }
            G0(canvas, bounds);
            I0(canvas, bounds);
            if (this.alpha < 255) {
                canvas.restoreToCount(iA);
            }
        }
    }

    public void h2(@Nullable Drawable drawable) {
        Drawable drawableMutate;
        Drawable drawableW0 = W0();
        if (drawableW0 != drawable) {
            float fV0 = v0();
            if (drawable != null) {
                drawableMutate = DrawableCompat.r(drawable).mutate();
            } else {
                drawableMutate = null;
            }
            this.closeIcon = drawableMutate;
            if (b.USE_FRAMEWORK_RIPPLE) {
                W2();
            }
            float fV1 = v0();
            U2(drawableW0);
            if (T2()) {
                p0(this.closeIcon);
            }
            invalidateSelf();
            if (fV0 != fV1) {
                A1();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i10) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i10);
        if (S2()) {
            zOnLayoutDirectionChanged |= DrawableCompat.m(this.chipIcon, i10);
        }
        if (R2()) {
            zOnLayoutDirectionChanged |= DrawableCompat.m(this.checkedIcon, i10);
        }
        if (T2()) {
            zOnLayoutDirectionChanged |= DrawableCompat.m(this.closeIcon, i10);
        }
        if (zOnLayoutDirectionChanged) {
            invalidateSelf();
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        boolean zOnLevelChange = super.onLevelChange(i10);
        if (S2()) {
            zOnLevelChange |= this.chipIcon.setLevel(i10);
        }
        if (R2()) {
            zOnLevelChange |= this.checkedIcon.setLevel(i10);
        }
        if (T2()) {
            zOnLevelChange |= this.closeIcon.setLevel(i10);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    float r0() {
        if (!S2() && !R2()) {
            return 0.0f;
        }
        return this.iconStartPadding + f1() + this.iconEndPadding;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j6) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j6);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z6, boolean z10) {
        boolean visible = super.setVisible(z6, z10);
        if (S2()) {
            visible |= this.chipIcon.setVisible(z6, z10);
        }
        if (R2()) {
            visible |= this.checkedIcon.setVisible(z6, z10);
        }
        if (T2()) {
            visible |= this.closeIcon.setVisible(z6, z10);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    float v0() {
        if (T2()) {
            return this.closeIconStartPadding + this.closeIconSize + this.closeIconEndPadding;
        }
        return 0.0f;
    }
}
