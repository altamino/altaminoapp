package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.s;
import com.google.android.material.shape.g;
import com.google.android.material.shape.h;
import com.google.android.material.shape.k;
import d3.d;
import d3.l;

/* JADX INFO: loaded from: classes9.dex */
public abstract class NavigationBarView extends FrameLayout {
    public static final int LABEL_VISIBILITY_AUTO = -1;
    public static final int LABEL_VISIBILITY_LABELED = 1;
    public static final int LABEL_VISIBILITY_SELECTED = 0;
    public static final int LABEL_VISIBILITY_UNLABELED = 2;
    private static final int MENU_PRESENTER_ID = 1;

    @Nullable
    private ColorStateList itemRippleColor;

    @NonNull
    private final com.google.android.material.navigation.b menu;
    private MenuInflater menuInflater;

    @NonNull
    private final com.google.android.material.navigation.c menuView;

    @NonNull
    private final NavigationBarPresenter presenter;
    private b reselectedListener;
    private c selectedListener;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        @Nullable
        Bundle menuPresenterState;

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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader == null ? getClass().getClassLoader() : classLoader);
        }

        private void a(@NonNull Parcel parcel, ClassLoader classLoader) {
            this.menuPresenterState = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeBundle(this.menuPresenterState);
        }
    }

    class a implements MenuBuilder.Callback {
        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void b(MenuBuilder menuBuilder) {
        }

        a() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean a(MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            NavigationBarView.a(NavigationBarView.this);
            NavigationBarView.b(NavigationBarView.this);
            return false;
        }
    }

    public interface b {
    }

    public interface c {
    }

    @NonNull
    @RestrictTo
    protected abstract com.google.android.material.navigation.c d(@NonNull Context context);

    @Nullable
    public ColorStateList getItemRippleColor() {
        return this.itemRippleColor;
    }

    public abstract int getMaxItemCount();

    @NonNull
    public Menu getMenu() {
        return this.menu;
    }

    @NonNull
    @RestrictTo
    public MenuView getMenuView() {
        return this.menuView;
    }

    @NonNull
    @RestrictTo
    public NavigationBarPresenter getPresenter() {
        return this.presenter;
    }

    public void setOnItemReselectedListener(@Nullable b bVar) {
    }

    public void setOnItemSelectedListener(@Nullable c cVar) {
    }

    @NonNull
    private g c(Context context) {
        g gVar = new g();
        Drawable background = getBackground();
        if (background instanceof ColorDrawable) {
            gVar.Z(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
        }
        gVar.O(context);
        return gVar;
    }

    private MenuInflater getMenuInflater() {
        if (this.menuInflater == null) {
            this.menuInflater = new SupportMenuInflater(getContext());
        }
        return this.menuInflater;
    }

    public void e(int i10) {
        this.presenter.m(true);
        getMenuInflater().inflate(i10, this.menu);
        this.presenter.m(false);
        this.presenter.d(true);
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.menuView.getItemActiveIndicatorColor();
    }

    @Px
    public int getItemActiveIndicatorHeight() {
        return this.menuView.getItemActiveIndicatorHeight();
    }

    @Px
    public int getItemActiveIndicatorMarginHorizontal() {
        return this.menuView.getItemActiveIndicatorMarginHorizontal();
    }

    @Nullable
    public k getItemActiveIndicatorShapeAppearance() {
        return this.menuView.getItemActiveIndicatorShapeAppearance();
    }

    @Px
    public int getItemActiveIndicatorWidth() {
        return this.menuView.getItemActiveIndicatorWidth();
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.menuView.getItemBackground();
    }

    @DrawableRes
    @Deprecated
    public int getItemBackgroundResource() {
        return this.menuView.getItemBackgroundRes();
    }

    @Dimension
    public int getItemIconSize() {
        return this.menuView.getItemIconSize();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.menuView.getIconTintList();
    }

    @Px
    public int getItemPaddingBottom() {
        return this.menuView.getItemPaddingBottom();
    }

    @Px
    public int getItemPaddingTop() {
        return this.menuView.getItemPaddingTop();
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.menuView.getItemTextAppearanceActive();
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.menuView.getItemTextAppearanceInactive();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.menuView.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.menuView.getLabelVisibilityMode();
    }

    @IdRes
    public int getSelectedItemId() {
        return this.menuView.getSelectedItemId();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.menu.S(savedState.menuPresenterState);
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.menuView.setItemActiveIndicatorColor(colorStateList);
    }

    public void setItemActiveIndicatorEnabled(boolean z6) {
        this.menuView.setItemActiveIndicatorEnabled(z6);
    }

    public void setItemActiveIndicatorHeight(@Px int i10) {
        this.menuView.setItemActiveIndicatorHeight(i10);
    }

    public void setItemActiveIndicatorMarginHorizontal(@Px int i10) {
        this.menuView.setItemActiveIndicatorMarginHorizontal(i10);
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable k kVar) {
        this.menuView.setItemActiveIndicatorShapeAppearance(kVar);
    }

    public void setItemActiveIndicatorWidth(@Px int i10) {
        this.menuView.setItemActiveIndicatorWidth(i10);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.menuView.setItemBackground(drawable);
        this.itemRippleColor = null;
    }

    public void setItemBackgroundResource(@DrawableRes int i10) {
        this.menuView.setItemBackgroundRes(i10);
        this.itemRippleColor = null;
    }

    public void setItemIconSize(@Dimension int i10) {
        this.menuView.setItemIconSize(i10);
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.menuView.setIconTintList(colorStateList);
    }

    public void setItemPaddingBottom(@Px int i10) {
        this.menuView.setItemPaddingBottom(i10);
    }

    public void setItemPaddingTop(@Px int i10) {
        this.menuView.setItemPaddingTop(i10);
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.itemRippleColor == colorStateList) {
            if (colorStateList != null || this.menuView.getItemBackground() == null) {
                return;
            }
            this.menuView.setItemBackground(null);
            return;
        }
        this.itemRippleColor = colorStateList;
        if (colorStateList == null) {
            this.menuView.setItemBackground(null);
        } else {
            this.menuView.setItemBackground(new RippleDrawable(com.google.android.material.ripple.b.a(colorStateList), null, null));
        }
    }

    public void setItemTextAppearanceActive(@StyleRes int i10) {
        this.menuView.setItemTextAppearanceActive(i10);
    }

    public void setItemTextAppearanceInactive(@StyleRes int i10) {
        this.menuView.setItemTextAppearanceInactive(i10);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.menuView.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i10) {
        if (this.menuView.getLabelVisibilityMode() != i10) {
            this.menuView.setLabelVisibilityMode(i10);
            this.presenter.d(false);
        }
    }

    public void setSelectedItemId(@IdRes int i10) {
        MenuItem menuItemFindItem = this.menu.findItem(i10);
        if (menuItemFindItem == null || this.menu.O(menuItemFindItem, this.presenter, 0)) {
            return;
        }
        menuItemFindItem.setChecked(true);
    }

    public NavigationBarView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(r3.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        NavigationBarPresenter navigationBarPresenter = new NavigationBarPresenter();
        this.presenter = navigationBarPresenter;
        Context context2 = getContext();
        int[] iArr = l.NavigationBarView;
        int i12 = l.NavigationBarView_itemTextAppearanceInactive;
        int i13 = l.NavigationBarView_itemTextAppearanceActive;
        TintTypedArray tintTypedArrayI = s.i(context2, attributeSet, iArr, i10, i11, i12, i13);
        com.google.android.material.navigation.b bVar = new com.google.android.material.navigation.b(context2, getClass(), getMaxItemCount());
        this.menu = bVar;
        com.google.android.material.navigation.c cVarD = d(context2);
        this.menuView = cVarD;
        navigationBarPresenter.l(cVarD);
        navigationBarPresenter.i(1);
        cVarD.setPresenter(navigationBarPresenter);
        bVar.b(navigationBarPresenter);
        navigationBarPresenter.g(getContext(), bVar);
        int i14 = l.NavigationBarView_itemIconTint;
        if (tintTypedArrayI.s(i14)) {
            cVarD.setIconTintList(tintTypedArrayI.c(i14));
        } else {
            cVarD.setIconTintList(cVarD.e(R.attr.textColorSecondary));
        }
        setItemIconSize(tintTypedArrayI.f(l.NavigationBarView_itemIconSize, getResources().getDimensionPixelSize(d.mtrl_navigation_bar_item_default_icon_size)));
        if (tintTypedArrayI.s(i12)) {
            setItemTextAppearanceInactive(tintTypedArrayI.n(i12, 0));
        }
        if (tintTypedArrayI.s(i13)) {
            setItemTextAppearanceActive(tintTypedArrayI.n(i13, 0));
        }
        int i15 = l.NavigationBarView_itemTextColor;
        if (tintTypedArrayI.s(i15)) {
            setItemTextColor(tintTypedArrayI.c(i15));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            ViewCompat.y0(this, c(context2));
        }
        int i16 = l.NavigationBarView_itemPaddingTop;
        if (tintTypedArrayI.s(i16)) {
            setItemPaddingTop(tintTypedArrayI.f(i16, 0));
        }
        int i17 = l.NavigationBarView_itemPaddingBottom;
        if (tintTypedArrayI.s(i17)) {
            setItemPaddingBottom(tintTypedArrayI.f(i17, 0));
        }
        int i18 = l.NavigationBarView_elevation;
        if (tintTypedArrayI.s(i18)) {
            setElevation(tintTypedArrayI.f(i18, 0));
        }
        DrawableCompat.o(getBackground().mutate(), com.google.android.material.resources.c.b(context2, tintTypedArrayI, l.NavigationBarView_backgroundTint));
        setLabelVisibilityMode(tintTypedArrayI.l(l.NavigationBarView_labelVisibilityMode, -1));
        int iN = tintTypedArrayI.n(l.NavigationBarView_itemBackground, 0);
        if (iN != 0) {
            cVarD.setItemBackgroundRes(iN);
        } else {
            setItemRippleColor(com.google.android.material.resources.c.b(context2, tintTypedArrayI, l.NavigationBarView_itemRippleColor));
        }
        int iN2 = tintTypedArrayI.n(l.NavigationBarView_itemActiveIndicatorStyle, 0);
        if (iN2 != 0) {
            setItemActiveIndicatorEnabled(true);
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(iN2, l.NavigationBarActiveIndicator);
            setItemActiveIndicatorWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(l.NavigationBarActiveIndicator_android_width, 0));
            setItemActiveIndicatorHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(l.NavigationBarActiveIndicator_android_height, 0));
            setItemActiveIndicatorMarginHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(l.NavigationBarActiveIndicator_marginHorizontal, 0));
            setItemActiveIndicatorColor(com.google.android.material.resources.c.a(context2, typedArrayObtainStyledAttributes, l.NavigationBarActiveIndicator_android_color));
            setItemActiveIndicatorShapeAppearance(k.b(context2, typedArrayObtainStyledAttributes.getResourceId(l.NavigationBarActiveIndicator_shapeAppearance, 0), 0).m());
            typedArrayObtainStyledAttributes.recycle();
        }
        int i19 = l.NavigationBarView_menu;
        if (tintTypedArrayI.s(i19)) {
            e(tintTypedArrayI.n(i19, 0));
        }
        tintTypedArrayI.w();
        addView(cVarD);
        bVar.V(new a());
    }

    static /* synthetic */ b a(NavigationBarView navigationBarView) {
        navigationBarView.getClass();
        return null;
    }

    static /* synthetic */ c b(NavigationBarView navigationBarView) {
        navigationBarView.getClass();
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        h.e(this);
    }

    @Override // android.view.View
    @NonNull
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.menuPresenterState = bundle;
        this.menu.U(bundle);
        return savedState;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        h.d(this, f);
    }

    public void setItemIconSizeRes(@DimenRes int i10) {
        setItemIconSize(getResources().getDimensionPixelSize(i10));
    }
}
