package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Dimension;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
public class k implements MenuPresenter {
    public static final int NO_TEXT_APPEARANCE_SET = 0;
    private static final String STATE_ADAPTER = "android:menu:adapter";
    private static final String STATE_HEADER = "android:menu:header";
    private static final String STATE_HIERARCHY = "android:menu:list";
    c adapter;
    private MenuPresenter.Callback callback;

    @Px
    int dividerInsetEnd;

    @Px
    int dividerInsetStart;
    boolean hasCustomItemIconSize;
    LinearLayout headerLayout;
    ColorStateList iconTintList;
    private int id;
    Drawable itemBackground;
    RippleDrawable itemForeground;
    int itemHorizontalPadding;
    int itemIconPadding;
    int itemIconSize;
    private int itemMaxLines;

    @Px
    int itemVerticalPadding;
    LayoutInflater layoutInflater;
    MenuBuilder menu;
    private NavigationMenuView menuView;
    int paddingSeparator;
    private int paddingTopDefault;

    @Nullable
    ColorStateList subheaderColor;

    @Px
    int subheaderInsetEnd;

    @Px
    int subheaderInsetStart;
    ColorStateList textColor;
    int subheaderTextAppearance = 0;
    int textAppearance = 0;
    boolean isBehindStatusBar = true;
    private int overScrollMode = -1;
    final View.OnClickListener onClickListener = new a();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z6 = true;
            k.this.V(true);
            MenuItemImpl itemData = ((NavigationMenuItemView) view).getItemData();
            k kVar = k.this;
            boolean zO = kVar.menu.O(itemData, kVar, 0);
            if (itemData != null && itemData.isCheckable() && zO) {
                k.this.adapter.p(itemData);
            } else {
                z6 = false;
            }
            k.this.V(false);
            if (z6) {
                k.this.d(false);
            }
        }
    }

    private class c extends RecyclerView.Adapter<l> {
        private static final String STATE_ACTION_VIEWS = "android:menu:action_views";
        private static final String STATE_CHECKED_ITEM = "android:menu:checked";
        private static final int VIEW_TYPE_HEADER = 3;
        private static final int VIEW_TYPE_NORMAL = 0;
        private static final int VIEW_TYPE_SEPARATOR = 2;
        private static final int VIEW_TYPE_SUBHEADER = 1;
        private MenuItemImpl checkedItem;
        private final ArrayList<e> items = new ArrayList<>();
        private boolean updateSuspended;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        public MenuItemImpl i() {
            return this.checkedItem;
        }

        public void q(boolean z6) {
            this.updateSuspended = z6;
        }

        c() {
            n();
        }

        private void g(int i10, int i11) {
            while (i10 < i11) {
                ((g) this.items.get(i10)).needsEmptyIcon = true;
                i10++;
            }
        }

        private void n() {
            if (this.updateSuspended) {
                return;
            }
            boolean z6 = true;
            this.updateSuspended = true;
            this.items.clear();
            this.items.add(new d());
            int size = k.this.menu.G().size();
            int i10 = -1;
            int i11 = 0;
            boolean z10 = false;
            int size2 = 0;
            while (i11 < size) {
                MenuItemImpl menuItemImpl = k.this.menu.G().get(i11);
                if (menuItemImpl.isChecked()) {
                    p(menuItemImpl);
                }
                if (menuItemImpl.isCheckable()) {
                    menuItemImpl.t(false);
                }
                if (menuItemImpl.hasSubMenu()) {
                    SubMenu subMenu = menuItemImpl.getSubMenu();
                    if (subMenu.hasVisibleItems()) {
                        if (i11 != 0) {
                            this.items.add(new f(k.this.paddingSeparator, 0));
                        }
                        this.items.add(new g(menuItemImpl));
                        int size3 = this.items.size();
                        int size4 = subMenu.size();
                        int i12 = 0;
                        boolean z11 = false;
                        while (i12 < size4) {
                            MenuItemImpl menuItemImpl2 = (MenuItemImpl) subMenu.getItem(i12);
                            if (menuItemImpl2.isVisible()) {
                                if (!z11 && menuItemImpl2.getIcon() != null) {
                                    z11 = z6;
                                }
                                if (menuItemImpl2.isCheckable()) {
                                    menuItemImpl2.t(false);
                                }
                                if (menuItemImpl.isChecked()) {
                                    p(menuItemImpl);
                                }
                                this.items.add(new g(menuItemImpl2));
                            }
                            i12++;
                            z6 = true;
                        }
                        if (z11) {
                            g(size3, this.items.size());
                        }
                    }
                } else {
                    int groupId = menuItemImpl.getGroupId();
                    if (groupId != i10) {
                        size2 = this.items.size();
                        z10 = menuItemImpl.getIcon() != null;
                        if (i11 != 0) {
                            size2++;
                            ArrayList<e> arrayList = this.items;
                            int i13 = k.this.paddingSeparator;
                            arrayList.add(new f(i13, i13));
                        }
                    } else if (!z10 && menuItemImpl.getIcon() != null) {
                        g(size2, this.items.size());
                        z10 = true;
                    }
                    g gVar = new g(menuItemImpl);
                    gVar.needsEmptyIcon = z10;
                    this.items.add(gVar);
                    i10 = groupId;
                }
                i11++;
                z6 = true;
            }
            this.updateSuspended = false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.items.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            e eVar = this.items.get(i10);
            if (eVar instanceof f) {
                return 2;
            }
            if (eVar instanceof d) {
                return 3;
            }
            if (eVar instanceof g) {
                return ((g) eVar).a().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @NonNull
        public Bundle h() {
            Bundle bundle = new Bundle();
            MenuItemImpl menuItemImpl = this.checkedItem;
            if (menuItemImpl != null) {
                bundle.putInt(STATE_CHECKED_ITEM, menuItemImpl.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.items.size();
            for (int i10 = 0; i10 < size; i10++) {
                e eVar = this.items.get(i10);
                if (eVar instanceof g) {
                    MenuItemImpl menuItemImplA = ((g) eVar).a();
                    View actionView = menuItemImplA != null ? menuItemImplA.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(menuItemImplA.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray(STATE_ACTION_VIEWS, sparseArray);
            return bundle;
        }

        int j() {
            int i10 = k.this.headerLayout.getChildCount() == 0 ? 0 : 1;
            for (int i11 = 0; i11 < k.this.adapter.getItemCount(); i11++) {
                if (k.this.adapter.getItemViewType(i11) == 0) {
                    i10++;
                }
            }
            return i10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @Nullable
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public l onCreateViewHolder(ViewGroup viewGroup, int i10) {
            if (i10 == 0) {
                k kVar = k.this;
                return new i(kVar.layoutInflater, viewGroup, kVar.onClickListener);
            }
            if (i10 == 1) {
                return new C0205k(k.this.layoutInflater, viewGroup);
            }
            if (i10 == 2) {
                return new j(k.this.layoutInflater, viewGroup);
            }
            if (i10 != 3) {
                return null;
            }
            return new b(k.this.headerLayout);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public void onViewRecycled(l lVar) {
            if (lVar instanceof i) {
                ((NavigationMenuItemView) lVar.itemView).F();
            }
        }

        public void o(@NonNull Bundle bundle) {
            MenuItemImpl menuItemImplA;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            MenuItemImpl menuItemImplA2;
            int i10 = bundle.getInt(STATE_CHECKED_ITEM, 0);
            if (i10 != 0) {
                this.updateSuspended = true;
                int size = this.items.size();
                for (int i11 = 0; i11 < size; i11++) {
                    e eVar = this.items.get(i11);
                    if ((eVar instanceof g) && (menuItemImplA2 = ((g) eVar).a()) != null && menuItemImplA2.getItemId() == i10) {
                        p(menuItemImplA2);
                        break;
                    }
                }
                this.updateSuspended = false;
                n();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(STATE_ACTION_VIEWS);
            if (sparseParcelableArray != null) {
                int size2 = this.items.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    e eVar2 = this.items.get(i12);
                    if ((eVar2 instanceof g) && (menuItemImplA = ((g) eVar2).a()) != null && (actionView = menuItemImplA.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(menuItemImplA.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        public void p(@NonNull MenuItemImpl menuItemImpl) {
            if (this.checkedItem == menuItemImpl || !menuItemImpl.isCheckable()) {
                return;
            }
            MenuItemImpl menuItemImpl2 = this.checkedItem;
            if (menuItemImpl2 != null) {
                menuItemImpl2.setChecked(false);
            }
            this.checkedItem = menuItemImpl;
            menuItemImpl.setChecked(true);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(@NonNull l lVar, int i10) {
            Drawable drawableNewDrawable;
            int itemViewType = getItemViewType(i10);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    if (itemViewType == 2) {
                        f fVar = (f) this.items.get(i10);
                        lVar.itemView.setPadding(k.this.dividerInsetStart, fVar.b(), k.this.dividerInsetEnd, fVar.a());
                        return;
                    }
                    return;
                }
                TextView textView = (TextView) lVar.itemView;
                textView.setText(((g) this.items.get(i10)).a().getTitle());
                int i11 = k.this.subheaderTextAppearance;
                if (i11 != 0) {
                    TextViewCompat.q(textView, i11);
                }
                textView.setPadding(k.this.subheaderInsetStart, textView.getPaddingTop(), k.this.subheaderInsetEnd, textView.getPaddingBottom());
                ColorStateList colorStateList = k.this.subheaderColor;
                if (colorStateList != null) {
                    textView.setTextColor(colorStateList);
                    return;
                }
                return;
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) lVar.itemView;
            navigationMenuItemView.setIconTintList(k.this.iconTintList);
            int i12 = k.this.textAppearance;
            if (i12 != 0) {
                navigationMenuItemView.setTextAppearance(i12);
            }
            ColorStateList colorStateList2 = k.this.textColor;
            if (colorStateList2 != null) {
                navigationMenuItemView.setTextColor(colorStateList2);
            }
            Drawable drawable = k.this.itemBackground;
            if (drawable != null) {
                drawableNewDrawable = drawable.getConstantState().newDrawable();
            } else {
                drawableNewDrawable = null;
            }
            ViewCompat.y0(navigationMenuItemView, drawableNewDrawable);
            RippleDrawable rippleDrawable = k.this.itemForeground;
            if (rippleDrawable != null) {
                navigationMenuItemView.setForeground(rippleDrawable.getConstantState().newDrawable());
            }
            g gVar = (g) this.items.get(i10);
            navigationMenuItemView.setNeedsEmptyIcon(gVar.needsEmptyIcon);
            k kVar = k.this;
            int i13 = kVar.itemHorizontalPadding;
            int i14 = kVar.itemVerticalPadding;
            navigationMenuItemView.setPadding(i13, i14, i13, i14);
            navigationMenuItemView.setIconPadding(k.this.itemIconPadding);
            k kVar2 = k.this;
            if (kVar2.hasCustomItemIconSize) {
                navigationMenuItemView.setIconSize(kVar2.itemIconSize);
            }
            navigationMenuItemView.setMaxLines(k.this.itemMaxLines);
            navigationMenuItemView.e(gVar.a(), 0);
        }

        public void r() {
            n();
            notifyDataSetChanged();
        }
    }

    private interface e {
    }

    private class h extends RecyclerViewAccessibilityDelegate {
        h(RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.g0(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(k.this.adapter.j(), 0, false));
        }
    }

    private static class i extends l {
        public i(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(d3.h.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    private static class j extends l {
        public j(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(d3.h.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.internal.k$k, reason: collision with other inner class name */
    private static class C0205k extends l {
        public C0205k(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(d3.h.design_navigation_item_subheader, viewGroup, false));
        }
    }

    @Px
    public int A() {
        return this.subheaderInsetStart;
    }

    public void G(int i10) {
        this.id = i10;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean b(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean f(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.id;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean k(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Px
    public int o() {
        return this.dividerInsetEnd;
    }

    @Px
    public int p() {
        return this.dividerInsetStart;
    }

    @Nullable
    public Drawable r() {
        return this.itemBackground;
    }

    public int s() {
        return this.itemHorizontalPadding;
    }

    public int t() {
        return this.itemIconPadding;
    }

    public int u() {
        return this.itemMaxLines;
    }

    @Nullable
    public ColorStateList v() {
        return this.textColor;
    }

    @Nullable
    public ColorStateList w() {
        return this.iconTintList;
    }

    @Px
    public int x() {
        return this.itemVerticalPadding;
    }

    @Px
    public int z() {
        return this.subheaderInsetEnd;
    }

    private static class b extends l {
        public b(View view) {
            super(view);
        }
    }

    private static class d implements e {
        d() {
        }
    }

    private static class f implements e {
        private final int paddingBottom;
        private final int paddingTop;

        public int a() {
            return this.paddingBottom;
        }

        public int b() {
            return this.paddingTop;
        }

        public f(int i10, int i11) {
            this.paddingTop = i10;
            this.paddingBottom = i11;
        }
    }

    private static class g implements e {
        private final MenuItemImpl menuItem;
        boolean needsEmptyIcon;

        public MenuItemImpl a() {
            return this.menuItem;
        }

        g(MenuItemImpl menuItemImpl) {
            this.menuItem = menuItemImpl;
        }
    }

    private static abstract class l extends RecyclerView.ViewHolder {
        public l(View view) {
            super(view);
        }
    }

    private void W() {
        int i10 = (this.headerLayout.getChildCount() == 0 && this.isBehindStatusBar) ? this.paddingTopDefault : 0;
        NavigationMenuView navigationMenuView = this.menuView;
        navigationMenuView.setPadding(0, i10, 0, navigationMenuView.getPaddingBottom());
    }

    public View B(@LayoutRes int i10) {
        View viewInflate = this.layoutInflater.inflate(i10, (ViewGroup) this.headerLayout, false);
        l(viewInflate);
        return viewInflate;
    }

    public void C(boolean z6) {
        if (this.isBehindStatusBar != z6) {
            this.isBehindStatusBar = z6;
            W();
        }
    }

    public void D(@NonNull MenuItemImpl menuItemImpl) {
        this.adapter.p(menuItemImpl);
    }

    public void E(@Px int i10) {
        this.dividerInsetEnd = i10;
        d(false);
    }

    public void F(@Px int i10) {
        this.dividerInsetStart = i10;
        d(false);
    }

    public void H(@Nullable Drawable drawable) {
        this.itemBackground = drawable;
        d(false);
    }

    public void I(@Nullable RippleDrawable rippleDrawable) {
        this.itemForeground = rippleDrawable;
        d(false);
    }

    public void J(int i10) {
        this.itemHorizontalPadding = i10;
        d(false);
    }

    public void K(int i10) {
        this.itemIconPadding = i10;
        d(false);
    }

    public void L(@Dimension int i10) {
        if (this.itemIconSize != i10) {
            this.itemIconSize = i10;
            this.hasCustomItemIconSize = true;
            d(false);
        }
    }

    public void M(@Nullable ColorStateList colorStateList) {
        this.iconTintList = colorStateList;
        d(false);
    }

    public void N(int i10) {
        this.itemMaxLines = i10;
        d(false);
    }

    public void O(@StyleRes int i10) {
        this.textAppearance = i10;
        d(false);
    }

    public void P(@Nullable ColorStateList colorStateList) {
        this.textColor = colorStateList;
        d(false);
    }

    public void Q(@Px int i10) {
        this.itemVerticalPadding = i10;
        d(false);
    }

    public void R(int i10) {
        this.overScrollMode = i10;
        NavigationMenuView navigationMenuView = this.menuView;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i10);
        }
    }

    public void S(@Nullable ColorStateList colorStateList) {
        this.subheaderColor = colorStateList;
        d(false);
    }

    public void T(@Px int i10) {
        this.subheaderInsetStart = i10;
        d(false);
    }

    public void U(@StyleRes int i10) {
        this.subheaderTextAppearance = i10;
        d(false);
    }

    public void V(boolean z6) {
        c cVar = this.adapter;
        if (cVar != null) {
            cVar.q(z6);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void a(MenuBuilder menuBuilder, boolean z6) {
        MenuPresenter.Callback callback = this.callback;
        if (callback != null) {
            callback.a(menuBuilder, z6);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @NonNull
    public Parcelable c() {
        Bundle bundle = new Bundle();
        if (this.menuView != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.menuView.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        c cVar = this.adapter;
        if (cVar != null) {
            bundle.putBundle(STATE_ADAPTER, cVar.h());
        }
        if (this.headerLayout != null) {
            SparseArray<Parcelable> sparseArray2 = new SparseArray<>();
            this.headerLayout.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray(STATE_HEADER, sparseArray2);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void d(boolean z6) {
        c cVar = this.adapter;
        if (cVar != null) {
            cVar.r();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void j(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.menuView.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle(STATE_ADAPTER);
            if (bundle2 != null) {
                this.adapter.o(bundle2);
            }
            SparseArray<Parcelable> sparseParcelableArray2 = bundle.getSparseParcelableArray(STATE_HEADER);
            if (sparseParcelableArray2 != null) {
                this.headerLayout.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    public void l(@NonNull View view) {
        this.headerLayout.addView(view);
        NavigationMenuView navigationMenuView = this.menuView;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    @Nullable
    public MenuItemImpl n() {
        return this.adapter.i();
    }

    public int q() {
        return this.headerLayout.getChildCount();
    }

    public MenuView y(ViewGroup viewGroup) {
        if (this.menuView == null) {
            NavigationMenuView navigationMenuView = (NavigationMenuView) this.layoutInflater.inflate(d3.h.design_navigation_menu, viewGroup, false);
            this.menuView = navigationMenuView;
            navigationMenuView.setAccessibilityDelegateCompat(new h(this.menuView));
            if (this.adapter == null) {
                this.adapter = new c();
            }
            int i10 = this.overScrollMode;
            if (i10 != -1) {
                this.menuView.setOverScrollMode(i10);
            }
            this.headerLayout = (LinearLayout) this.layoutInflater.inflate(d3.h.design_navigation_item_header, (ViewGroup) this.menuView, false);
            this.menuView.setAdapter(this.adapter);
        }
        return this.menuView;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void g(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this.layoutInflater = LayoutInflater.from(context);
        this.menu = menuBuilder;
        this.paddingSeparator = context.getResources().getDimensionPixelOffset(d3.d.design_navigation_separator_vertical_padding);
    }

    public void m(@NonNull WindowInsetsCompat windowInsetsCompat) {
        int iM = windowInsetsCompat.m();
        if (this.paddingTopDefault != iM) {
            this.paddingTopDefault = iM;
            W();
        }
        NavigationMenuView navigationMenuView = this.menuView;
        navigationMenuView.setPadding(0, navigationMenuView.getPaddingTop(), 0, windowInsetsCompat.j());
        ViewCompat.i(this.headerLayout, windowInsetsCompat);
    }
}
