package com.google.android.material.navigation;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.internal.j;
import com.google.android.material.internal.k;
import com.google.android.material.internal.m;
import com.google.android.material.internal.s;
import com.google.android.material.shape.g;
import com.google.android.material.shape.h;
import d3.l;

/* JADX INFO: loaded from: classes5.dex */
public class NavigationView extends m {
    private static final int PRESENTER_NAVIGATION_VIEW_ID = 1;
    private boolean bottomInsetScrimEnabled;

    @Px
    private int drawerLayoutCornerSize;
    private int layoutGravity;
    c listener;
    private final int maxWidth;

    @NonNull
    private final j menu;
    private MenuInflater menuInflater;
    private ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
    private final k presenter;
    private final RectF shapeClipBounds;

    @Nullable
    private Path shapeClipPath;
    private final int[] tmpLocation;
    private boolean topInsetScrimEnabled;
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int[] DISABLED_STATE_SET = {-16842910};
    private static final int DEF_STYLE_RES = d3.k.Widget_Design_NavigationView;

    class a implements MenuBuilder.Callback {
        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void b(MenuBuilder menuBuilder) {
        }

        a() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean a(MenuBuilder menuBuilder, MenuItem menuItem) {
            NavigationView.this.getClass();
            return false;
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            NavigationView navigationView = NavigationView.this;
            navigationView.getLocationOnScreen(navigationView.tmpLocation);
            boolean z6 = NavigationView.this.tmpLocation[1] == 0;
            NavigationView.this.presenter.C(z6);
            NavigationView navigationView2 = NavigationView.this;
            navigationView2.setDrawTopInsetForeground(z6 && navigationView2.k());
            Activity activityA = com.google.android.material.internal.c.a(NavigationView.this.getContext());
            if (activityA != null) {
                boolean z10 = activityA.findViewById(R.id.content).getHeight() == NavigationView.this.getHeight();
                boolean z11 = Color.alpha(activityA.getWindow().getNavigationBarColor()) != 0;
                NavigationView navigationView3 = NavigationView.this;
                navigationView3.setDrawBottomInsetForeground(z10 && z11 && navigationView3.j());
            }
        }
    }

    public interface c {
    }

    public NavigationView(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    public Menu getMenu() {
        return this.menu;
    }

    public boolean j() {
        return this.bottomInsetScrimEnabled;
    }

    public boolean k() {
        return this.topInsetScrimEnabled;
    }

    public void setBottomInsetScrimEnabled(boolean z6) {
        this.bottomInsetScrimEnabled = z6;
    }

    public void setCheckedItem(@IdRes int i10) {
        MenuItem menuItemFindItem = this.menu.findItem(i10);
        if (menuItemFindItem != null) {
            this.presenter.D((MenuItemImpl) menuItemFindItem);
        }
    }

    public void setNavigationItemSelectedListener(@Nullable c cVar) {
    }

    public void setTopInsetScrimEnabled(boolean z6) {
        this.topInsetScrimEnabled = z6;
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        @Nullable
        public Bundle menuState;

        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @Nullable
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

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.menuState = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeBundle(this.menuState);
        }
    }

    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, d3.b.navigationViewStyle);
    }

    @Nullable
    private ColorStateList d(int i10) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i10, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateListA = AppCompatResources.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i11 = typedValue.data;
        int defaultColor = colorStateListA.getDefaultColor();
        int[] iArr = DISABLED_STATE_SET;
        return new ColorStateList(new int[][]{iArr, CHECKED_STATE_SET, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateListA.getColorForState(iArr, defaultColor), i11, defaultColor});
    }

    @NonNull
    private Drawable f(@NonNull TintTypedArray tintTypedArray, @Nullable ColorStateList colorStateList) {
        g gVar = new g(com.google.android.material.shape.k.b(getContext(), tintTypedArray.n(l.NavigationView_itemShapeAppearance, 0), tintTypedArray.n(l.NavigationView_itemShapeAppearanceOverlay, 0)).m());
        gVar.Z(colorStateList);
        return new InsetDrawable((Drawable) gVar, tintTypedArray.f(l.NavigationView_itemShapeInsetStart, 0), tintTypedArray.f(l.NavigationView_itemShapeInsetTop, 0), tintTypedArray.f(l.NavigationView_itemShapeInsetEnd, 0), tintTypedArray.f(l.NavigationView_itemShapeInsetBottom, 0));
    }

    private boolean g(@NonNull TintTypedArray tintTypedArray) {
        return tintTypedArray.s(l.NavigationView_itemShapeAppearance) || tintTypedArray.s(l.NavigationView_itemShapeAppearanceOverlay);
    }

    private MenuInflater getMenuInflater() {
        if (this.menuInflater == null) {
            this.menuInflater = new SupportMenuInflater(getContext());
        }
        return this.menuInflater;
    }

    private void m() {
        this.onGlobalLayoutListener = new b();
        getViewTreeObserver().addOnGlobalLayoutListener(this.onGlobalLayoutListener);
    }

    @Override // com.google.android.material.internal.m
    @RestrictTo
    protected void a(@NonNull WindowInsetsCompat windowInsetsCompat) {
        this.presenter.m(windowInsetsCompat);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NonNull Canvas canvas) {
        if (this.shapeClipPath == null) {
            super.dispatchDraw(canvas);
            return;
        }
        int iSave = canvas.save();
        canvas.clipPath(this.shapeClipPath);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Nullable
    public MenuItem getCheckedItem() {
        return this.presenter.n();
    }

    @Px
    public int getDividerInsetEnd() {
        return this.presenter.o();
    }

    @Px
    public int getDividerInsetStart() {
        return this.presenter.p();
    }

    public int getHeaderCount() {
        return this.presenter.q();
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.presenter.r();
    }

    @Dimension
    public int getItemHorizontalPadding() {
        return this.presenter.s();
    }

    @Dimension
    public int getItemIconPadding() {
        return this.presenter.t();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.presenter.w();
    }

    public int getItemMaxLines() {
        return this.presenter.u();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.presenter.v();
    }

    @Px
    public int getItemVerticalPadding() {
        return this.presenter.x();
    }

    @Px
    public int getSubheaderInsetEnd() {
        return this.presenter.z();
    }

    @Px
    public int getSubheaderInsetStart() {
        return this.presenter.A();
    }

    public View h(@LayoutRes int i10) {
        return this.presenter.B(i10);
    }

    public void i(int i10) {
        this.presenter.V(true);
        getMenuInflater().inflate(i10, this.menu);
        this.presenter.V(false);
        this.presenter.d(false);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.menu.S(savedState.menuState);
    }

    public void setDividerInsetEnd(@Px int i10) {
        this.presenter.E(i10);
    }

    public void setDividerInsetStart(@Px int i10) {
        this.presenter.F(i10);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.presenter.H(drawable);
    }

    public void setItemHorizontalPadding(@Dimension int i10) {
        this.presenter.J(i10);
    }

    public void setItemHorizontalPaddingResource(@DimenRes int i10) {
        this.presenter.J(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconPadding(@Dimension int i10) {
        this.presenter.K(i10);
    }

    public void setItemIconPaddingResource(int i10) {
        this.presenter.K(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconSize(@Dimension int i10) {
        this.presenter.L(i10);
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.presenter.M(colorStateList);
    }

    public void setItemMaxLines(int i10) {
        this.presenter.N(i10);
    }

    public void setItemTextAppearance(@StyleRes int i10) {
        this.presenter.O(i10);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.presenter.P(colorStateList);
    }

    public void setItemVerticalPadding(@Px int i10) {
        this.presenter.Q(i10);
    }

    public void setItemVerticalPaddingResource(@DimenRes int i10) {
        this.presenter.Q(getResources().getDimensionPixelSize(i10));
    }

    public void setSubheaderInsetEnd(@Px int i10) {
        this.presenter.T(i10);
    }

    public void setSubheaderInsetStart(@Px int i10) {
        this.presenter.T(i10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        ColorStateList colorStateListD;
        int i11 = DEF_STYLE_RES;
        super(r3.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        k kVar = new k();
        this.presenter = kVar;
        this.tmpLocation = new int[2];
        this.topInsetScrimEnabled = true;
        this.bottomInsetScrimEnabled = true;
        this.layoutGravity = 0;
        this.drawerLayoutCornerSize = 0;
        this.shapeClipBounds = new RectF();
        Context context2 = getContext();
        j jVar = new j(context2);
        this.menu = jVar;
        TintTypedArray tintTypedArrayI = s.i(context2, attributeSet, l.NavigationView, i10, i11, new int[0]);
        int i12 = l.NavigationView_android_background;
        if (tintTypedArrayI.s(i12)) {
            ViewCompat.y0(this, tintTypedArrayI.g(i12));
        }
        this.drawerLayoutCornerSize = tintTypedArrayI.f(l.NavigationView_drawerLayoutCornerSize, 0);
        this.layoutGravity = tintTypedArrayI.k(l.NavigationView_android_layout_gravity, 0);
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            com.google.android.material.shape.k kVarM = com.google.android.material.shape.k.e(context2, attributeSet, i10, i11).m();
            Drawable background = getBackground();
            g gVar = new g(kVarM);
            if (background instanceof ColorDrawable) {
                gVar.Z(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            gVar.O(context2);
            ViewCompat.y0(this, gVar);
        }
        int i13 = l.NavigationView_elevation;
        if (tintTypedArrayI.s(i13)) {
            setElevation(tintTypedArrayI.f(i13, 0));
        }
        setFitsSystemWindows(tintTypedArrayI.a(l.NavigationView_android_fitsSystemWindows, false));
        this.maxWidth = tintTypedArrayI.f(l.NavigationView_android_maxWidth, 0);
        int i14 = l.NavigationView_subheaderColor;
        ColorStateList colorStateListC = tintTypedArrayI.s(i14) ? tintTypedArrayI.c(i14) : null;
        int i15 = l.NavigationView_subheaderTextAppearance;
        int iN = tintTypedArrayI.s(i15) ? tintTypedArrayI.n(i15, 0) : 0;
        if (iN == 0 && colorStateListC == null) {
            colorStateListC = d(R.attr.textColorSecondary);
        }
        int i16 = l.NavigationView_itemIconTint;
        if (tintTypedArrayI.s(i16)) {
            colorStateListD = tintTypedArrayI.c(i16);
        } else {
            colorStateListD = d(R.attr.textColorSecondary);
        }
        int i17 = l.NavigationView_itemTextAppearance;
        int iN2 = tintTypedArrayI.s(i17) ? tintTypedArrayI.n(i17, 0) : 0;
        int i18 = l.NavigationView_itemIconSize;
        if (tintTypedArrayI.s(i18)) {
            setItemIconSize(tintTypedArrayI.f(i18, 0));
        }
        int i19 = l.NavigationView_itemTextColor;
        ColorStateList colorStateListC2 = tintTypedArrayI.s(i19) ? tintTypedArrayI.c(i19) : null;
        if (iN2 == 0 && colorStateListC2 == null) {
            colorStateListC2 = d(R.attr.textColorPrimary);
        }
        Drawable drawableG = tintTypedArrayI.g(l.NavigationView_itemBackground);
        if (drawableG == null && g(tintTypedArrayI)) {
            drawableG = e(tintTypedArrayI);
            ColorStateList colorStateListB = com.google.android.material.resources.c.b(context2, tintTypedArrayI, l.NavigationView_itemRippleColor);
            if (colorStateListB != null) {
                kVar.I(new RippleDrawable(com.google.android.material.ripple.b.d(colorStateListB), null, f(tintTypedArrayI, null)));
            }
        }
        int i20 = l.NavigationView_itemHorizontalPadding;
        if (tintTypedArrayI.s(i20)) {
            setItemHorizontalPadding(tintTypedArrayI.f(i20, 0));
        }
        int i21 = l.NavigationView_itemVerticalPadding;
        if (tintTypedArrayI.s(i21)) {
            setItemVerticalPadding(tintTypedArrayI.f(i21, 0));
        }
        setDividerInsetStart(tintTypedArrayI.f(l.NavigationView_dividerInsetStart, 0));
        setDividerInsetEnd(tintTypedArrayI.f(l.NavigationView_dividerInsetEnd, 0));
        setSubheaderInsetStart(tintTypedArrayI.f(l.NavigationView_subheaderInsetStart, 0));
        setSubheaderInsetEnd(tintTypedArrayI.f(l.NavigationView_subheaderInsetEnd, 0));
        setTopInsetScrimEnabled(tintTypedArrayI.a(l.NavigationView_topInsetScrimEnabled, this.topInsetScrimEnabled));
        setBottomInsetScrimEnabled(tintTypedArrayI.a(l.NavigationView_bottomInsetScrimEnabled, this.bottomInsetScrimEnabled));
        int iF = tintTypedArrayI.f(l.NavigationView_itemIconPadding, 0);
        setItemMaxLines(tintTypedArrayI.k(l.NavigationView_itemMaxLines, 1));
        jVar.V(new a());
        kVar.G(1);
        kVar.g(context2, jVar);
        if (iN != 0) {
            kVar.U(iN);
        }
        kVar.S(colorStateListC);
        kVar.M(colorStateListD);
        kVar.R(getOverScrollMode());
        if (iN2 != 0) {
            kVar.O(iN2);
        }
        kVar.P(colorStateListC2);
        kVar.H(drawableG);
        kVar.K(iF);
        jVar.b(kVar);
        addView((View) kVar.y(this));
        int i22 = l.NavigationView_menu;
        if (tintTypedArrayI.s(i22)) {
            i(tintTypedArrayI.n(i22, 0));
        }
        int i23 = l.NavigationView_headerLayout;
        if (tintTypedArrayI.s(i23)) {
            h(tintTypedArrayI.n(i23, 0));
        }
        tintTypedArrayI.w();
        m();
    }

    @NonNull
    private Drawable e(@NonNull TintTypedArray tintTypedArray) {
        return f(tintTypedArray, com.google.android.material.resources.c.b(getContext(), tintTypedArray, l.NavigationView_itemShapeFillColor));
    }

    private void l(@Px int i10, @Px int i11) {
        if ((getParent() instanceof DrawerLayout) && this.drawerLayoutCornerSize > 0 && (getBackground() instanceof g)) {
            g gVar = (g) getBackground();
            com.google.android.material.shape.k.b bVarV = gVar.E().v();
            if (GravityCompat.b(this.layoutGravity, ViewCompat.D(this)) == 3) {
                bVarV.F(this.drawerLayoutCornerSize);
                bVarV.w(this.drawerLayoutCornerSize);
            } else {
                bVarV.B(this.drawerLayoutCornerSize);
                bVarV.s(this.drawerLayoutCornerSize);
            }
            gVar.setShapeAppearanceModel(bVarV.m());
            if (this.shapeClipPath == null) {
                this.shapeClipPath = new Path();
            }
            this.shapeClipPath.reset();
            this.shapeClipBounds.set(0.0f, 0.0f, i10, i11);
            com.google.android.material.shape.l.k().d(gVar.E(), gVar.y(), this.shapeClipBounds, this.shapeClipPath);
            invalidate();
            return;
        }
        this.shapeClipPath = null;
        this.shapeClipBounds.setEmpty();
    }

    @Override // com.google.android.material.internal.m, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        h.e(this);
    }

    @Override // com.google.android.material.internal.m, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.onGlobalLayoutListener);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i10 = View.MeasureSpec.makeMeasureSpec(this.maxWidth, 1073741824);
            }
        } else {
            i10 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), this.maxWidth), 1073741824);
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.menuState = bundle;
        this.menu.U(bundle);
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        l(i10, i11);
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        MenuItem menuItemFindItem = this.menu.findItem(menuItem.getItemId());
        if (menuItemFindItem != null) {
            this.presenter.D((MenuItemImpl) menuItemFindItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        h.d(this, f);
    }

    public void setItemBackgroundResource(@DrawableRes int i10) {
        setItemBackground(ContextCompat.getDrawable(getContext(), i10));
    }

    @Override // android.view.View
    public void setOverScrollMode(int i10) {
        super.setOverScrollMode(i10);
        k kVar = this.presenter;
        if (kVar != null) {
            kVar.R(i10);
        }
    }
}
