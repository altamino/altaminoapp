package com.narvii.story.quiz;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.narvii.amino.R;
import com.narvii.model.User;
import com.narvii.widget.UserAvatarLayout;
import java.util.List;

/* loaded from: classes3.dex */
public class UserIconsView extends LinearLayout {
    private int dividerWidth;
    private int iconHeight;
    private int iconWidth;
    private int maxUsers;
    private List<User> users;

    public UserIconsView(Context context) {
        super(context);
    }

    public UserIconsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.UserIconsView);
        this.maxUsers = typedArrayObtainStyledAttributes.getInteger(1, 5);
        this.dividerWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        setShowDividers(7);
        setDividerDrawable(new ColorDrawable() { // from class: com.narvii.story.quiz.UserIconsView.1
            @Override // android.graphics.drawable.Drawable
            public int getIntrinsicWidth() {
                return UserIconsView.this.dividerWidth;
            }
        });
        setClipChildren(false);
        setClipToPadding(false);
    }

    public void setUsers(List<User> list) {
        this.users = list;
        updateViews();
    }

    public boolean isEmpty() {
        List<User> list = this.users;
        return list == null || list.isEmpty();
    }

    private void updateViews() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        List<User> list = this.users;
        int iMin = Math.min(list == null ? 0 : list.size(), this.maxUsers + 1);
        while (getChildCount() < iMin) {
            addView(layoutInflaterFrom.inflate(getChildCount() == this.maxUsers ? com.narvii.amino.mastes.R.layout.item_all_member_more_cell : com.narvii.amino.mastes.R.layout.user_avatar_layout_mini_nobadge_noavatar, (ViewGroup) this, false));
        }
        while (getChildCount() > iMin) {
            removeViewAt(getChildCount() - 1);
        }
        for (int i = 0; i < getChildCount() && i < this.maxUsers; i++) {
            ((UserAvatarLayout) getChildAt(i)).setUser(this.users.get(i));
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int iMin;
        int childCount = getChildCount();
        if ((i & ViewCompat.MEASURED_STATE_MASK) == 1073741824) {
            int paddingLeft = (((i & ViewCompat.MEASURED_SIZE_MASK) - getPaddingLeft()) - getPaddingRight()) - ((childCount - 1) * this.dividerWidth);
            if (childCount == 0) {
                childCount = 1;
            }
            iMin = paddingLeft / childCount;
        } else {
            iMin = -1;
        }
        if (((-16777216) & i2) == 1073741824) {
            int paddingBottom = ((i2 & ViewCompat.MEASURED_SIZE_MASK) - getPaddingBottom()) - getPaddingTop();
            iMin = iMin == -1 ? paddingBottom : Math.min(paddingBottom, iMin);
        }
        if (iMin != -1) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                childAt.getLayoutParams().width = iMin;
                childAt.getLayoutParams().height = iMin;
            }
        }
        super.onMeasure(i, i2);
    }
}
