package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ActionProvider;
import androidx.core.view.ViewConfigurationCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public class MenuBuilder implements SupportMenu {
    private static final String ACTION_VIEW_STATES_KEY = "android:menu:actionviewstates";
    private static final String EXPANDED_ACTION_VIEW_ID = "android:menu:expandedactionview";
    private static final String PRESENTER_KEY = "android:menu:presenters";
    private static final String TAG = "MenuBuilder";
    private static final int[] sCategoryToOrder = {1, 4, 5, 3, 2, 0};
    private Callback mCallback;
    private final Context mContext;
    private ContextMenu.ContextMenuInfo mCurrentMenuInfo;
    private MenuItemImpl mExpandedItem;
    Drawable mHeaderIcon;
    CharSequence mHeaderTitle;
    View mHeaderView;
    private boolean mOverrideVisibleItems;
    private boolean mQwertyMode;
    private final Resources mResources;
    private boolean mShortcutsVisible;
    private int mDefaultShowAsAction = 0;
    private boolean mPreventDispatchingItemsChanged = false;
    private boolean mItemsChangedWhileDispatchPrevented = false;
    private boolean mStructureChangedWhileDispatchPrevented = false;
    private boolean mOptionalIconsVisible = false;
    private boolean mIsClosing = false;
    private ArrayList<MenuItemImpl> mTempShortcutItemList = new ArrayList<>();
    private CopyOnWriteArrayList<WeakReference<MenuPresenter>> mPresenters = new CopyOnWriteArrayList<>();
    private boolean mGroupDividerEnabled = false;
    private ArrayList<MenuItemImpl> mItems = new ArrayList<>();
    private ArrayList<MenuItemImpl> mVisibleItems = new ArrayList<>();
    private boolean mIsVisibleItemsStale = true;
    private ArrayList<MenuItemImpl> mActionItems = new ArrayList<>();
    private ArrayList<MenuItemImpl> mNonActionItems = new ArrayList<>();
    private boolean mIsActionItemsStale = true;

    @RestrictTo
    public interface Callback {
        boolean a(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem);

        void b(@NonNull MenuBuilder menuBuilder);
    }

    @RestrictTo
    public interface ItemInvoker {
        boolean f(MenuItemImpl menuItemImpl);
    }

    public View A() {
        return this.mHeaderView;
    }

    boolean C() {
        return this.mOptionalIconsVisible;
    }

    Resources E() {
        return this.mResources;
    }

    public MenuBuilder F() {
        return this;
    }

    public boolean H() {
        return this.mGroupDividerEnabled;
    }

    boolean I() {
        return this.mQwertyMode;
    }

    public boolean J() {
        return this.mShortcutsVisible;
    }

    void K(MenuItemImpl menuItemImpl) {
        this.mIsActionItemsStale = true;
        M(true);
    }

    void L(MenuItemImpl menuItemImpl) {
        this.mIsVisibleItemsStale = true;
        M(true);
    }

    public boolean N(MenuItem menuItem, int i10) {
        return O(menuItem, null, i10);
    }

    public void V(Callback callback) {
        this.mCallback = callback;
    }

    public MenuBuilder W(int i10) {
        this.mDefaultShowAsAction = i10;
        return this;
    }

    protected MenuBuilder Y(int i10) {
        a0(0, null, i10, null, null);
        return this;
    }

    protected MenuBuilder Z(Drawable drawable) {
        a0(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    protected MenuBuilder b0(int i10) {
        a0(i10, null, 0, null, null);
        return this;
    }

    protected MenuBuilder c0(CharSequence charSequence) {
        a0(0, charSequence, 0, null, null);
        return this;
    }

    public void clearHeader() {
        this.mHeaderIcon = null;
        this.mHeaderTitle = null;
        this.mHeaderView = null;
        M(false);
    }

    @Override // android.view.Menu
    public void close() {
        e(true);
    }

    protected MenuBuilder d0(View view) {
        a0(0, null, 0, null, view);
        return this;
    }

    public void e0(boolean z6) {
        this.mOverrideVisibleItems = z6;
    }

    public void g0() {
        this.mPreventDispatchingItemsChanged = false;
        if (this.mItemsChangedWhileDispatchPrevented) {
            this.mItemsChangedWhileDispatchPrevented = false;
            M(this.mStructureChangedWhileDispatchPrevented);
        }
    }

    public void h0() {
        if (this.mPreventDispatchingItemsChanged) {
            return;
        }
        this.mPreventDispatchingItemsChanged = true;
        this.mItemsChangedWhileDispatchPrevented = false;
        this.mStructureChangedWhileDispatchPrevented = false;
    }

    public int n(int i10) {
        return o(i10, 0);
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z6) {
        this.mGroupDividerEnabled = z6;
    }

    protected String v() {
        return ACTION_VIEW_STATES_KEY;
    }

    public Context w() {
        return this.mContext;
    }

    public MenuItemImpl x() {
        return this.mExpandedItem;
    }

    public Drawable y() {
        return this.mHeaderIcon;
    }

    public CharSequence z() {
        return this.mHeaderTitle;
    }

    private static int D(int i10) {
        int i11 = ((-65536) & i10) >> 16;
        if (i11 >= 0) {
            int[] iArr = sCategoryToOrder;
            if (i11 < iArr.length) {
                return (i10 & 65535) | (iArr[i11] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    private void P(int i10, boolean z6) {
        if (i10 < 0 || i10 >= this.mItems.size()) {
            return;
        }
        this.mItems.remove(i10);
        if (z6) {
            M(true);
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    private void f0(boolean z6) {
        boolean z10;
        if (z6) {
            z10 = this.mResources.getConfiguration().keyboard != 1 && ViewConfigurationCompat.e(ViewConfiguration.get(this.mContext), this.mContext);
        }
        this.mShortcutsVisible = z10;
    }

    private MenuItemImpl g(int i10, int i11, int i12, int i13, CharSequence charSequence, int i14) {
        return new MenuItemImpl(this, i10, i11, i12, i13, charSequence, i14);
    }

    private void i(boolean z6) {
        if (this.mPresenters.isEmpty()) {
            return;
        }
        h0();
        for (WeakReference<MenuPresenter> weakReference : this.mPresenters) {
            MenuPresenter menuPresenter = weakReference.get();
            if (menuPresenter == null) {
                this.mPresenters.remove(weakReference);
            } else {
                menuPresenter.d(z6);
            }
        }
        g0();
    }

    private void j(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(PRESENTER_KEY);
        if (sparseParcelableArray == null || this.mPresenters.isEmpty()) {
            return;
        }
        for (WeakReference<MenuPresenter> weakReference : this.mPresenters) {
            MenuPresenter menuPresenter = weakReference.get();
            if (menuPresenter == null) {
                this.mPresenters.remove(weakReference);
            } else {
                int id = menuPresenter.getId();
                if (id > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(id)) != null) {
                    menuPresenter.j(parcelable);
                }
            }
        }
    }

    private void k(Bundle bundle) {
        Parcelable parcelableC;
        if (this.mPresenters.isEmpty()) {
            return;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        for (WeakReference<MenuPresenter> weakReference : this.mPresenters) {
            MenuPresenter menuPresenter = weakReference.get();
            if (menuPresenter == null) {
                this.mPresenters.remove(weakReference);
            } else {
                int id = menuPresenter.getId();
                if (id > 0 && (parcelableC = menuPresenter.c()) != null) {
                    sparseArray.put(id, parcelableC);
                }
            }
        }
        bundle.putSparseParcelableArray(PRESENTER_KEY, sparseArray);
    }

    private boolean l(SubMenuBuilder subMenuBuilder, MenuPresenter menuPresenter) {
        if (this.mPresenters.isEmpty()) {
            return false;
        }
        boolean zK = menuPresenter != null ? menuPresenter.k(subMenuBuilder) : false;
        for (WeakReference<MenuPresenter> weakReference : this.mPresenters) {
            MenuPresenter menuPresenter2 = weakReference.get();
            if (menuPresenter2 == null) {
                this.mPresenters.remove(weakReference);
            } else if (!zK) {
                zK = menuPresenter2.k(subMenuBuilder);
            }
        }
        return zK;
    }

    @NonNull
    public ArrayList<MenuItemImpl> G() {
        if (!this.mIsVisibleItemsStale) {
            return this.mVisibleItems;
        }
        this.mVisibleItems.clear();
        int size = this.mItems.size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItemImpl menuItemImpl = this.mItems.get(i10);
            if (menuItemImpl.isVisible()) {
                this.mVisibleItems.add(menuItemImpl);
            }
        }
        this.mIsVisibleItemsStale = false;
        this.mIsActionItemsStale = true;
        return this.mVisibleItems;
    }

    public void M(boolean z6) {
        if (this.mPreventDispatchingItemsChanged) {
            this.mItemsChangedWhileDispatchPrevented = true;
            if (z6) {
                this.mStructureChangedWhileDispatchPrevented = true;
                return;
            }
            return;
        }
        if (z6) {
            this.mIsVisibleItemsStale = true;
            this.mIsActionItemsStale = true;
        }
        i(z6);
    }

    public boolean O(MenuItem menuItem, MenuPresenter menuPresenter, int i10) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) menuItem;
        if (menuItemImpl == null || !menuItemImpl.isEnabled()) {
            return false;
        }
        boolean zK = menuItemImpl.k();
        ActionProvider actionProviderA = menuItemImpl.a();
        boolean z6 = actionProviderA != null && actionProviderA.a();
        if (menuItemImpl.j()) {
            zK |= menuItemImpl.expandActionView();
            if (zK) {
                e(true);
            }
        } else if (menuItemImpl.hasSubMenu() || z6) {
            if ((i10 & 4) == 0) {
                e(false);
            }
            if (!menuItemImpl.hasSubMenu()) {
                menuItemImpl.x(new SubMenuBuilder(w(), this, menuItemImpl));
            }
            SubMenuBuilder subMenuBuilder = (SubMenuBuilder) menuItemImpl.getSubMenu();
            if (z6) {
                actionProviderA.f(subMenuBuilder);
            }
            zK |= l(subMenuBuilder, menuPresenter);
            if (!zK) {
                e(true);
            }
        } else if ((i10 & 1) == 0) {
            e(true);
        }
        return zK;
    }

    public void Q(MenuPresenter menuPresenter) {
        for (WeakReference<MenuPresenter> weakReference : this.mPresenters) {
            MenuPresenter menuPresenter2 = weakReference.get();
            if (menuPresenter2 == null || menuPresenter2 == menuPresenter) {
                this.mPresenters.remove(weakReference);
            }
        }
    }

    public void R(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(v());
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = getItem(i10);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuBuilder) item.getSubMenu()).R(bundle);
            }
        }
        int i11 = bundle.getInt(EXPANDED_ACTION_VIEW_ID);
        if (i11 <= 0 || (menuItemFindItem = findItem(i11)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    @Override // android.view.Menu
    public MenuItem add(int i10) {
        return a(0, 0, 0, this.mResources.getString(i10));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i10, int i11, int i12, ComponentName componentName, Intent[] intentArr, Intent intent, int i13, MenuItem[] menuItemArr) {
        int i14;
        PackageManager packageManager = this.mContext.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i13 & 1) == 0) {
            removeGroup(i10);
        }
        for (int i15 = 0; i15 < size; i15++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i15);
            int i16 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i16 < 0 ? intent : intentArr[i16]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent3 = add(i10, i11, i12, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i14 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i14] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i10) {
        return addSubMenu(0, 0, 0, this.mResources.getString(i10));
    }

    public void b(MenuPresenter menuPresenter) {
        c(menuPresenter, this.mContext);
    }

    public void c(MenuPresenter menuPresenter, Context context) {
        this.mPresenters.add(new WeakReference<>(menuPresenter));
        menuPresenter.g(context, this);
        this.mIsActionItemsStale = true;
    }

    @Override // android.view.Menu
    public void clear() {
        MenuItemImpl menuItemImpl = this.mExpandedItem;
        if (menuItemImpl != null) {
            f(menuItemImpl);
        }
        this.mItems.clear();
        M(true);
    }

    public void d() {
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.b(this);
        }
    }

    public final void e(boolean z6) {
        if (this.mIsClosing) {
            return;
        }
        this.mIsClosing = true;
        for (WeakReference<MenuPresenter> weakReference : this.mPresenters) {
            MenuPresenter menuPresenter = weakReference.get();
            if (menuPresenter == null) {
                this.mPresenters.remove(weakReference);
            } else {
                menuPresenter.a(this, z6);
            }
        }
        this.mIsClosing = false;
    }

    public boolean f(MenuItemImpl menuItemImpl) {
        boolean zF = false;
        if (!this.mPresenters.isEmpty() && this.mExpandedItem == menuItemImpl) {
            h0();
            for (WeakReference<MenuPresenter> weakReference : this.mPresenters) {
                MenuPresenter menuPresenter = weakReference.get();
                if (menuPresenter != null) {
                    zF = menuPresenter.f(this, menuItemImpl);
                    if (zF) {
                        break;
                    }
                } else {
                    this.mPresenters.remove(weakReference);
                }
            }
            g0();
            if (zF) {
                this.mExpandedItem = null;
            }
        }
        return zF;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i10) {
        return this.mItems.get(i10);
    }

    boolean h(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        Callback callback = this.mCallback;
        return callback != null && callback.a(menuBuilder, menuItem);
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.mOverrideVisibleItems) {
            return true;
        }
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.mItems.get(i10).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public boolean m(MenuItemImpl menuItemImpl) {
        boolean zB = false;
        if (this.mPresenters.isEmpty()) {
            return false;
        }
        h0();
        for (WeakReference<MenuPresenter> weakReference : this.mPresenters) {
            MenuPresenter menuPresenter = weakReference.get();
            if (menuPresenter != null) {
                zB = menuPresenter.b(this, menuItemImpl);
                if (zB) {
                    break;
                }
            } else {
                this.mPresenters.remove(weakReference);
            }
        }
        g0();
        if (zB) {
            this.mExpandedItem = menuItemImpl;
        }
        return zB;
    }

    MenuItemImpl r(int i10, KeyEvent keyEvent) {
        ArrayList<MenuItemImpl> arrayList = this.mTempShortcutItemList;
        arrayList.clear();
        s(arrayList, i10, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean zI = I();
        for (int i11 = 0; i11 < size; i11++) {
            MenuItemImpl menuItemImpl = arrayList.get(i11);
            char alphabeticShortcut = zI ? menuItemImpl.getAlphabeticShortcut() : menuItemImpl.getNumericShortcut();
            char[] cArr = keyData.meta;
            if ((alphabeticShortcut == cArr[0] && (metaState & 2) == 0) || ((alphabeticShortcut == cArr[2] && (metaState & 2) != 0) || (zI && alphabeticShortcut == '\b' && i10 == 67))) {
                return menuItemImpl;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i10, boolean z6, boolean z10) {
        int size = this.mItems.size();
        for (int i11 = 0; i11 < size; i11++) {
            MenuItemImpl menuItemImpl = this.mItems.get(i11);
            if (menuItemImpl.getGroupId() == i10) {
                menuItemImpl.t(z10);
                menuItemImpl.setCheckable(z6);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i10, boolean z6) {
        int size = this.mItems.size();
        for (int i11 = 0; i11 < size; i11++) {
            MenuItemImpl menuItemImpl = this.mItems.get(i11);
            if (menuItemImpl.getGroupId() == i10) {
                menuItemImpl.setEnabled(z6);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i10, boolean z6) {
        int size = this.mItems.size();
        boolean z10 = false;
        for (int i11 = 0; i11 < size; i11++) {
            MenuItemImpl menuItemImpl = this.mItems.get(i11);
            if (menuItemImpl.getGroupId() == i10 && menuItemImpl.y(z6)) {
                z10 = true;
            }
        }
        if (z10) {
            M(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z6) {
        this.mQwertyMode = z6;
        M(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.mItems.size();
    }

    public MenuBuilder(Context context) {
        this.mContext = context;
        this.mResources = context.getResources();
        f0(true);
    }

    private void a0(int i10, CharSequence charSequence, int i11, Drawable drawable, View view) {
        Resources resourcesE = E();
        if (view != null) {
            this.mHeaderView = view;
            this.mHeaderTitle = null;
            this.mHeaderIcon = null;
        } else {
            if (i10 > 0) {
                this.mHeaderTitle = resourcesE.getText(i10);
            } else if (charSequence != null) {
                this.mHeaderTitle = charSequence;
            }
            if (i11 > 0) {
                this.mHeaderIcon = ContextCompat.getDrawable(w(), i11);
            } else if (drawable != null) {
                this.mHeaderIcon = drawable;
            }
            this.mHeaderView = null;
        }
        M(false);
    }

    private static int p(ArrayList<MenuItemImpl> arrayList, int i10) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).f() <= i10) {
                return size + 1;
            }
        }
        return 0;
    }

    public ArrayList<MenuItemImpl> B() {
        t();
        return this.mNonActionItems;
    }

    public void S(Bundle bundle) {
        j(bundle);
    }

    public void T(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = getItem(i10);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt(EXPANDED_ACTION_VIEW_ID, item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuBuilder) item.getSubMenu()).T(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(v(), sparseArray);
        }
    }

    public void U(Bundle bundle) {
        k(bundle);
    }

    void X(MenuItem menuItem) {
        boolean z6;
        int groupId = menuItem.getGroupId();
        int size = this.mItems.size();
        h0();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItemImpl menuItemImpl = this.mItems.get(i10);
            if (menuItemImpl.getGroupId() == groupId && menuItemImpl.m() && menuItemImpl.isCheckable()) {
                if (menuItemImpl == menuItem) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                menuItemImpl.s(z6);
            }
        }
        g0();
    }

    protected MenuItem a(int i10, int i11, int i12, CharSequence charSequence) {
        int iD = D(i12);
        MenuItemImpl menuItemImplG = g(i10, i11, i12, iD, charSequence, this.mDefaultShowAsAction);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.mCurrentMenuInfo;
        if (contextMenuInfo != null) {
            menuItemImplG.v(contextMenuInfo);
        }
        ArrayList<MenuItemImpl> arrayList = this.mItems;
        arrayList.add(p(arrayList, iD), menuItemImplG);
        M(true);
        return menuItemImplG;
    }

    @Override // android.view.Menu
    public MenuItem add(int i10, int i11, int i12, CharSequence charSequence) {
        return a(i10, i11, i12, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i10, int i11, int i12, CharSequence charSequence) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) a(i10, i11, i12, charSequence);
        SubMenuBuilder subMenuBuilder = new SubMenuBuilder(this.mContext, this, menuItemImpl);
        menuItemImpl.x(subMenuBuilder);
        return subMenuBuilder;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i10) {
        MenuItem menuItemFindItem;
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            MenuItemImpl menuItemImpl = this.mItems.get(i11);
            if (menuItemImpl.getItemId() == i10) {
                return menuItemImpl;
            }
            if (menuItemImpl.hasSubMenu() && (menuItemFindItem = menuItemImpl.getSubMenu().findItem(i10)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i10, KeyEvent keyEvent) {
        if (r(i10, keyEvent) != null) {
            return true;
        }
        return false;
    }

    public int o(int i10, int i11) {
        int size = size();
        if (i11 < 0) {
            i11 = 0;
        }
        while (i11 < size) {
            if (this.mItems.get(i11).getGroupId() == i10) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i10, int i11) {
        return N(findItem(i10), i11);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i10, KeyEvent keyEvent, int i11) {
        boolean zN;
        MenuItemImpl menuItemImplR = r(i10, keyEvent);
        if (menuItemImplR != null) {
            zN = N(menuItemImplR, i11);
        } else {
            zN = false;
        }
        if ((i11 & 2) != 0) {
            e(true);
        }
        return zN;
    }

    public int q(int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (this.mItems.get(i11).getItemId() == i10) {
                return i11;
            }
        }
        return -1;
    }

    @Override // android.view.Menu
    public void removeGroup(int i10) {
        int iN = n(i10);
        if (iN >= 0) {
            int size = this.mItems.size() - iN;
            int i11 = 0;
            while (true) {
                int i12 = i11 + 1;
                if (i11 >= size || this.mItems.get(iN).getGroupId() != i10) {
                    break;
                }
                P(iN, false);
                i11 = i12;
            }
            M(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i10) {
        P(q(i10), true);
    }

    void s(List<MenuItemImpl> list, int i10, KeyEvent keyEvent) {
        char numericShortcut;
        int numericModifiers;
        boolean zI = I();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (!keyEvent.getKeyData(keyData) && i10 != 67) {
            return;
        }
        int size = this.mItems.size();
        for (int i11 = 0; i11 < size; i11++) {
            MenuItemImpl menuItemImpl = this.mItems.get(i11);
            if (menuItemImpl.hasSubMenu()) {
                ((MenuBuilder) menuItemImpl.getSubMenu()).s(list, i10, keyEvent);
            }
            if (zI) {
                numericShortcut = menuItemImpl.getAlphabeticShortcut();
            } else {
                numericShortcut = menuItemImpl.getNumericShortcut();
            }
            if (zI) {
                numericModifiers = menuItemImpl.getAlphabeticModifiers();
            } else {
                numericModifiers = menuItemImpl.getNumericModifiers();
            }
            if ((modifiers & SupportMenu.SUPPORTED_MODIFIERS_MASK) == (numericModifiers & SupportMenu.SUPPORTED_MODIFIERS_MASK) && numericShortcut != 0) {
                char[] cArr = keyData.meta;
                if ((numericShortcut == cArr[0] || numericShortcut == cArr[2] || (zI && numericShortcut == '\b' && i10 == 67)) && menuItemImpl.isEnabled()) {
                    list.add(menuItemImpl);
                }
            }
        }
    }

    public void t() {
        ArrayList<MenuItemImpl> arrayListG = G();
        if (!this.mIsActionItemsStale) {
            return;
        }
        boolean zE = false;
        for (WeakReference<MenuPresenter> weakReference : this.mPresenters) {
            MenuPresenter menuPresenter = weakReference.get();
            if (menuPresenter == null) {
                this.mPresenters.remove(weakReference);
            } else {
                zE |= menuPresenter.e();
            }
        }
        if (zE) {
            this.mActionItems.clear();
            this.mNonActionItems.clear();
            int size = arrayListG.size();
            for (int i10 = 0; i10 < size; i10++) {
                MenuItemImpl menuItemImpl = arrayListG.get(i10);
                if (menuItemImpl.l()) {
                    this.mActionItems.add(menuItemImpl);
                } else {
                    this.mNonActionItems.add(menuItemImpl);
                }
            }
        } else {
            this.mActionItems.clear();
            this.mNonActionItems.clear();
            this.mNonActionItems.addAll(G());
        }
        this.mIsActionItemsStale = false;
    }

    public ArrayList<MenuItemImpl> u() {
        t();
        return this.mActionItems;
    }

    @Override // android.view.Menu
    public MenuItem add(int i10, int i11, int i12, int i13) {
        return a(i10, i11, i12, this.mResources.getString(i13));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i10, int i11, int i12, int i13) {
        return addSubMenu(i10, i11, i12, this.mResources.getString(i13));
    }
}
