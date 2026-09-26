package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public class NavigationMenuItemView extends g implements MenuView.ItemView {
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private final AccessibilityDelegateCompat accessibilityDelegate;
    private FrameLayout actionArea;
    boolean checkable;
    private Drawable emptyDrawable;
    private boolean hasIconTintList;
    private int iconSize;
    private ColorStateList iconTintList;
    private MenuItemImpl itemData;
    private boolean needsEmptyIcon;
    private final CheckedTextView textView;

    class a extends AccessibilityDelegateCompat {
        a() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.c0(NavigationMenuItemView.this.checkable);
        }
    }

    public NavigationMenuItemView(@NonNull Context context) {
        this(context, null);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean c() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.itemData;
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            if (this.hasIconTintList) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = DrawableCompat.r(drawable).mutate();
                DrawableCompat.o(drawable, this.iconTintList);
            }
            int i10 = this.iconSize;
            drawable.setBounds(0, 0, i10, i10);
        } else if (this.needsEmptyIcon) {
            if (this.emptyDrawable == null) {
                Drawable drawableE = ResourcesCompat.e(getResources(), d3.e.navigation_empty_icon, getContext().getTheme());
                this.emptyDrawable = drawableE;
                if (drawableE != null) {
                    int i11 = this.iconSize;
                    drawableE.setBounds(0, 0, i11, i11);
                }
            }
            drawable = this.emptyDrawable;
        }
        TextViewCompat.l(this.textView, drawable, null, null, null);
    }

    public void setIconSize(@Dimension int i10) {
        this.iconSize = i10;
    }

    public void setNeedsEmptyIcon(boolean z6) {
        this.needsEmptyIcon = z6;
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Nullable
    private StateListDrawable E() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(CHECKED_STATE_SET, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    private boolean G() {
        return this.itemData.getTitle() == null && this.itemData.getIcon() == null && this.itemData.getActionView() != null;
    }

    private void setActionView(@Nullable View view) {
        if (view != null) {
            if (this.actionArea == null) {
                this.actionArea = (FrameLayout) ((ViewStub) findViewById(d3.f.design_menu_item_action_area_stub)).inflate();
            }
            this.actionArea.removeAllViews();
            this.actionArea.addView(view);
        }
    }

    public void F() {
        FrameLayout frameLayout = this.actionArea;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.textView.setCompoundDrawables(null, null, null, null);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void e(@NonNull MenuItemImpl menuItemImpl, int i10) {
        this.itemData = menuItemImpl;
        if (menuItemImpl.getItemId() > 0) {
            setId(menuItemImpl.getItemId());
        }
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ViewCompat.y0(this, E());
        }
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setTitle(menuItemImpl.getTitle());
        setIcon(menuItemImpl.getIcon());
        setActionView(menuItemImpl.getActionView());
        setContentDescription(menuItemImpl.getContentDescription());
        TooltipCompat.a(this, menuItemImpl.getTooltipText());
        D();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        MenuItemImpl menuItemImpl = this.itemData;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.itemData.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    public void setIconPadding(int i10) {
        this.textView.setCompoundDrawablePadding(i10);
    }

    void setIconTintList(ColorStateList colorStateList) {
        this.iconTintList = colorStateList;
        this.hasIconTintList = colorStateList != null;
        MenuItemImpl menuItemImpl = this.itemData;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    public void setMaxLines(int i10) {
        this.textView.setMaxLines(i10);
    }

    public void setTextAppearance(int i10) {
        TextViewCompat.q(this.textView, i10);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.textView.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.textView.setText(charSequence);
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a aVar = new a();
        this.accessibilityDelegate = aVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(d3.h.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(d3.d.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(d3.f.design_menu_item_text);
        this.textView = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        ViewCompat.u0(checkedTextView, aVar);
    }

    private void D() {
        if (G()) {
            this.textView.setVisibility(8);
            FrameLayout frameLayout = this.actionArea;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) layoutParams).width = -1;
                this.actionArea.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.textView.setVisibility(0);
        FrameLayout frameLayout2 = this.actionArea;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) layoutParams2).width = -2;
            this.actionArea.setLayoutParams(layoutParams2);
        }
    }

    public void setCheckable(boolean z6) {
        refreshDrawableState();
        if (this.checkable != z6) {
            this.checkable = z6;
            this.accessibilityDelegate.sendAccessibilityEvent(this.textView, 2048);
        }
    }

    public void setChecked(boolean z6) {
        refreshDrawableState();
        this.textView.setChecked(z6);
    }

    public void setHorizontalPadding(int i10) {
        setPadding(i10, getPaddingTop(), i10, getPaddingBottom());
    }
}
