package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.narvii.amino.mastes.R;
import com.narvii.model.User;
import com.narvii.util.Utils;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OnlineMemberBar.kt */
/* loaded from: classes3.dex */
public final class OnlineMemberBar extends FrameLayout {
    private HashMap _$_findViewCache;
    private int avatarSize;
    private final int maxAvatarSize;
    private int memberCount;
    private final double overlapRatio;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public final int getMemberCount() {
        return this.memberCount;
    }

    public final void setMemberCount(int i) {
        this.memberCount = i;
    }

    public final int getAvatarSize() {
        return this.avatarSize;
    }

    public final void setAvatarSize(int i) {
        this.avatarSize = i;
    }

    public final int getMaxAvatarSize() {
        return this.maxAvatarSize;
    }

    public final double getOverlapRatio() {
        return this.overlapRatio;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OnlineMemberBar(Context context) {
        this(context, null);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OnlineMemberBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnlineMemberBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.maxAvatarSize = 2;
        this.overlapRatio = 0.5d;
        this.avatarSize = Utils.dpToPxInt(context, 24.0f);
        View.inflate(context, R.layout.online_member_bar, this);
        setClipChildren(false);
        setClipToPadding(false);
        ((NVImageView) _$_findCachedViewById(com.narvii.amino.R.id.bar)).setCornerMask(Utils.isRtl() ? 9 : 6);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setUserList(java.util.List<? extends com.narvii.model.User> r6, int r7) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.OnlineMemberBar.setUserList(java.util.List, int):void");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        RelativeLayout onlineTextLayout = (RelativeLayout) _$_findCachedViewById(com.narvii.amino.R.id.onlineTextLayout);
        Intrinsics.checkExpressionValueIsNotNull(onlineTextLayout, "onlineTextLayout");
        int width = onlineTextLayout.getWidth();
        int i5 = 1;
        if (Utils.isRtl()) {
            int i6 = width + 0;
            ((RelativeLayout) _$_findCachedViewById(com.narvii.amino.R.id.onlineTextLayout)).layout(0, 0, i6, i4);
            Context context = getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            int dimensionPixelOffset = (i6 - context.getResources().getDimensionPixelOffset(R.dimen.online_bar_radius)) - Utils.dpToPxInt(getContext(), 3.0f);
            FrameLayout mainLayout = (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.mainLayout);
            Intrinsics.checkExpressionValueIsNotNull(mainLayout, "mainLayout");
            if (mainLayout.getChildCount() > 1) {
                FrameLayout mainLayout2 = (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.mainLayout);
                Intrinsics.checkExpressionValueIsNotNull(mainLayout2, "mainLayout");
                int childCount = mainLayout2.getChildCount();
                int i7 = 1;
                while (i7 < childCount) {
                    View childAt = ((FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.mainLayout)).getChildAt(i7);
                    double d = dimensionPixelOffset;
                    int i8 = this.avatarSize;
                    double d2 = (i7 - 1) * i8;
                    double d3 = i5;
                    double d4 = this.overlapRatio;
                    Double.isNaN(d3);
                    Double.isNaN(d2);
                    Double.isNaN(d);
                    int i9 = (int) (d + (d2 * (d3 - d4)));
                    childAt.layout(i9, 0, i8 + i9, i4);
                    i7++;
                    i5 = 1;
                }
                return;
            }
            return;
        }
        int width2 = (getWidth() - getPaddingRight()) - width;
        ((RelativeLayout) _$_findCachedViewById(com.narvii.amino.R.id.onlineTextLayout)).layout(width2, 0, width + width2, i4);
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        int dimensionPixelOffset2 = width2 + context2.getResources().getDimensionPixelOffset(R.dimen.online_bar_radius) + Utils.dpToPxInt(getContext(), 3.0f);
        FrameLayout mainLayout3 = (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.mainLayout);
        Intrinsics.checkExpressionValueIsNotNull(mainLayout3, "mainLayout");
        if (mainLayout3.getChildCount() > 1) {
            FrameLayout mainLayout4 = (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.mainLayout);
            Intrinsics.checkExpressionValueIsNotNull(mainLayout4, "mainLayout");
            int childCount2 = mainLayout4.getChildCount();
            for (int i10 = 1; i10 < childCount2; i10++) {
                View childAt2 = ((FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.mainLayout)).getChildAt(i10);
                double d5 = dimensionPixelOffset2;
                int i11 = this.avatarSize;
                double d6 = (i10 - 1) * i11;
                double d7 = 1;
                double d8 = this.overlapRatio;
                Double.isNaN(d7);
                Double.isNaN(d6);
                Double.isNaN(d5);
                int i12 = (int) (d5 - (d6 * (d7 - d8)));
                childAt2.layout(i12 - i11, 0, i12, i4);
            }
        }
    }

    private final View getAvatarView(User user, ViewGroup viewGroup) {
        View avatarLayout = LayoutInflater.from(getContext()).inflate(R.layout.online_member_avatar, viewGroup, false);
        UserAvatarLayout avatar = (UserAvatarLayout) avatarLayout.findViewById(R.id.user_avatar_layout);
        Intrinsics.checkExpressionValueIsNotNull(avatar, "avatar");
        ViewGroup.LayoutParams layoutParams = avatar.getLayoutParams();
        int i = this.avatarSize;
        layoutParams.width = i;
        layoutParams.height = i;
        avatar.setLayoutParams(layoutParams);
        avatar.setUser(user);
        Intrinsics.checkExpressionValueIsNotNull(avatarLayout, "avatarLayout");
        return avatarLayout;
    }

    public final String getFormatedMemberCount() {
        int i = this.memberCount;
        if (i < 10000) {
            return "" + this.memberCount;
        }
        if (i < 1000000) {
            return (this.memberCount / 10000) + "0K";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.memberCount / 1000000);
        sb.append('M');
        return sb.toString();
    }
}
