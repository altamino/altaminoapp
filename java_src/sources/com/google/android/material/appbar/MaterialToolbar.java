package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.s;
import com.google.android.material.internal.t;
import d3.k;
import d3.l;

/* JADX INFO: loaded from: classes11.dex */
public class MaterialToolbar extends Toolbar {
    private static final int DEF_STYLE_RES = k.Widget_MaterialComponents_Toolbar;
    private static final ImageView.ScaleType[] LOGO_SCALE_TYPE_ARRAY = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    @Nullable
    private Boolean logoAdjustViewBounds;

    @Nullable
    private ImageView.ScaleType logoScaleType;

    @Nullable
    private Integer navigationIconTint;
    private boolean subtitleCentered;
    private boolean titleCentered;

    public MaterialToolbar(@NonNull Context context) {
        this(context, null);
    }

    @Nullable
    public ImageView.ScaleType getLogoScaleType() {
        return this.logoScaleType;
    }

    @Nullable
    @ColorInt
    public Integer getNavigationIconTint() {
        return this.navigationIconTint;
    }

    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, d3.b.toolbarStyle);
    }

    private void U() {
        if (this.titleCentered || this.subtitleCentered) {
            TextView textViewE = t.e(this);
            TextView textViewC = t.c(this);
            if (textViewE == null && textViewC == null) {
                return;
            }
            Pair<Integer, Integer> pairR = R(textViewE, textViewC);
            if (this.titleCentered && textViewE != null) {
                T(textViewE, pairR);
            }
            if (!this.subtitleCentered || textViewC == null) {
                return;
            }
            T(textViewC, pairR);
        }
    }

    @Nullable
    private Drawable V(@Nullable Drawable drawable) {
        if (drawable == null || this.navigationIconTint == null) {
            return drawable;
        }
        Drawable drawableR = DrawableCompat.r(drawable.mutate());
        DrawableCompat.n(drawableR, this.navigationIconTint.intValue());
        return drawableR;
    }

    public void setLogoAdjustViewBounds(boolean z6) {
        Boolean bool = this.logoAdjustViewBounds;
        if (bool == null || bool.booleanValue() != z6) {
            this.logoAdjustViewBounds = Boolean.valueOf(z6);
            requestLayout();
        }
    }

    public void setLogoScaleType(@NonNull ImageView.ScaleType scaleType) {
        if (this.logoScaleType != scaleType) {
            this.logoScaleType = scaleType;
            requestLayout();
        }
    }

    public void setSubtitleCentered(boolean z6) {
        if (this.subtitleCentered != z6) {
            this.subtitleCentered = z6;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z6) {
        if (this.titleCentered != z6) {
            this.titleCentered = z6;
            requestLayout();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = DEF_STYLE_RES;
        super(r3.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        TypedArray typedArrayH = s.h(context2, attributeSet, l.MaterialToolbar, i10, i11, new int[0]);
        int i12 = l.MaterialToolbar_navigationIconTint;
        if (typedArrayH.hasValue(i12)) {
            setNavigationIconTint(typedArrayH.getColor(i12, -1));
        }
        this.titleCentered = typedArrayH.getBoolean(l.MaterialToolbar_titleCentered, false);
        this.subtitleCentered = typedArrayH.getBoolean(l.MaterialToolbar_subtitleCentered, false);
        int i13 = typedArrayH.getInt(l.MaterialToolbar_logoScaleType, -1);
        if (i13 >= 0) {
            ImageView.ScaleType[] scaleTypeArr = LOGO_SCALE_TYPE_ARRAY;
            if (i13 < scaleTypeArr.length) {
                this.logoScaleType = scaleTypeArr[i13];
            }
        }
        int i14 = l.MaterialToolbar_logoAdjustViewBounds;
        if (typedArrayH.hasValue(i14)) {
            this.logoAdjustViewBounds = Boolean.valueOf(typedArrayH.getBoolean(i14, false));
        }
        typedArrayH.recycle();
        S(context2);
    }

    private Pair<Integer, Integer> R(@Nullable TextView textView, @Nullable TextView textView2) {
        int measuredWidth = getMeasuredWidth();
        int i10 = measuredWidth / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = measuredWidth - getPaddingRight();
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                if (childAt.getRight() < i10 && childAt.getRight() > paddingLeft) {
                    paddingLeft = childAt.getRight();
                }
                if (childAt.getLeft() > i10 && childAt.getLeft() < paddingRight) {
                    paddingRight = childAt.getLeft();
                }
            }
        }
        return new Pair<>(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
    }

    private void S(Context context) {
        int color;
        Drawable background = getBackground();
        if (background != null && !(background instanceof ColorDrawable)) {
            return;
        }
        com.google.android.material.shape.g gVar = new com.google.android.material.shape.g();
        if (background != null) {
            color = ((ColorDrawable) background).getColor();
        } else {
            color = 0;
        }
        gVar.Z(ColorStateList.valueOf(color));
        gVar.O(context);
        gVar.Y(ViewCompat.y(this));
        ViewCompat.y0(this, gVar);
    }

    private void T(View view, Pair<Integer, Integer> pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = view.getMeasuredWidth();
        int i10 = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i11 = measuredWidth2 + i10;
        int iMax = Math.max(Math.max(((Integer) pair.first).intValue() - i10, 0), Math.max(i11 - ((Integer) pair.second).intValue(), 0));
        if (iMax > 0) {
            i10 += iMax;
            i11 -= iMax;
            view.measure(View.MeasureSpec.makeMeasureSpec(i11 - i10, 1073741824), view.getMeasuredHeightAndState());
        }
        view.layout(i10, view.getTop(), i11, view.getBottom());
    }

    private void W() {
        ImageView imageViewB = t.b(this);
        if (imageViewB != null) {
            Boolean bool = this.logoAdjustViewBounds;
            if (bool != null) {
                imageViewB.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.logoScaleType;
            if (scaleType != null) {
                imageViewB.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.h.e(this);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        U();
        W();
    }

    @Override // android.view.View
    @RequiresApi
    public void setElevation(float f) {
        super.setElevation(f);
        com.google.android.material.shape.h.d(this, f);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(V(drawable));
    }

    public void setNavigationIconTint(@ColorInt int i10) {
        this.navigationIconTint = Integer.valueOf(i10);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }
}
