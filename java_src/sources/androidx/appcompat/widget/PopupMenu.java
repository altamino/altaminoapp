package androidx.appcompat.widget;

import android.content.Context;
import android.view.MenuItem;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.ShowableListMenu;

/* JADX INFO: loaded from: classes6.dex */
public class PopupMenu {
    private final View mAnchor;
    private final Context mContext;
    private View.OnTouchListener mDragListener;
    private final MenuBuilder mMenu;
    OnMenuItemClickListener mMenuItemClickListener;
    OnDismissListener mOnDismissListener;
    final MenuPopupHelper mPopup;

    /* JADX INFO: renamed from: androidx.appcompat.widget.PopupMenu$3, reason: invalid class name */
    /* JADX INFO: loaded from: classes10.dex */
    class AnonymousClass3 extends ForwardingListener {
        final /* synthetic */ PopupMenu this$0;

        @Override // androidx.appcompat.widget.ForwardingListener
        public ShowableListMenu b() {
            return this.this$0.mPopup.c();
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        protected boolean c() {
            this.this$0.b();
            return true;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        protected boolean d() {
            this.this$0.a();
            return true;
        }
    }

    public interface OnDismissListener {
        void a(PopupMenu popupMenu);
    }

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public PopupMenu(@NonNull Context context, @NonNull View view) {
        this(context, view, 0);
    }

    public PopupMenu(@NonNull Context context, @NonNull View view, int i10) {
        this(context, view, i10, R.attr.popupMenuStyle, 0);
    }

    public void a() {
        this.mPopup.b();
    }

    public void b() {
        this.mPopup.k();
    }

    public PopupMenu(@NonNull Context context, @NonNull View view, int i10, @AttrRes int i11, @StyleRes int i12) {
        this.mContext = context;
        this.mAnchor = view;
        MenuBuilder menuBuilder = new MenuBuilder(context);
        this.mMenu = menuBuilder;
        menuBuilder.V(new MenuBuilder.Callback() { // from class: androidx.appcompat.widget.PopupMenu.1
            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public void b(@NonNull MenuBuilder menuBuilder2) {
            }

            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public boolean a(@NonNull MenuBuilder menuBuilder2, @NonNull MenuItem menuItem) {
                OnMenuItemClickListener onMenuItemClickListener = PopupMenu.this.mMenuItemClickListener;
                if (onMenuItemClickListener != null) {
                    return onMenuItemClickListener.onMenuItemClick(menuItem);
                }
                return false;
            }
        });
        MenuPopupHelper menuPopupHelper = new MenuPopupHelper(context, menuBuilder, view, false, i11, i12);
        this.mPopup = menuPopupHelper;
        menuPopupHelper.h(i10);
        menuPopupHelper.i(new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.widget.PopupMenu.2
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                PopupMenu popupMenu = PopupMenu.this;
                OnDismissListener onDismissListener = popupMenu.mOnDismissListener;
                if (onDismissListener != null) {
                    onDismissListener.a(popupMenu);
                }
            }
        });
    }
}
