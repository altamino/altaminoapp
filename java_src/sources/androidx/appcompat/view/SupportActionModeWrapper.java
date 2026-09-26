package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.view.menu.MenuWrapperICS;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenu;
import androidx.core.internal.view.SupportMenuItem;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
@RestrictTo
public class SupportActionModeWrapper extends android.view.ActionMode {
    final Context mContext;
    final ActionMode mWrappedObject;

    @RestrictTo
    public static class CallbackWrapper implements ActionMode.Callback {
        final Context mContext;
        final android.view.ActionMode.Callback mWrappedCallback;
        final ArrayList<SupportActionModeWrapper> mActionModes = new ArrayList<>();
        final SimpleArrayMap<Menu, Menu> mMenus = new SimpleArrayMap<>();

        private Menu f(Menu menu) {
            Menu menu2 = this.mMenus.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            MenuWrapperICS menuWrapperICS = new MenuWrapperICS(this.mContext, (SupportMenu) menu);
            this.mMenus.put(menu, menuWrapperICS);
            return menuWrapperICS;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean a(ActionMode actionMode, Menu menu) {
            return this.mWrappedCallback.onCreateActionMode(e(actionMode), f(menu));
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean b(ActionMode actionMode, MenuItem menuItem) {
            return this.mWrappedCallback.onActionItemClicked(e(actionMode), new MenuItemWrapperICS(this.mContext, (SupportMenuItem) menuItem));
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean c(ActionMode actionMode, Menu menu) {
            return this.mWrappedCallback.onPrepareActionMode(e(actionMode), f(menu));
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public void d(ActionMode actionMode) {
            this.mWrappedCallback.onDestroyActionMode(e(actionMode));
        }

        public android.view.ActionMode e(ActionMode actionMode) {
            int size = this.mActionModes.size();
            for (int i10 = 0; i10 < size; i10++) {
                SupportActionModeWrapper supportActionModeWrapper = this.mActionModes.get(i10);
                if (supportActionModeWrapper != null && supportActionModeWrapper.mWrappedObject == actionMode) {
                    return supportActionModeWrapper;
                }
            }
            SupportActionModeWrapper supportActionModeWrapper2 = new SupportActionModeWrapper(this.mContext, actionMode);
            this.mActionModes.add(supportActionModeWrapper2);
            return supportActionModeWrapper2;
        }

        public CallbackWrapper(Context context, android.view.ActionMode.Callback callback) {
            this.mContext = context;
            this.mWrappedCallback = callback;
        }
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.mWrappedObject.o(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.mWrappedObject.r(charSequence);
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.mWrappedObject.c();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.mWrappedObject.d();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new MenuWrapperICS(this.mContext, (SupportMenu) this.mWrappedObject.e());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.mWrappedObject.f();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.mWrappedObject.g();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.mWrappedObject.h();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.mWrappedObject.i();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.mWrappedObject.j();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.mWrappedObject.k();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.mWrappedObject.l();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.mWrappedObject.m(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i10) {
        this.mWrappedObject.n(i10);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.mWrappedObject.p(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i10) {
        this.mWrappedObject.q(i10);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z6) {
        this.mWrappedObject.s(z6);
    }

    public SupportActionModeWrapper(Context context, ActionMode actionMode) {
        this.mContext = context;
        this.mWrappedObject = actionMode;
    }
}
