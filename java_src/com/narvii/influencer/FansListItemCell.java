package com.narvii.influencer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.mastes.R;
import com.narvii.model.User;
import com.narvii.tipping.TippingThanksView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: FansListItemCell.kt */
/* loaded from: classes2.dex */
public final class FansListItemCell extends FlexLayout {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FansListItemCell.class), "avatar", "getAvatar()Lcom/narvii/widget/UserAvatarLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FansListItemCell.class), "nicknameView", "getNicknameView()Lcom/narvii/widget/NicknameView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FansListItemCell.class), "tvAdress", "getTvAdress()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FansListItemCell.class), "followedCheck", "getFollowedCheck()Landroid/widget/ImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FansListItemCell.class), "fansThanksView", "getFansThanksView()Lcom/narvii/tipping/TippingThanksView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FansListItemCell.class), "userFollowView", "getUserFollowView()Landroid/view/View;"))};
    private HashMap _$_findViewCache;
    private final Lazy avatar$delegate;
    private final Lazy fansThanksView$delegate;
    private final Lazy followedCheck$delegate;
    private final Lazy nicknameView$delegate;
    private final Lazy tvAdress$delegate;
    private final Lazy userFollowView$delegate;

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

    public final UserAvatarLayout getAvatar() {
        Lazy lazy = this.avatar$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (UserAvatarLayout) lazy.getValue();
    }

    public final TippingThanksView getFansThanksView() {
        Lazy lazy = this.fansThanksView$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (TippingThanksView) lazy.getValue();
    }

    public final ImageView getFollowedCheck() {
        Lazy lazy = this.followedCheck$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (ImageView) lazy.getValue();
    }

    public final NicknameView getNicknameView() {
        Lazy lazy = this.nicknameView$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (NicknameView) lazy.getValue();
    }

    public final TextView getTvAdress() {
        Lazy lazy = this.tvAdress$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (TextView) lazy.getValue();
    }

    public final View getUserFollowView() {
        Lazy lazy = this.userFollowView$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (View) lazy.getValue();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FansListItemCell(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.avatar$delegate = bind(this, R.id.user_avatar_layout);
        this.nicknameView$delegate = bind(this, R.id.nickname);
        this.tvAdress$delegate = bind(this, R.id.address);
        this.followedCheck$delegate = bind(this, R.id.user_relation_following);
        this.fansThanksView$delegate = bind(this, R.id.fans_thanks_view);
        this.userFollowView$delegate = bind(this, R.id.user_follow);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FansListItemCell(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attrs, "attrs");
        this.avatar$delegate = bind(this, R.id.user_avatar_layout);
        this.nicknameView$delegate = bind(this, R.id.nickname);
        this.tvAdress$delegate = bind(this, R.id.address);
        this.followedCheck$delegate = bind(this, R.id.user_relation_following);
        this.fansThanksView$delegate = bind(this, R.id.fans_thanks_view);
        this.userFollowView$delegate = bind(this, R.id.user_follow);
    }

    public final void setFansInfo(FansInfo fansInfo, boolean z, boolean z2, boolean z3) {
        if (fansInfo == null || fansInfo.getAuthor() == null) {
            return;
        }
        User author = fansInfo.getAuthor();
        getFansThanksView().setVisibility(z ? 0 : 8);
        getAvatar().setUser(author);
        getNicknameView().setUser(author);
        getTvAdress().setVisibility(8);
        getTvAdress().setText(author.address);
        getUserFollowView().setVisibility(8);
        getFollowedCheck().setVisibility(8);
        if (z) {
            getUserFollowView().setVisibility(8);
            getFollowedCheck().setVisibility(8);
            if (!fansInfo.isTipperAccessible) {
                getFansThanksView().setVerticalGravity(8);
                return;
            } else {
                getFansThanksView().setVerticalGravity(0);
                getFansThanksView().bindBebefactor(fansInfo);
                return;
            }
        }
        getFansThanksView().setVisibility(8);
        int i = author.membershipStatus;
        boolean z4 = true;
        if (i != 1 && i != 3) {
            z4 = false;
        }
        getFollowedCheck().setVisibility((z2 || !z4) ? 8 : 0);
        getUserFollowView().setVisibility((z2 || z4) ? 8 : 0);
        View viewFindViewById = getUserFollowView().findViewById(R.id.user_follow_icon);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "userFollowView.findViewB…w>(R.id.user_follow_icon)");
        viewFindViewById.setVisibility(z3 ? 8 : 0);
        View viewFindViewById2 = getUserFollowView().findViewById(R.id.user_follow_text);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "userFollowView.findViewB…w>(R.id.user_follow_text)");
        viewFindViewById2.setVisibility(z3 ? 8 : 0);
        View viewFindViewById3 = getUserFollowView().findViewById(R.id.user_follow_progress);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "userFollowView.findViewB….id.user_follow_progress)");
        viewFindViewById3.setVisibility(z3 ? 0 : 8);
    }

    private final <T extends View> Lazy<T> bind(FansListItemCell fansListItemCell, final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.influencer.FansListItemCell.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View viewFindViewById = FansListItemCell.this.findViewById(i);
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }
}
