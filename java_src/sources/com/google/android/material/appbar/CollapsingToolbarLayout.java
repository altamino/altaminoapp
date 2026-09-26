package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.internal.s;
import d3.k;
import d3.l;

/* JADX INFO: loaded from: classes9.dex */
public class CollapsingToolbarLayout extends FrameLayout {
    private static final int DEFAULT_SCRIM_ANIMATION_DURATION = 600;
    private static final int DEF_STYLE_RES = k.Widget_Design_CollapsingToolbar;
    public static final int TITLE_COLLAPSE_MODE_FADE = 1;
    public static final int TITLE_COLLAPSE_MODE_SCALE = 0;

    @NonNull
    final com.google.android.material.internal.b collapsingTextHelper;
    private boolean collapsingTitleEnabled;

    @Nullable
    private Drawable contentScrim;
    int currentOffset;
    private boolean drawCollapsingTitle;
    private View dummyView;

    @NonNull
    final l3.a elevationOverlayProvider;
    private int expandedMarginBottom;
    private int expandedMarginEnd;
    private int expandedMarginStart;
    private int expandedMarginTop;
    private int extraMultilineHeight;
    private boolean extraMultilineHeightEnabled;
    private boolean forceApplySystemWindowInsetTop;

    @Nullable
    WindowInsetsCompat lastInsets;
    private AppBarLayout.h onOffsetChangedListener;
    private boolean refreshToolbar;
    private int scrimAlpha;
    private long scrimAnimationDuration;
    private ValueAnimator scrimAnimator;
    private int scrimVisibleHeightTrigger;
    private boolean scrimsAreShown;

    @Nullable
    Drawable statusBarScrim;
    private int titleCollapseMode;
    private final Rect tmpRect;

    @Nullable
    private ViewGroup toolbar;

    @Nullable
    private View toolbarDirectChild;
    private int toolbarId;
    private int topInsetApplied;

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            return CollapsingToolbarLayout.this.n(windowInsetsCompat);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            CollapsingToolbarLayout.this.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    private class d implements AppBarLayout.h {
        d() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.c
        public void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.currentOffset = i10;
            WindowInsetsCompat windowInsetsCompat = collapsingToolbarLayout.lastInsets;
            int iM = windowInsetsCompat != null ? windowInsetsCompat.m() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i11);
                c cVar = (c) childAt.getLayoutParams();
                i iVarJ = CollapsingToolbarLayout.j(childAt);
                int i12 = cVar.collapseMode;
                if (i12 == 1) {
                    iVarJ.f(MathUtils.b(-i10, 0, CollapsingToolbarLayout.this.h(childAt)));
                } else if (i12 == 2) {
                    iVarJ.f(Math.round((-i10) * cVar.parallaxMult));
                }
            }
            CollapsingToolbarLayout.this.u();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.statusBarScrim != null && iM > 0) {
                ViewCompat.k0(collapsingToolbarLayout2);
            }
            int height = CollapsingToolbarLayout.this.getHeight();
            int iE = (height - ViewCompat.E(CollapsingToolbarLayout.this)) - iM;
            float f = iE;
            CollapsingToolbarLayout.this.collapsingTextHelper.w0(Math.min(1.0f, (height - CollapsingToolbarLayout.this.getScrimVisibleHeightTrigger()) / f));
            CollapsingToolbarLayout collapsingToolbarLayout3 = CollapsingToolbarLayout.this;
            collapsingToolbarLayout3.collapsingTextHelper.j0(collapsingToolbarLayout3.currentOffset + iE);
            CollapsingToolbarLayout.this.collapsingTextHelper.u0(Math.abs(i10) / f);
        }
    }

    public CollapsingToolbarLayout(@NonNull Context context) {
        this(context, null);
    }

    private boolean k() {
        return this.titleCollapseMode == 1;
    }

    private boolean m(View view) {
        View view2 = this.toolbarDirectChild;
        if (view2 == null || view2 == this) {
            if (view != this.toolbar) {
                return false;
            }
        } else if (view != view2) {
            return false;
        }
        return true;
    }

    @Nullable
    public Drawable getContentScrim() {
        return this.contentScrim;
    }

    public int getExpandedTitleMarginBottom() {
        return this.expandedMarginBottom;
    }

    public int getExpandedTitleMarginEnd() {
        return this.expandedMarginEnd;
    }

    public int getExpandedTitleMarginStart() {
        return this.expandedMarginStart;
    }

    public int getExpandedTitleMarginTop() {
        return this.expandedMarginTop;
    }

    int getScrimAlpha() {
        return this.scrimAlpha;
    }

    public long getScrimAnimationDuration() {
        return this.scrimAnimationDuration;
    }

    @Nullable
    public Drawable getStatusBarScrim() {
        return this.statusBarScrim;
    }

    public int getTitleCollapseMode() {
        return this.titleCollapseMode;
    }

    public void setCollapsedTitleTextColor(@ColorInt int i10) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i10));
    }

    @RestrictTo
    public void setExtraMultilineHeightEnabled(boolean z6) {
        this.extraMultilineHeightEnabled = z6;
    }

    @RestrictTo
    public void setForceApplySystemWindowInsetTop(boolean z6) {
        this.forceApplySystemWindowInsetTop = z6;
    }

    public void setScrimAnimationDuration(@IntRange long j6) {
        this.scrimAnimationDuration = j6;
    }

    public CollapsingToolbarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, d3.b.collapsingToolbarLayoutStyle);
    }

    private void c() {
        if (this.refreshToolbar) {
            ViewGroup viewGroup = null;
            this.toolbar = null;
            this.toolbarDirectChild = null;
            int i10 = this.toolbarId;
            if (i10 != -1) {
                ViewGroup viewGroup2 = (ViewGroup) findViewById(i10);
                this.toolbar = viewGroup2;
                if (viewGroup2 != null) {
                    this.toolbarDirectChild = d(viewGroup2);
                }
            }
            if (this.toolbar == null) {
                int childCount = getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = getChildAt(i11);
                    if (l(childAt)) {
                        viewGroup = (ViewGroup) childAt;
                        break;
                    }
                }
                this.toolbar = viewGroup;
            }
            t();
            this.refreshToolbar = false;
        }
    }

    private static CharSequence i(View view) {
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getTitle();
        }
        if (view instanceof android.widget.Toolbar) {
            return ((android.widget.Toolbar) view).getTitle();
        }
        return null;
    }

    @NonNull
    static i j(@NonNull View view) {
        int i10 = d3.f.view_offset_helper;
        i iVar = (i) view.getTag(i10);
        if (iVar != null) {
            return iVar;
        }
        i iVar2 = new i(view);
        view.setTag(i10, iVar2);
        return iVar2;
    }

    private static boolean l(View view) {
        return (view instanceof Toolbar) || (view instanceof android.widget.Toolbar);
    }

    private void p(boolean z6) {
        int titleMarginStart;
        int titleMarginBottom;
        int titleMarginEnd;
        int titleMarginTop;
        View view = this.toolbarDirectChild;
        if (view == null) {
            view = this.toolbar;
        }
        int iH = h(view);
        com.google.android.material.internal.d.a(this, this.dummyView, this.tmpRect);
        ViewGroup viewGroup = this.toolbar;
        if (viewGroup instanceof Toolbar) {
            Toolbar toolbar = (Toolbar) viewGroup;
            titleMarginStart = toolbar.getTitleMarginStart();
            titleMarginEnd = toolbar.getTitleMarginEnd();
            titleMarginTop = toolbar.getTitleMarginTop();
            titleMarginBottom = toolbar.getTitleMarginBottom();
        } else if (Build.VERSION.SDK_INT < 24 || !(viewGroup instanceof android.widget.Toolbar)) {
            titleMarginStart = 0;
            titleMarginBottom = 0;
            titleMarginEnd = 0;
            titleMarginTop = 0;
        } else {
            android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup;
            titleMarginStart = toolbar2.getTitleMarginStart();
            titleMarginEnd = toolbar2.getTitleMarginEnd();
            titleMarginTop = toolbar2.getTitleMarginTop();
            titleMarginBottom = toolbar2.getTitleMarginBottom();
        }
        com.google.android.material.internal.b bVar = this.collapsingTextHelper;
        Rect rect = this.tmpRect;
        int i10 = rect.left + (z6 ? titleMarginEnd : titleMarginStart);
        int i11 = rect.top + iH + titleMarginTop;
        int i12 = rect.right;
        if (!z6) {
            titleMarginStart = titleMarginEnd;
        }
        bVar.b0(i10, i11, i12 - titleMarginStart, (rect.bottom + iH) - titleMarginBottom);
    }

    private void r(@NonNull Drawable drawable, int i10, int i11) {
        s(drawable, this.toolbar, i10, i11);
    }

    private void t() {
        View view;
        if (!this.collapsingTitleEnabled && (view = this.dummyView) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.dummyView);
            }
        }
        if (!this.collapsingTitleEnabled || this.toolbar == null) {
            return;
        }
        if (this.dummyView == null) {
            this.dummyView = new View(getContext());
        }
        if (this.dummyView.getParent() == null) {
            this.toolbar.addView(this.dummyView, -1, -1);
        }
    }

    private void v(int i10, int i11, int i12, int i13, boolean z6) {
        View view;
        if (!this.collapsingTitleEnabled || (view = this.dummyView) == null) {
            return;
        }
        boolean z10 = ViewCompat.W(view) && this.dummyView.getVisibility() == 0;
        this.drawCollapsingTitle = z10;
        if (z10 || z6) {
            boolean z11 = ViewCompat.D(this) == 1;
            p(z11);
            this.collapsingTextHelper.k0(z11 ? this.expandedMarginEnd : this.expandedMarginStart, this.tmpRect.top + this.expandedMarginTop, (i12 - i10) - (z11 ? this.expandedMarginStart : this.expandedMarginEnd), (i13 - i11) - this.expandedMarginBottom);
            this.collapsingTextHelper.Z(z6);
        }
    }

    private void w() {
        if (this.toolbar != null && this.collapsingTitleEnabled && TextUtils.isEmpty(this.collapsingTextHelper.M())) {
            setTitle(i(this.toolbar));
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        boolean z6;
        if (this.contentScrim == null || this.scrimAlpha <= 0 || !m(view)) {
            z6 = false;
        } else {
            s(this.contentScrim, view, getWidth(), getHeight());
            this.contentScrim.mutate().setAlpha(this.scrimAlpha);
            this.contentScrim.draw(canvas);
            z6 = true;
        }
        return super.drawChild(canvas, view, j6) || z6;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public c generateDefaultLayoutParams() {
        return new c(-1, -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new c(layoutParams);
    }

    public int getCollapsedTitleGravity() {
        return this.collapsingTextHelper.q();
    }

    @NonNull
    public Typeface getCollapsedTitleTypeface() {
        return this.collapsingTextHelper.u();
    }

    public int getExpandedTitleGravity() {
        return this.collapsingTextHelper.A();
    }

    @NonNull
    public Typeface getExpandedTitleTypeface() {
        return this.collapsingTextHelper.C();
    }

    @RequiresApi
    @RestrictTo
    public int getHyphenationFrequency() {
        return this.collapsingTextHelper.F();
    }

    @RestrictTo
    public int getLineCount() {
        return this.collapsingTextHelper.G();
    }

    @RequiresApi
    @RestrictTo
    public float getLineSpacingAdd() {
        return this.collapsingTextHelper.H();
    }

    @RequiresApi
    @RestrictTo
    public float getLineSpacingMultiplier() {
        return this.collapsingTextHelper.I();
    }

    @RestrictTo
    public int getMaxLines() {
        return this.collapsingTextHelper.J();
    }

    public int getScrimVisibleHeightTrigger() {
        int i10 = this.scrimVisibleHeightTrigger;
        if (i10 >= 0) {
            return i10 + this.topInsetApplied + this.extraMultilineHeight;
        }
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        int iM = windowInsetsCompat != null ? windowInsetsCompat.m() : 0;
        int iE = ViewCompat.E(this);
        return iE > 0 ? Math.min((iE * 2) + iM, getHeight()) : getHeight() / 3;
    }

    @Nullable
    public CharSequence getTitle() {
        if (this.collapsingTitleEnabled) {
            return this.collapsingTextHelper.M();
        }
        return null;
    }

    @Nullable
    public TimeInterpolator getTitlePositionInterpolator() {
        return this.collapsingTextHelper.L();
    }

    public void o(boolean z6, boolean z10) {
        if (this.scrimsAreShown != z6) {
            if (z10) {
                a(z6 ? 255 : 0);
            } else {
                setScrimAlpha(z6 ? 255 : 0);
            }
            this.scrimsAreShown = z6;
        }
    }

    public void setCollapsedTitleGravity(int i10) {
        this.collapsingTextHelper.g0(i10);
    }

    public void setCollapsedTitleTextAppearance(@StyleRes int i10) {
        this.collapsingTextHelper.d0(i10);
    }

    public void setCollapsedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.collapsingTextHelper.f0(colorStateList);
    }

    public void setCollapsedTitleTypeface(@Nullable Typeface typeface) {
        this.collapsingTextHelper.h0(typeface);
    }

    public void setContentScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.contentScrim;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.contentScrim = drawableMutate;
            if (drawableMutate != null) {
                r(drawableMutate, getWidth(), getHeight());
                this.contentScrim.setCallback(this);
                this.contentScrim.setAlpha(this.scrimAlpha);
            }
            ViewCompat.k0(this);
        }
    }

    public void setContentScrimColor(@ColorInt int i10) {
        setContentScrim(new ColorDrawable(i10));
    }

    public void setExpandedTitleGravity(int i10) {
        this.collapsingTextHelper.q0(i10);
    }

    public void setExpandedTitleMarginBottom(int i10) {
        this.expandedMarginBottom = i10;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i10) {
        this.expandedMarginEnd = i10;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i10) {
        this.expandedMarginStart = i10;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i10) {
        this.expandedMarginTop = i10;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(@StyleRes int i10) {
        this.collapsingTextHelper.n0(i10);
    }

    public void setExpandedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.collapsingTextHelper.p0(colorStateList);
    }

    public void setExpandedTitleTypeface(@Nullable Typeface typeface) {
        this.collapsingTextHelper.s0(typeface);
    }

    @RequiresApi
    @RestrictTo
    public void setHyphenationFrequency(int i10) {
        this.collapsingTextHelper.x0(i10);
    }

    @RequiresApi
    @RestrictTo
    public void setLineSpacingAdd(float f) {
        this.collapsingTextHelper.z0(f);
    }

    @RequiresApi
    @RestrictTo
    public void setLineSpacingMultiplier(@FloatRange float f) {
        this.collapsingTextHelper.A0(f);
    }

    @RestrictTo
    public void setMaxLines(int i10) {
        this.collapsingTextHelper.B0(i10);
    }

    @RestrictTo
    public void setRtlTextDirectionHeuristicsEnabled(boolean z6) {
        this.collapsingTextHelper.D0(z6);
    }

    void setScrimAlpha(int i10) {
        ViewGroup viewGroup;
        if (i10 != this.scrimAlpha) {
            if (this.contentScrim != null && (viewGroup = this.toolbar) != null) {
                ViewCompat.k0(viewGroup);
            }
            this.scrimAlpha = i10;
            ViewCompat.k0(this);
        }
    }

    public void setScrimVisibleHeightTrigger(@IntRange int i10) {
        if (this.scrimVisibleHeightTrigger != i10) {
            this.scrimVisibleHeightTrigger = i10;
            u();
        }
    }

    public void setStatusBarScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.statusBarScrim;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.statusBarScrim = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.statusBarScrim.setState(getDrawableState());
                }
                DrawableCompat.m(this.statusBarScrim, ViewCompat.D(this));
                this.statusBarScrim.setVisible(getVisibility() == 0, false);
                this.statusBarScrim.setCallback(this);
                this.statusBarScrim.setAlpha(this.scrimAlpha);
            }
            ViewCompat.k0(this);
        }
    }

    public void setStatusBarScrimColor(@ColorInt int i10) {
        setStatusBarScrim(new ColorDrawable(i10));
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.collapsingTextHelper.F0(charSequence);
        q();
    }

    public void setTitleCollapseMode(int i10) {
        this.titleCollapseMode = i10;
        boolean zK = k();
        this.collapsingTextHelper.v0(zK);
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            b((AppBarLayout) parent);
        }
        if (zK && this.contentScrim == null) {
            setContentScrimColor(this.elevationOverlayProvider.d(getResources().getDimension(d3.d.design_appbar_elevation)));
        }
    }

    public void setTitleEnabled(boolean z6) {
        if (z6 != this.collapsingTitleEnabled) {
            this.collapsingTitleEnabled = z6;
            q();
            t();
            requestLayout();
        }
    }

    public void setTitlePositionInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.collapsingTextHelper.C0(timeInterpolator);
    }

    final void u() {
        if (this.contentScrim == null && this.statusBarScrim == null) {
            return;
        }
        setScrimsShown(getHeight() + this.currentOffset < getScrimVisibleHeightTrigger());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CollapsingToolbarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = DEF_STYLE_RES;
        super(r3.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.refreshToolbar = true;
        this.tmpRect = new Rect();
        this.scrimVisibleHeightTrigger = -1;
        this.topInsetApplied = 0;
        this.extraMultilineHeight = 0;
        Context context2 = getContext();
        com.google.android.material.internal.b bVar = new com.google.android.material.internal.b(this);
        this.collapsingTextHelper = bVar;
        bVar.G0(e3.a.DECELERATE_INTERPOLATOR);
        bVar.D0(false);
        this.elevationOverlayProvider = new l3.a(context2);
        TypedArray typedArrayH = s.h(context2, attributeSet, l.CollapsingToolbarLayout, i10, i11, new int[0]);
        bVar.q0(typedArrayH.getInt(l.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
        bVar.g0(typedArrayH.getInt(l.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = typedArrayH.getDimensionPixelSize(l.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.expandedMarginBottom = dimensionPixelSize;
        this.expandedMarginEnd = dimensionPixelSize;
        this.expandedMarginTop = dimensionPixelSize;
        this.expandedMarginStart = dimensionPixelSize;
        int i12 = l.CollapsingToolbarLayout_expandedTitleMarginStart;
        if (typedArrayH.hasValue(i12)) {
            this.expandedMarginStart = typedArrayH.getDimensionPixelSize(i12, 0);
        }
        int i13 = l.CollapsingToolbarLayout_expandedTitleMarginEnd;
        if (typedArrayH.hasValue(i13)) {
            this.expandedMarginEnd = typedArrayH.getDimensionPixelSize(i13, 0);
        }
        int i14 = l.CollapsingToolbarLayout_expandedTitleMarginTop;
        if (typedArrayH.hasValue(i14)) {
            this.expandedMarginTop = typedArrayH.getDimensionPixelSize(i14, 0);
        }
        int i15 = l.CollapsingToolbarLayout_expandedTitleMarginBottom;
        if (typedArrayH.hasValue(i15)) {
            this.expandedMarginBottom = typedArrayH.getDimensionPixelSize(i15, 0);
        }
        this.collapsingTitleEnabled = typedArrayH.getBoolean(l.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(typedArrayH.getText(l.CollapsingToolbarLayout_title));
        bVar.n0(k.TextAppearance_Design_CollapsingToolbar_Expanded);
        bVar.d0(R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        int i16 = l.CollapsingToolbarLayout_expandedTitleTextAppearance;
        if (typedArrayH.hasValue(i16)) {
            bVar.n0(typedArrayH.getResourceId(i16, 0));
        }
        int i17 = l.CollapsingToolbarLayout_collapsedTitleTextAppearance;
        if (typedArrayH.hasValue(i17)) {
            bVar.d0(typedArrayH.getResourceId(i17, 0));
        }
        int i18 = l.CollapsingToolbarLayout_expandedTitleTextColor;
        if (typedArrayH.hasValue(i18)) {
            bVar.p0(com.google.android.material.resources.c.a(context2, typedArrayH, i18));
        }
        int i19 = l.CollapsingToolbarLayout_collapsedTitleTextColor;
        if (typedArrayH.hasValue(i19)) {
            bVar.f0(com.google.android.material.resources.c.a(context2, typedArrayH, i19));
        }
        this.scrimVisibleHeightTrigger = typedArrayH.getDimensionPixelSize(l.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        int i20 = l.CollapsingToolbarLayout_maxLines;
        if (typedArrayH.hasValue(i20)) {
            bVar.B0(typedArrayH.getInt(i20, 1));
        }
        int i21 = l.CollapsingToolbarLayout_titlePositionInterpolator;
        if (typedArrayH.hasValue(i21)) {
            bVar.C0(AnimationUtils.loadInterpolator(context2, typedArrayH.getResourceId(i21, 0)));
        }
        this.scrimAnimationDuration = typedArrayH.getInt(l.CollapsingToolbarLayout_scrimAnimationDuration, 600);
        setContentScrim(typedArrayH.getDrawable(l.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(typedArrayH.getDrawable(l.CollapsingToolbarLayout_statusBarScrim));
        setTitleCollapseMode(typedArrayH.getInt(l.CollapsingToolbarLayout_titleCollapseMode, 0));
        this.toolbarId = typedArrayH.getResourceId(l.CollapsingToolbarLayout_toolbarId, -1);
        this.forceApplySystemWindowInsetTop = typedArrayH.getBoolean(l.CollapsingToolbarLayout_forceApplySystemWindowInsetTop, false);
        this.extraMultilineHeightEnabled = typedArrayH.getBoolean(l.CollapsingToolbarLayout_extraMultilineHeightEnabled, false);
        typedArrayH.recycle();
        setWillNotDraw(false);
        ViewCompat.L0(this, new a());
    }

    private void a(int i10) {
        TimeInterpolator timeInterpolator;
        c();
        ValueAnimator valueAnimator = this.scrimAnimator;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.scrimAnimator = valueAnimator2;
            if (i10 > this.scrimAlpha) {
                timeInterpolator = e3.a.FAST_OUT_LINEAR_IN_INTERPOLATOR;
            } else {
                timeInterpolator = e3.a.LINEAR_OUT_SLOW_IN_INTERPOLATOR;
            }
            valueAnimator2.setInterpolator(timeInterpolator);
            this.scrimAnimator.addUpdateListener(new b());
        } else if (valueAnimator.isRunning()) {
            this.scrimAnimator.cancel();
        }
        this.scrimAnimator.setDuration(this.scrimAnimationDuration);
        this.scrimAnimator.setIntValues(this.scrimAlpha, i10);
        this.scrimAnimator.start();
    }

    private void b(AppBarLayout appBarLayout) {
        if (k()) {
            appBarLayout.setLiftOnScroll(false);
        }
    }

    @NonNull
    private View d(@NonNull View view) {
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view = parent;
            }
        }
        return view;
    }

    private static int g(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        return view.getMeasuredHeight();
    }

    private void q() {
        setContentDescription(getTitle());
    }

    private void s(@NonNull Drawable drawable, @Nullable View view, int i10, int i11) {
        if (k() && view != null && this.collapsingTitleEnabled) {
            i11 = view.getBottom();
        }
        drawable.setBounds(0, 0, i10, i11);
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        int iM;
        Drawable drawable;
        super.draw(canvas);
        c();
        if (this.toolbar == null && (drawable = this.contentScrim) != null && this.scrimAlpha > 0) {
            drawable.mutate().setAlpha(this.scrimAlpha);
            this.contentScrim.draw(canvas);
        }
        if (this.collapsingTitleEnabled && this.drawCollapsingTitle) {
            if (this.toolbar != null && this.contentScrim != null && this.scrimAlpha > 0 && k() && this.collapsingTextHelper.D() < this.collapsingTextHelper.E()) {
                int iSave = canvas.save();
                canvas.clipRect(this.contentScrim.getBounds(), Region.Op.DIFFERENCE);
                this.collapsingTextHelper.l(canvas);
                canvas.restoreToCount(iSave);
            } else {
                this.collapsingTextHelper.l(canvas);
            }
        }
        if (this.statusBarScrim != null && this.scrimAlpha > 0) {
            WindowInsetsCompat windowInsetsCompat = this.lastInsets;
            if (windowInsetsCompat != null) {
                iM = windowInsetsCompat.m();
            } else {
                iM = 0;
            }
            if (iM > 0) {
                this.statusBarScrim.setBounds(0, -this.currentOffset, getWidth(), iM - this.currentOffset);
                this.statusBarScrim.mutate().setAlpha(this.scrimAlpha);
                this.statusBarScrim.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        boolean zE0;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.statusBarScrim;
        if (drawable != null && drawable.isStateful()) {
            zE0 = drawable.setState(drawableState);
        } else {
            zE0 = false;
        }
        Drawable drawable2 = this.contentScrim;
        if (drawable2 != null && drawable2.isStateful()) {
            zE0 |= drawable2.setState(drawableState);
        }
        com.google.android.material.internal.b bVar = this.collapsingTextHelper;
        if (bVar != null) {
            zE0 |= bVar.E0(drawableState);
        }
        if (zE0) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    final int h(@NonNull View view) {
        return ((getHeight() - j(view).b()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((c) view.getLayoutParams())).bottomMargin;
    }

    WindowInsetsCompat n(@NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2;
        if (ViewCompat.A(this)) {
            windowInsetsCompat2 = windowInsetsCompat;
        } else {
            windowInsetsCompat2 = null;
        }
        if (!ObjectsCompat.a(this.lastInsets, windowInsetsCompat2)) {
            this.lastInsets = windowInsetsCompat2;
            requestLayout();
        }
        return windowInsetsCompat.c();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            b(appBarLayout);
            ViewCompat.D0(this, ViewCompat.A(appBarLayout));
            if (this.onOffsetChangedListener == null) {
                this.onOffsetChangedListener = new d();
            }
            appBarLayout.d(this.onOffsetChangedListener);
            ViewCompat.q0(this);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.collapsingTextHelper.V(configuration);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.h hVar = this.onOffsetChangedListener;
        if (hVar != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).r(hVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        if (windowInsetsCompat != null) {
            int iM = windowInsetsCompat.m();
            int childCount = getChildCount();
            for (int i14 = 0; i14 < childCount; i14++) {
                View childAt = getChildAt(i14);
                if (!ViewCompat.A(childAt) && childAt.getTop() < iM) {
                    ViewCompat.e0(childAt, iM);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i15 = 0; i15 < childCount2; i15++) {
            j(getChildAt(i15)).d();
        }
        v(i10, i11, i12, i13, false);
        w();
        u();
        int childCount3 = getChildCount();
        for (int i16 = 0; i16 < childCount3; i16++) {
            j(getChildAt(i16)).a();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iM;
        c();
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        if (windowInsetsCompat != null) {
            iM = windowInsetsCompat.m();
        } else {
            iM = 0;
        }
        if ((mode == 0 || this.forceApplySystemWindowInsetTop) && iM > 0) {
            this.topInsetApplied = iM;
            super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + iM, 1073741824));
        }
        if (this.extraMultilineHeightEnabled && this.collapsingTextHelper.J() > 1) {
            w();
            v(0, 0, getMeasuredWidth(), getMeasuredHeight(), true);
            int iY = this.collapsingTextHelper.y();
            if (iY > 1) {
                this.extraMultilineHeight = Math.round(this.collapsingTextHelper.z()) * (iY - 1);
                super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + this.extraMultilineHeight, 1073741824));
            }
        }
        ViewGroup viewGroup = this.toolbar;
        if (viewGroup != null) {
            View view = this.toolbarDirectChild;
            if (view != null && view != this) {
                setMinimumHeight(g(view));
            } else {
                setMinimumHeight(g(viewGroup));
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        Drawable drawable = this.contentScrim;
        if (drawable != null) {
            r(drawable, i10, i11);
        }
    }

    public void setContentScrimResource(@DrawableRes int i10) {
        setContentScrim(ContextCompat.getDrawable(getContext(), i10));
    }

    public void setExpandedTitleColor(@ColorInt int i10) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i10));
    }

    public void setScrimsShown(boolean z6) {
        boolean z10;
        if (ViewCompat.X(this) && !isInEditMode()) {
            z10 = true;
        } else {
            z10 = false;
        }
        o(z6, z10);
    }

    public void setStatusBarScrimResource(@DrawableRes int i10) {
        setStatusBarScrim(ContextCompat.getDrawable(getContext(), i10));
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        boolean z6;
        super.setVisibility(i10);
        if (i10 == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        Drawable drawable = this.statusBarScrim;
        if (drawable != null && drawable.isVisible() != z6) {
            this.statusBarScrim.setVisible(z6, false);
        }
        Drawable drawable2 = this.contentScrim;
        if (drawable2 != null && drawable2.isVisible() != z6) {
            this.contentScrim.setVisible(z6, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(@NonNull Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.contentScrim && drawable != this.statusBarScrim) {
            return false;
        }
        return true;
    }

    public static class c extends FrameLayout.LayoutParams {
        public static final int COLLAPSE_MODE_OFF = 0;
        public static final int COLLAPSE_MODE_PARALLAX = 2;
        public static final int COLLAPSE_MODE_PIN = 1;
        private static final float DEFAULT_PARALLAX_MULTIPLIER = 0.5f;
        int collapseMode;
        float parallaxMult;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.CollapsingToolbarLayout_Layout);
            this.collapseMode = typedArrayObtainStyledAttributes.getInt(l.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            a(typedArrayObtainStyledAttributes.getFloat(l.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            typedArrayObtainStyledAttributes.recycle();
        }

        public void a(float f) {
            this.parallaxMult = f;
        }

        public c(int i10, int i11) {
            super(i10, i11);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }

        public c(int i10, int i11, int i12) {
            super(i10, i11, i12);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }

        public c(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }

        public c(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }

        @RequiresApi
        public c(@NonNull FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }
    }
}
