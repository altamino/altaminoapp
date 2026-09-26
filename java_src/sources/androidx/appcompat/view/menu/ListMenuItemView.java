package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public class ListMenuItemView extends LinearLayout implements MenuView.ItemView, AbsListView.SelectionBoundsAdjuster {
    private static final String TAG = "ListMenuItemView";
    private Drawable mBackground;
    private CheckBox mCheckBox;
    private LinearLayout mContent;
    private boolean mForceShowIcon;
    private ImageView mGroupDivider;
    private boolean mHasListDivider;
    private ImageView mIconView;
    private LayoutInflater mInflater;
    private MenuItemImpl mItemData;
    private boolean mPreserveIconSpacing;
    private RadioButton mRadioButton;
    private TextView mShortcutView;
    private Drawable mSubMenuArrow;
    private ImageView mSubMenuArrowView;
    private int mTextAppearance;
    private Context mTextAppearanceContext;
    private TextView mTitleView;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listMenuViewStyle);
    }

    private void a(View view) {
        b(view, -1);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean c() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.mItemData;
    }

    public void setForceShowIcon(boolean z6) {
        this.mForceShowIcon = z6;
        this.mPreserveIconSpacing = z6;
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet);
        TintTypedArray tintTypedArrayV = TintTypedArray.v(getContext(), attributeSet, R.styleable.MenuView, i10, 0);
        this.mBackground = tintTypedArrayV.g(R.styleable.MenuView_android_itemBackground);
        this.mTextAppearance = tintTypedArrayV.n(R.styleable.MenuView_android_itemTextAppearance, -1);
        this.mPreserveIconSpacing = tintTypedArrayV.a(R.styleable.MenuView_preserveIconSpacing, false);
        this.mTextAppearanceContext = context;
        this.mSubMenuArrow = tintTypedArrayV.g(R.styleable.MenuView_subMenuArrow);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.mHasListDivider = typedArrayObtainStyledAttributes.hasValue(0);
        tintTypedArrayV.w();
        typedArrayObtainStyledAttributes.recycle();
    }

    private void b(View view, int i10) {
        LinearLayout linearLayout = this.mContent;
        if (linearLayout != null) {
            linearLayout.addView(view, i10);
        } else {
            addView(view, i10);
        }
    }

    private LayoutInflater getInflater() {
        if (this.mInflater == null) {
            this.mInflater = LayoutInflater.from(getContext());
        }
        return this.mInflater;
    }

    private void setSubMenuArrowVisible(boolean z6) {
        ImageView imageView = this.mSubMenuArrowView;
        if (imageView != null) {
            imageView.setVisibility(z6 ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.mGroupDivider;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mGroupDivider.getLayoutParams();
        rect.top += this.mGroupDivider.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void e(MenuItemImpl menuItemImpl, int i10) {
        this.mItemData = menuItemImpl;
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        setTitle(menuItemImpl.i(this));
        setCheckable(menuItemImpl.isCheckable());
        h(menuItemImpl.A(), menuItemImpl.g());
        setIcon(menuItemImpl.getIcon());
        setEnabled(menuItemImpl.isEnabled());
        setSubMenuArrowVisible(menuItemImpl.hasSubMenu());
        setContentDescription(menuItemImpl.getContentDescription());
    }

    public void h(boolean z6, char c7) {
        int i10 = (z6 && this.mItemData.A()) ? 0 : 8;
        if (i10 == 0) {
            this.mShortcutView.setText(this.mItemData.h());
        }
        if (this.mShortcutView.getVisibility() != i10) {
            this.mShortcutView.setVisibility(i10);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.mIconView != null && this.mPreserveIconSpacing) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.mIconView.getLayoutParams();
            int i12 = layoutParams.height;
            if (i12 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i12;
            }
        }
        super.onMeasure(i10, i11);
    }

    public void setCheckable(boolean z6) {
        CompoundButton compoundButton;
        View view;
        if (!z6 && this.mRadioButton == null && this.mCheckBox == null) {
            return;
        }
        if (this.mItemData.m()) {
            if (this.mRadioButton == null) {
                g();
            }
            compoundButton = this.mRadioButton;
            view = this.mCheckBox;
        } else {
            if (this.mCheckBox == null) {
                d();
            }
            compoundButton = this.mCheckBox;
            view = this.mRadioButton;
        }
        if (z6) {
            compoundButton.setChecked(this.mItemData.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox = this.mCheckBox;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.mRadioButton;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z6) {
        CompoundButton compoundButton;
        if (this.mItemData.m()) {
            if (this.mRadioButton == null) {
                g();
            }
            compoundButton = this.mRadioButton;
        } else {
            if (this.mCheckBox == null) {
                d();
            }
            compoundButton = this.mCheckBox;
        }
        compoundButton.setChecked(z6);
    }

    public void setGroupDividerEnabled(boolean z6) {
        ImageView imageView = this.mGroupDivider;
        if (imageView != null) {
            imageView.setVisibility((this.mHasListDivider || !z6) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z6 = this.mItemData.z() || this.mForceShowIcon;
        if (z6 || this.mPreserveIconSpacing) {
            ImageView imageView = this.mIconView;
            if (imageView == null && drawable == null && !this.mPreserveIconSpacing) {
                return;
            }
            if (imageView == null) {
                f();
            }
            if (drawable == null && !this.mPreserveIconSpacing) {
                this.mIconView.setVisibility(8);
                return;
            }
            ImageView imageView2 = this.mIconView;
            if (!z6) {
                drawable = null;
            }
            imageView2.setImageDrawable(drawable);
            if (this.mIconView.getVisibility() != 0) {
                this.mIconView.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.mTitleView.getVisibility() != 8) {
                this.mTitleView.setVisibility(8);
            }
        } else {
            this.mTitleView.setText(charSequence);
            if (this.mTitleView.getVisibility() != 0) {
                this.mTitleView.setVisibility(0);
            }
        }
    }

    private void d() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.mCheckBox = checkBox;
        a(checkBox);
    }

    private void f() {
        ImageView imageView = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
        this.mIconView = imageView;
        b(imageView, 0);
    }

    private void g() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.mRadioButton = radioButton;
        a(radioButton);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ViewCompat.y0(this, this.mBackground);
        TextView textView = (TextView) findViewById(R.id.title);
        this.mTitleView = textView;
        int i10 = this.mTextAppearance;
        if (i10 != -1) {
            textView.setTextAppearance(this.mTextAppearanceContext, i10);
        }
        this.mShortcutView = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.mSubMenuArrowView = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.mSubMenuArrow);
        }
        this.mGroupDivider = (ImageView) findViewById(R.id.group_divider);
        this.mContent = (LinearLayout) findViewById(R.id.content);
    }
}
