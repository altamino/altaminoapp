package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.ForwardingListener;
import androidx.appcompat.widget.TooltipCompat;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class ActionMenuItemView extends AppCompatTextView implements MenuView.ItemView, View.OnClickListener, ActionMenuView.ActionMenuChildView {
    private static final int MAX_ICON_SIZE = 32;
    private static final String TAG = "ActionMenuItemView";
    private boolean mAllowTextWithIcon;
    private boolean mExpandedFormat;
    private ForwardingListener mForwardingListener;
    private Drawable mIcon;
    MenuItemImpl mItemData;
    MenuBuilder.ItemInvoker mItemInvoker;
    private int mMaxIconSize;
    private int mMinWidth;
    PopupCallback mPopupCallback;
    private int mSavedPaddingLeft;
    private CharSequence mTitle;

    private class ActionMenuItemForwardingListener extends ForwardingListener {
        public ActionMenuItemForwardingListener() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public ShowableListMenu b() {
            PopupCallback popupCallback = ActionMenuItemView.this.mPopupCallback;
            if (popupCallback != null) {
                return popupCallback.a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        protected boolean c() {
            ShowableListMenu showableListMenuB;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            MenuBuilder.ItemInvoker itemInvoker = actionMenuItemView.mItemInvoker;
            return itemInvoker != null && itemInvoker.f(actionMenuItemView.mItemData) && (showableListMenuB = b()) != null && showableListMenuB.isShowing();
        }
    }

    public static abstract class PopupCallback {
        public abstract ShowableListMenu a();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean c() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.mItemData;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    public void setCheckable(boolean z6) {
    }

    public void setChecked(boolean z6) {
    }

    public void setItemInvoker(MenuBuilder.ItemInvoker itemInvoker) {
        this.mItemInvoker = itemInvoker;
    }

    public void setPopupCallback(PopupCallback popupCallback) {
        this.mPopupCallback = popupCallback;
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void g() {
        boolean z6 = true;
        boolean z10 = !TextUtils.isEmpty(this.mTitle);
        if (this.mIcon != null && (!this.mItemData.B() || (!this.mAllowTextWithIcon && !this.mExpandedFormat))) {
            z6 = false;
        }
        boolean z11 = z10 & z6;
        setText(z11 ? this.mTitle : null);
        CharSequence contentDescription = this.mItemData.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z11 ? null : this.mItemData.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.mItemData.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            TooltipCompat.a(this, z11 ? null : this.mItemData.getTitle());
        } else {
            TooltipCompat.a(this, tooltipText);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void e(MenuItemImpl menuItemImpl, int i10) {
        this.mItemData = menuItemImpl;
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.i(this));
        setId(menuItemImpl.getItemId());
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        setEnabled(menuItemImpl.isEnabled());
        if (menuItemImpl.hasSubMenu() && this.mForwardingListener == null) {
            this.mForwardingListener = new ActionMenuItemForwardingListener();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MenuBuilder.ItemInvoker itemInvoker = this.mItemInvoker;
        if (itemInvoker != null) {
            itemInvoker.f(this.mItemData);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener forwardingListener;
        if (this.mItemData.hasSubMenu() && (forwardingListener = this.mForwardingListener) != null && forwardingListener.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setExpandedFormat(boolean z6) {
        if (this.mExpandedFormat != z6) {
            this.mExpandedFormat = z6;
            MenuItemImpl menuItemImpl = this.mItemData;
            if (menuItemImpl != null) {
                menuItemImpl.c();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i10 = this.mMaxIconSize;
            if (intrinsicWidth > i10) {
                intrinsicHeight = (int) (intrinsicHeight * (i10 / intrinsicWidth));
                intrinsicWidth = i10;
            }
            if (intrinsicHeight > i10) {
                intrinsicWidth = (int) (intrinsicWidth * (i10 / intrinsicHeight));
            } else {
                i10 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i10);
        }
        setCompoundDrawables(drawable, null, null, null);
        g();
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
        this.mSavedPaddingLeft = i10;
        super.setPadding(i10, i11, i12, i13);
    }

    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        g();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Resources resources = context.getResources();
        this.mAllowTextWithIcon = f();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionMenuItemView, i10, 0);
        this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionMenuItemView_android_minWidth, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.mMaxIconSize = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.mSavedPaddingLeft = -1;
        setSaveEnabled(false);
    }

    private boolean f() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i10 = configuration.screenWidthDp;
        int i11 = configuration.screenHeightDp;
        if (i10 < 480 && ((i10 < 640 || i11 < 480) && configuration.orientation != 2)) {
            return false;
        }
        return true;
    }

    @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
    public boolean a() {
        return d();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
    public boolean b() {
        if (d() && this.mItemData.getIcon() == null) {
            return true;
        }
        return false;
    }

    public boolean d() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mAllowTextWithIcon = f();
        g();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iMin;
        int i12;
        boolean zD = d();
        if (zD && (i12 = this.mSavedPaddingLeft) >= 0) {
            super.setPadding(i12, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int measuredWidth = getMeasuredWidth();
        if (mode == Integer.MIN_VALUE) {
            iMin = Math.min(size, this.mMinWidth);
        } else {
            iMin = this.mMinWidth;
        }
        if (mode != 1073741824 && this.mMinWidth > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i11);
        }
        if (!zD && this.mIcon != null) {
            super.setPadding((getMeasuredWidth() - this.mIcon.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }
}
