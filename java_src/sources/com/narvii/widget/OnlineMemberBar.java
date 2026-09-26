package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.amino.databinding.OnlineMemberBarBinding;
import com.narvii.amino.master.R;
import com.narvii.model.User;
import com.narvii.util.Utils;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class OnlineMemberBar extends FrameLayout {
    private int avatarSize;

    @NotNull
    private final OnlineMemberBarBinding binding;
    private final int maxAvatarSize;
    private int memberCount;
    private final double overlapRatio;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OnlineMemberBar(@NotNull Context context) {
        this(context, null);
        t.j(context, "context");
    }

    public final int getAvatarSize() {
        return this.avatarSize;
    }

    public final int getMaxAvatarSize() {
        return this.maxAvatarSize;
    }

    public final int getMemberCount() {
        return this.memberCount;
    }

    public final double getOverlapRatio() {
        return this.overlapRatio;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        OnlineMemberBarBinding onlineMemberBarBinding = this.binding;
        super.onLayout(z6, i10, i11, i12, i13);
        int width = onlineMemberBarBinding.onlineTextLayout.getWidth();
        int i14 = 1;
        if (!Utils.isRtl()) {
            int width2 = (getWidth() - getPaddingRight()) - width;
            onlineMemberBarBinding.onlineTextLayout.layout(width2, 0, width + width2, i13);
            int dimensionPixelOffset = width2 + getContext().getResources().getDimensionPixelOffset(R.dimen.online_bar_radius) + Utils.dpToPxInt(getContext(), 3.0f);
            if (onlineMemberBarBinding.mainLayout.getChildCount() > 1) {
                int childCount = onlineMemberBarBinding.mainLayout.getChildCount();
                for (int i15 = 1; i15 < childCount; i15++) {
                    View childAt = onlineMemberBarBinding.mainLayout.getChildAt(i15);
                    int i16 = this.avatarSize;
                    int i17 = (int) (((double) dimensionPixelOffset) - (((double) ((i15 - 1) * i16)) * (((double) 1) - this.overlapRatio)));
                    childAt.layout(i17 - i16, 0, i17, i13);
                }
                return;
            }
            return;
        }
        onlineMemberBarBinding.onlineTextLayout.layout(0, 0, width, i13);
        int dimensionPixelOffset2 = (width - getContext().getResources().getDimensionPixelOffset(R.dimen.online_bar_radius)) - Utils.dpToPxInt(getContext(), 3.0f);
        if (onlineMemberBarBinding.mainLayout.getChildCount() > 1) {
            int childCount2 = onlineMemberBarBinding.mainLayout.getChildCount();
            int i18 = 1;
            while (i18 < childCount2) {
                View childAt2 = onlineMemberBarBinding.mainLayout.getChildAt(i18);
                int i19 = this.avatarSize;
                int i20 = dimensionPixelOffset2;
                int i21 = (int) (((double) dimensionPixelOffset2) + (((double) ((i18 - 1) * i19)) * (((double) i14) - this.overlapRatio)));
                childAt2.layout(i21, 0, i19 + i21, i13);
                i18++;
                dimensionPixelOffset2 = i20;
                childCount2 = childCount2;
                i14 = 1;
            }
        }
    }

    public final void setAvatarSize(int i10) {
        this.avatarSize = i10;
    }

    public final void setMemberCount(int i10) {
        this.memberCount = i10;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OnlineMemberBar(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        t.j(context, "context");
    }

    @Nullable
    public final String getFormatedMemberCount() {
        int i10 = this.memberCount;
        if (i10 < 10000) {
            StringBuilder sb = new StringBuilder();
            sb.append(i10);
            return sb.toString();
        }
        if (i10 < 1000000) {
            return (i10 / 10000) + "0K";
        }
        return (i10 / 1000000) + "M";
    }

    public final void setUserList(@Nullable List<? extends User> list, int i10) {
        List<? extends User> list2;
        OnlineMemberBarBinding onlineMemberBarBinding = this.binding;
        this.memberCount = i10;
        onlineMemberBarBinding.onlineMemberCount.setText(getFormatedMemberCount());
        int i11 = 0;
        setVisibility((i10 == 0 || (list2 = list) == null || list2.isEmpty()) ? 4 : 0);
        List<? extends User> list3 = list;
        if (list3 == null || list3.isEmpty()) {
            while (onlineMemberBarBinding.mainLayout.getChildCount() > 1) {
                FrameLayout frameLayout = onlineMemberBarBinding.mainLayout;
                frameLayout.removeViewAt(frameLayout.getChildCount() - 1);
            }
            return;
        }
        int iMin = Math.min(this.maxAvatarSize, list.size());
        while (onlineMemberBarBinding.mainLayout.getChildCount() - 1 > iMin) {
            FrameLayout frameLayout2 = onlineMemberBarBinding.mainLayout;
            frameLayout2.removeViewAt(frameLayout2.getChildCount() - 1);
        }
        while (i11 < iMin) {
            int i12 = i11 + 1;
            View childAt = onlineMemberBarBinding.mainLayout.getChildAt(i12);
            if (childAt == null) {
                User user = list.get(i11);
                FrameLayout mainLayout = onlineMemberBarBinding.mainLayout;
                t.i(mainLayout, "mainLayout");
                onlineMemberBarBinding.mainLayout.addView(getAvatarView(user, mainLayout));
            } else {
                UserAvatarLayout userAvatarLayout = (UserAvatarLayout) childAt.findViewById(R.id.user_avatar_layout);
                if (userAvatarLayout != null) {
                    userAvatarLayout.setUser(list.get(i11));
                }
            }
            i11 = i12;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnlineMemberBar(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        this.maxAvatarSize = 2;
        this.overlapRatio = 0.5d;
        OnlineMemberBarBinding onlineMemberBarBindingInflate = OnlineMemberBarBinding.inflate(LayoutInflater.from(getContext()), this, true);
        t.i(onlineMemberBarBindingInflate, "inflate(...)");
        this.binding = onlineMemberBarBindingInflate;
        this.avatarSize = Utils.dpToPxInt(context, 24.0f);
        setClipChildren(false);
        setClipToPadding(false);
        onlineMemberBarBindingInflate.bar.setCornerMask(Utils.isRtl() ? 9 : 6);
    }

    private final View getAvatarView(User user, ViewGroup viewGroup) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.online_member_avatar, viewGroup, false);
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewInflate.findViewById(R.id.user_avatar_layout);
        ViewGroup.LayoutParams layoutParams = userAvatarLayout.getLayoutParams();
        int i10 = this.avatarSize;
        layoutParams.width = i10;
        layoutParams.height = i10;
        userAvatarLayout.setLayoutParams(layoutParams);
        userAvatarLayout.setUser(user);
        t.g(viewInflate);
        return viewInflate;
    }
}
