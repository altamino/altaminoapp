package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.DecorToolbar;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ToolbarWidgetWrapper;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
class ToolbarActionBar extends ActionBar {
    final DecorToolbar mDecorToolbar;
    private boolean mLastMenuVisibility;
    final AppCompatDelegateImpl.ActionBarMenuCallback mMenuCallback;
    private boolean mMenuCallbackSet;
    private final Toolbar.OnMenuItemClickListener mMenuClicker;
    boolean mToolbarMenuPrepared;
    final Window.Callback mWindowCallback;
    private ArrayList<ActionBar.OnMenuVisibilityListener> mMenuVisibilityListeners = new ArrayList<>();
    private final Runnable mMenuInvalidator = new Runnable() { // from class: androidx.appcompat.app.ToolbarActionBar.1
        @Override // java.lang.Runnable
        public void run() {
            ToolbarActionBar.this.B();
        }
    };

    private final class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        private boolean mClosingActionMenu;

        ActionMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void a(@NonNull MenuBuilder menuBuilder, boolean z6) {
            if (this.mClosingActionMenu) {
                return;
            }
            this.mClosingActionMenu = true;
            ToolbarActionBar.this.mDecorToolbar.n();
            ToolbarActionBar.this.mWindowCallback.onPanelClosed(108, menuBuilder);
            this.mClosingActionMenu = false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean b(@NonNull MenuBuilder menuBuilder) {
            ToolbarActionBar.this.mWindowCallback.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    private final class MenuBuilderCallback implements MenuBuilder.Callback {
        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean a(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            return false;
        }

        MenuBuilderCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void b(@NonNull MenuBuilder menuBuilder) {
            if (ToolbarActionBar.this.mDecorToolbar.c()) {
                ToolbarActionBar.this.mWindowCallback.onPanelClosed(108, menuBuilder);
            } else if (ToolbarActionBar.this.mWindowCallback.onPreparePanel(0, null, menuBuilder)) {
                ToolbarActionBar.this.mWindowCallback.onMenuOpened(108, menuBuilder);
            }
        }
    }

    private class ToolbarMenuCallback implements AppCompatDelegateImpl.ActionBarMenuCallback {
        ToolbarMenuCallback() {
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.ActionBarMenuCallback
        public boolean a(int i10) {
            if (i10 != 0) {
                return false;
            }
            ToolbarActionBar toolbarActionBar = ToolbarActionBar.this;
            if (toolbarActionBar.mToolbarMenuPrepared) {
                return false;
            }
            toolbarActionBar.mDecorToolbar.f();
            ToolbarActionBar.this.mToolbarMenuPrepared = true;
            return false;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.ActionBarMenuCallback
        public View onCreatePanelView(int i10) {
            if (i10 == 0) {
                return new View(ToolbarActionBar.this.mDecorToolbar.getContext());
            }
            return null;
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void s(boolean z6) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void t(boolean z6) {
        C(z6 ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void w(boolean z6) {
    }

    private Menu A() {
        if (!this.mMenuCallbackSet) {
            this.mDecorToolbar.x(new ActionMenuPresenterCallback(), new MenuBuilderCallback());
            this.mMenuCallbackSet = true;
        }
        return this.mDecorToolbar.r();
    }

    public void C(int i10, int i11) {
        this.mDecorToolbar.i((i10 & i11) | ((~i11) & this.mDecorToolbar.o()));
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean f() {
        return this.mDecorToolbar.d();
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean g() {
        if (!this.mDecorToolbar.h()) {
            return false;
        }
        this.mDecorToolbar.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void h(boolean z6) {
        if (z6 == this.mLastMenuVisibility) {
            return;
        }
        this.mLastMenuVisibility = z6;
        int size = this.mMenuVisibilityListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mMenuVisibilityListeners.get(i10).a(z6);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public int i() {
        return this.mDecorToolbar.o();
    }

    @Override // androidx.appcompat.app.ActionBar
    public Context j() {
        return this.mDecorToolbar.getContext();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void k() {
        this.mDecorToolbar.setVisibility(8);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean l() {
        this.mDecorToolbar.t().removeCallbacks(this.mMenuInvalidator);
        ViewCompat.l0(this.mDecorToolbar.t(), this.mMenuInvalidator);
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean m() {
        return this.mDecorToolbar.getVisibility() == 0;
    }

    @Override // androidx.appcompat.app.ActionBar
    void o() {
        this.mDecorToolbar.t().removeCallbacks(this.mMenuInvalidator);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean r() {
        return this.mDecorToolbar.b();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void u(int i10) {
        this.mDecorToolbar.k(i10);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void v(Drawable drawable) {
        this.mDecorToolbar.q(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void x(CharSequence charSequence) {
        this.mDecorToolbar.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void y(CharSequence charSequence) {
        this.mDecorToolbar.setWindowTitle(charSequence);
    }

    ToolbarActionBar(@NonNull Toolbar toolbar, @Nullable CharSequence charSequence, @NonNull Window.Callback callback) {
        Toolbar.OnMenuItemClickListener onMenuItemClickListener = new Toolbar.OnMenuItemClickListener() { // from class: androidx.appcompat.app.ToolbarActionBar.2
            @Override // androidx.appcompat.widget.Toolbar.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                return ToolbarActionBar.this.mWindowCallback.onMenuItemSelected(0, menuItem);
            }
        };
        this.mMenuClicker = onMenuItemClickListener;
        Preconditions.i(toolbar);
        ToolbarWidgetWrapper toolbarWidgetWrapper = new ToolbarWidgetWrapper(toolbar, false);
        this.mDecorToolbar = toolbarWidgetWrapper;
        this.mWindowCallback = (Window.Callback) Preconditions.i(callback);
        toolbarWidgetWrapper.setWindowCallback(callback);
        toolbar.setOnMenuItemClickListener(onMenuItemClickListener);
        toolbarWidgetWrapper.setWindowTitle(charSequence);
        this.mMenuCallback = new ToolbarMenuCallback();
    }

    void B() {
        MenuBuilder menuBuilder;
        Menu menuA = A();
        if (menuA instanceof MenuBuilder) {
            menuBuilder = (MenuBuilder) menuA;
        } else {
            menuBuilder = null;
        }
        if (menuBuilder != null) {
            menuBuilder.h0();
        }
        try {
            menuA.clear();
            if (!this.mWindowCallback.onCreatePanelMenu(0, menuA) || !this.mWindowCallback.onPreparePanel(0, null, menuA)) {
                menuA.clear();
            }
        } finally {
            if (menuBuilder != null) {
                menuBuilder.g0();
            }
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void n(Configuration configuration) {
        super.n(configuration);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean p(int i10, KeyEvent keyEvent) {
        int deviceId;
        Menu menuA = A();
        if (menuA == null) {
            return false;
        }
        if (keyEvent != null) {
            deviceId = keyEvent.getDeviceId();
        } else {
            deviceId = -1;
        }
        boolean z6 = true;
        if (KeyCharacterMap.load(deviceId).getKeyboardType() == 1) {
            z6 = false;
        }
        menuA.setQwertyMode(z6);
        return menuA.performShortcut(i10, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean q(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            r();
        }
        return true;
    }
}
