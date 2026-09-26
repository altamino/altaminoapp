package androidx.core.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.internal.view.SupportMenuItem;

/* JADX INFO: loaded from: classes9.dex */
public final class MenuItemCompat {

    @Deprecated
    public static final int SHOW_AS_ACTION_ALWAYS = 2;

    @Deprecated
    public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;

    @Deprecated
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;

    @Deprecated
    public static final int SHOW_AS_ACTION_NEVER = 0;

    @Deprecated
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;
    private static final String TAG = "MenuItemCompat";

    /* JADX INFO: renamed from: androidx.core.view.MenuItemCompat$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes3.dex */
    class AnonymousClass1 implements MenuItem.OnActionExpandListener {
        final /* synthetic */ OnActionExpandListener val$listener;

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.val$listener.onMenuItemActionCollapse(menuItem);
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.val$listener.onMenuItemActionExpand(menuItem);
        }
    }

    @Deprecated
    public interface OnActionExpandListener {
        boolean onMenuItemActionCollapse(MenuItem menuItem);

        boolean onMenuItemActionExpand(MenuItem menuItem);
    }

    @RequiresApi
    static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        static int a(MenuItem menuItem) {
            return menuItem.getAlphabeticModifiers();
        }

        @DoNotInline
        static CharSequence b(MenuItem menuItem) {
            return menuItem.getContentDescription();
        }

        @DoNotInline
        static ColorStateList c(MenuItem menuItem) {
            return menuItem.getIconTintList();
        }

        @DoNotInline
        static PorterDuff.Mode d(MenuItem menuItem) {
            return menuItem.getIconTintMode();
        }

        @DoNotInline
        static int e(MenuItem menuItem) {
            return menuItem.getNumericModifiers();
        }

        @DoNotInline
        static CharSequence f(MenuItem menuItem) {
            return menuItem.getTooltipText();
        }

        @DoNotInline
        static MenuItem g(MenuItem menuItem, char c7, int i10) {
            return menuItem.setAlphabeticShortcut(c7, i10);
        }

        @DoNotInline
        static MenuItem h(MenuItem menuItem, CharSequence charSequence) {
            return menuItem.setContentDescription(charSequence);
        }

        @DoNotInline
        static MenuItem i(MenuItem menuItem, ColorStateList colorStateList) {
            return menuItem.setIconTintList(colorStateList);
        }

        @DoNotInline
        static MenuItem j(MenuItem menuItem, PorterDuff.Mode mode) {
            return menuItem.setIconTintMode(mode);
        }

        @DoNotInline
        static MenuItem k(MenuItem menuItem, char c7, int i10) {
            return menuItem.setNumericShortcut(c7, i10);
        }

        @DoNotInline
        static MenuItem l(MenuItem menuItem, char c7, char c10, int i10, int i11) {
            return menuItem.setShortcut(c7, c10, i10, i11);
        }

        @DoNotInline
        static MenuItem m(MenuItem menuItem, CharSequence charSequence) {
            return menuItem.setTooltipText(charSequence);
        }
    }

    @Nullable
    public static MenuItem a(@NonNull MenuItem menuItem, @Nullable ActionProvider actionProvider) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).b(actionProvider);
        }
        Log.w(TAG, "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    public static void b(@NonNull MenuItem menuItem, char c7, int i10) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setAlphabeticShortcut(c7, i10);
        } else if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.g(menuItem, c7, i10);
        }
    }

    public static void c(@NonNull MenuItem menuItem, @Nullable CharSequence charSequence) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.h(menuItem, charSequence);
        }
    }

    public static void d(@NonNull MenuItem menuItem, @Nullable ColorStateList colorStateList) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setIconTintList(colorStateList);
        } else if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.i(menuItem, colorStateList);
        }
    }

    public static void e(@NonNull MenuItem menuItem, @Nullable PorterDuff.Mode mode) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setIconTintMode(mode);
        } else if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.j(menuItem, mode);
        }
    }

    public static void f(@NonNull MenuItem menuItem, char c7, int i10) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setNumericShortcut(c7, i10);
        } else if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.k(menuItem, c7, i10);
        }
    }

    public static void g(@NonNull MenuItem menuItem, @Nullable CharSequence charSequence) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setTooltipText(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.m(menuItem, charSequence);
        }
    }

    private MenuItemCompat() {
    }
}
