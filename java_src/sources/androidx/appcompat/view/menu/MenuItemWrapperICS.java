package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo
public class MenuItemWrapperICS extends BaseMenuWrapper implements MenuItem {
    static final String LOG_TAG = "MenuItemWrapper";
    private Method mSetExclusiveCheckableMethod;
    private final SupportMenuItem mWrappedObject;

    private class ActionProviderWrapper extends ActionProvider {
        final android.view.ActionProvider mInner;

        ActionProviderWrapper(Context context, android.view.ActionProvider actionProvider) {
            super(context);
            this.mInner = actionProvider;
        }

        @Override // androidx.core.view.ActionProvider
        public boolean a() {
            return this.mInner.hasSubMenu();
        }

        @Override // androidx.core.view.ActionProvider
        public View c() {
            return this.mInner.onCreateActionView();
        }

        @Override // androidx.core.view.ActionProvider
        public boolean e() {
            return this.mInner.onPerformDefaultAction();
        }

        @Override // androidx.core.view.ActionProvider
        public void f(SubMenu subMenu) {
            this.mInner.onPrepareSubMenu(MenuItemWrapperICS.this.d(subMenu));
        }
    }

    @RequiresApi
    private class ActionProviderWrapperJB extends ActionProviderWrapper implements android.view.ActionProvider.VisibilityListener {
        private ActionProvider.VisibilityListener mListener;

        ActionProviderWrapperJB(Context context, android.view.ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // androidx.core.view.ActionProvider
        public boolean b() {
            return this.mInner.isVisible();
        }

        @Override // androidx.core.view.ActionProvider
        public View d(MenuItem menuItem) {
            return this.mInner.onCreateActionView(menuItem);
        }

        @Override // androidx.core.view.ActionProvider
        public boolean g() {
            return this.mInner.overridesItemVisibility();
        }

        @Override // androidx.core.view.ActionProvider
        public void j(ActionProvider.VisibilityListener visibilityListener) {
            this.mListener = visibilityListener;
            this.mInner.setVisibilityListener(visibilityListener != null ? this : null);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z6) {
            ActionProvider.VisibilityListener visibilityListener = this.mListener;
            if (visibilityListener != null) {
                visibilityListener.onActionProviderVisibilityChanged(z6);
            }
        }
    }

    static class CollapsibleActionViewWrapper extends FrameLayout implements CollapsibleActionView {
        final android.view.CollapsibleActionView mWrappedView;

        View a() {
            return (View) this.mWrappedView;
        }

        @Override // androidx.appcompat.view.CollapsibleActionView
        public void b() {
            this.mWrappedView.onActionViewCollapsed();
        }

        @Override // androidx.appcompat.view.CollapsibleActionView
        public void d() {
            this.mWrappedView.onActionViewExpanded();
        }

        /* JADX WARN: Multi-variable type inference failed */
        CollapsibleActionViewWrapper(View view) {
            super(view.getContext());
            this.mWrappedView = (android.view.CollapsibleActionView) view;
            addView(view);
        }
    }

    private class OnActionExpandListenerWrapper implements MenuItem.OnActionExpandListener {
        private final MenuItem.OnActionExpandListener mObject;

        OnActionExpandListenerWrapper(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.mObject = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.mObject.onMenuItemActionCollapse(MenuItemWrapperICS.this.c(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.mObject.onMenuItemActionExpand(MenuItemWrapperICS.this.c(menuItem));
        }
    }

    private class OnMenuItemClickListenerWrapper implements MenuItem.OnMenuItemClickListener {
        private final MenuItem.OnMenuItemClickListener mObject;

        OnMenuItemClickListenerWrapper(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.mObject = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.mObject.onMenuItemClick(MenuItemWrapperICS.this.c(menuItem));
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof android.view.CollapsibleActionView) {
            view = new CollapsibleActionViewWrapper(view);
        }
        this.mWrappedObject.setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c7) {
        this.mWrappedObject.setAlphabeticShortcut(c7);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.mWrappedObject.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c7) {
        this.mWrappedObject.setNumericShortcut(c7);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c7, char c10) {
        this.mWrappedObject.setShortcut(c7, c10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.mWrappedObject.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.mWrappedObject.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.mWrappedObject.expandActionView();
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        ActionProvider actionProviderA = this.mWrappedObject.a();
        if (actionProviderA instanceof ActionProviderWrapper) {
            return ((ActionProviderWrapper) actionProviderA).mInner;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.mWrappedObject.getActionView();
        return actionView instanceof CollapsibleActionViewWrapper ? ((CollapsibleActionViewWrapper) actionView).a() : actionView;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.mWrappedObject.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.mWrappedObject.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.mWrappedObject.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.mWrappedObject.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.mWrappedObject.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.mWrappedObject.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.mWrappedObject.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.mWrappedObject.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.mWrappedObject.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.mWrappedObject.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.mWrappedObject.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.mWrappedObject.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.mWrappedObject.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return d(this.mWrappedObject.getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.mWrappedObject.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.mWrappedObject.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.mWrappedObject.getTooltipText();
    }

    public void h(boolean z6) {
        try {
            if (this.mSetExclusiveCheckableMethod == null) {
                this.mSetExclusiveCheckableMethod = this.mWrappedObject.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.mSetExclusiveCheckableMethod.invoke(this.mWrappedObject, Boolean.valueOf(z6));
        } catch (Exception e) {
            Log.w(LOG_TAG, "Error while calling setExclusiveCheckable", e);
        }
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.mWrappedObject.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.mWrappedObject.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.mWrappedObject.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.mWrappedObject.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.mWrappedObject.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.mWrappedObject.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        ActionProviderWrapperJB actionProviderWrapperJB = new ActionProviderWrapperJB(this.mContext, actionProvider);
        SupportMenuItem supportMenuItem = this.mWrappedObject;
        if (actionProvider == null) {
            actionProviderWrapperJB = null;
        }
        supportMenuItem.b(actionProviderWrapperJB);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c7, int i10) {
        this.mWrappedObject.setAlphabeticShortcut(c7, i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z6) {
        this.mWrappedObject.setCheckable(z6);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z6) {
        this.mWrappedObject.setChecked(z6);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.mWrappedObject.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z6) {
        this.mWrappedObject.setEnabled(z6);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i10) {
        this.mWrappedObject.setIcon(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.mWrappedObject.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.mWrappedObject.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.mWrappedObject.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c7, int i10) {
        this.mWrappedObject.setNumericShortcut(c7, i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.mWrappedObject.setOnActionExpandListener(onActionExpandListener != null ? new OnActionExpandListenerWrapper(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.mWrappedObject.setOnMenuItemClickListener(onMenuItemClickListener != null ? new OnMenuItemClickListenerWrapper(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c7, char c10, int i10, int i11) {
        this.mWrappedObject.setShortcut(c7, c10, i10, i11);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i10) {
        this.mWrappedObject.setShowAsAction(i10);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i10) {
        this.mWrappedObject.setShowAsActionFlags(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i10) {
        this.mWrappedObject.setTitle(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.mWrappedObject.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.mWrappedObject.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z6) {
        return this.mWrappedObject.setVisible(z6);
    }

    public MenuItemWrapperICS(Context context, SupportMenuItem supportMenuItem) {
        super(context);
        if (supportMenuItem != null) {
            this.mWrappedObject = supportMenuItem;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i10) {
        this.mWrappedObject.setActionView(i10);
        View actionView = this.mWrappedObject.getActionView();
        if (actionView instanceof android.view.CollapsibleActionView) {
            this.mWrappedObject.setActionView(new CollapsibleActionViewWrapper(actionView));
        }
        return this;
    }
}
