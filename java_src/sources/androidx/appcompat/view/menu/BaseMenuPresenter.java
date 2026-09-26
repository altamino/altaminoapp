package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes11.dex */
@RestrictTo
public abstract class BaseMenuPresenter implements MenuPresenter {
    private MenuPresenter.Callback mCallback;
    protected Context mContext;
    private int mId;
    protected LayoutInflater mInflater;
    private int mItemLayoutRes;
    protected MenuBuilder mMenu;
    private int mMenuLayoutRes;
    protected MenuView mMenuView;
    protected Context mSystemContext;
    protected LayoutInflater mSystemInflater;

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
        return this.mId;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void h(MenuPresenter.Callback callback) {
        this.mCallback = callback;
    }

    public abstract void m(MenuItemImpl menuItemImpl, MenuView.ItemView itemView);

    public MenuPresenter.Callback p() {
        return this.mCallback;
    }

    public void s(int i10) {
        this.mId = i10;
    }

    public boolean t(int i10, MenuItemImpl menuItemImpl) {
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void a(MenuBuilder menuBuilder, boolean z6) {
        MenuPresenter.Callback callback = this.mCallback;
        if (callback != null) {
            callback.a(menuBuilder, z6);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void d(boolean z6) {
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        if (viewGroup == null) {
            return;
        }
        MenuBuilder menuBuilder = this.mMenu;
        int i10 = 0;
        if (menuBuilder != null) {
            menuBuilder.t();
            ArrayList<MenuItemImpl> arrayListG = this.mMenu.G();
            int size = arrayListG.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                MenuItemImpl menuItemImpl = arrayListG.get(i12);
                if (t(i11, menuItemImpl)) {
                    View childAt = viewGroup.getChildAt(i11);
                    MenuItemImpl itemData = childAt instanceof MenuView.ItemView ? ((MenuView.ItemView) childAt).getItemData() : null;
                    View viewQ = q(menuItemImpl, childAt, viewGroup);
                    if (menuItemImpl != itemData) {
                        viewQ.setPressed(false);
                        viewQ.jumpDrawablesToCurrentState();
                    }
                    if (viewQ != childAt) {
                        l(viewQ, i11);
                    }
                    i11++;
                }
            }
            i10 = i11;
        }
        while (i10 < viewGroup.getChildCount()) {
            if (!o(viewGroup, i10)) {
                i10++;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void g(Context context, MenuBuilder menuBuilder) {
        this.mContext = context;
        this.mInflater = LayoutInflater.from(context);
        this.mMenu = menuBuilder;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean k(SubMenuBuilder subMenuBuilder) {
        MenuPresenter.Callback callback = this.mCallback;
        MenuBuilder menuBuilder = subMenuBuilder;
        if (callback == null) {
            return false;
        }
        if (subMenuBuilder == null) {
            menuBuilder = this.mMenu;
        }
        return callback.b(menuBuilder);
    }

    public MenuView.ItemView n(ViewGroup viewGroup) {
        return (MenuView.ItemView) this.mSystemInflater.inflate(this.mItemLayoutRes, viewGroup, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View q(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        MenuView.ItemView itemViewN = view instanceof MenuView.ItemView ? (MenuView.ItemView) view : n(viewGroup);
        m(menuItemImpl, itemViewN);
        return (View) itemViewN;
    }

    public MenuView r(ViewGroup viewGroup) {
        if (this.mMenuView == null) {
            MenuView menuView = (MenuView) this.mSystemInflater.inflate(this.mMenuLayoutRes, viewGroup, false);
            this.mMenuView = menuView;
            menuView.a(this.mMenu);
            d(true);
        }
        return this.mMenuView;
    }

    public BaseMenuPresenter(Context context, int i10, int i11) {
        this.mSystemContext = context;
        this.mSystemInflater = LayoutInflater.from(context);
        this.mMenuLayoutRes = i10;
        this.mItemLayoutRes = i11;
    }

    protected void l(View view, int i10) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.mMenuView).addView(view, i10);
    }

    protected boolean o(ViewGroup viewGroup, int i10) {
        viewGroup.removeViewAt(i10);
        return true;
    }
}
