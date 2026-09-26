package com.narvii.influencer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.IdRes;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.model.User;
import com.narvii.tipping.TippingThanksView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes9.dex */
public final class FansListItemCell extends FlexLayout {

    @NotNull
    private final m avatar$delegate;

    @NotNull
    private final m fansThanksView$delegate;

    @NotNull
    private final m followedCheck$delegate;

    @NotNull
    private final m nicknameView$delegate;

    @NotNull
    private final m tvAdress$delegate;

    @NotNull
    private final m userFollowView$delegate;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.influencer.FansListItemCell$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @NotNull
        public final View invoke() {
            View viewFindViewById = FansListItemCell.this.findViewById(this.$res);
            t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.influencer.FansListItemCell.bind");
            return viewFindViewById;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FansListItemCell(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        this.avatar$delegate = bind(this, R.id.user_avatar_layout);
        this.nicknameView$delegate = bind(this, R.id.nickname);
        this.tvAdress$delegate = bind(this, R.id.address);
        this.followedCheck$delegate = bind(this, R.id.user_relation_following);
        this.fansThanksView$delegate = bind(this, R.id.fans_thanks_view);
        this.userFollowView$delegate = bind(this, R.id.user_follow);
    }

    private final <T extends View> m<T> bind(FansListItemCell fansListItemCell, @IdRes int i10) {
        return o.b(q.NONE, fansListItemCell.new AnonymousClass1(i10));
    }

    @NotNull
    public final UserAvatarLayout getAvatar() {
        return (UserAvatarLayout) this.avatar$delegate.getValue();
    }

    @NotNull
    public final TippingThanksView getFansThanksView() {
        return (TippingThanksView) this.fansThanksView$delegate.getValue();
    }

    @NotNull
    public final ImageView getFollowedCheck() {
        return (ImageView) this.followedCheck$delegate.getValue();
    }

    @NotNull
    public final NicknameView getNicknameView() {
        return (NicknameView) this.nicknameView$delegate.getValue();
    }

    @NotNull
    public final TextView getTvAdress() {
        return (TextView) this.tvAdress$delegate.getValue();
    }

    @NotNull
    public final View getUserFollowView() {
        return (View) this.userFollowView$delegate.getValue();
    }

    public final void setFansInfo(@Nullable FansInfo fansInfo, boolean z6, boolean z10, boolean z11) {
        if (fansInfo == null || fansInfo.getAuthor() == null) {
            return;
        }
        User author = fansInfo.getAuthor();
        getFansThanksView().setVisibility(z6 ? 0 : 8);
        getAvatar().setUser(author);
        getNicknameView().setUser(author);
        getTvAdress().setVisibility(8);
        getTvAdress().setText(author.address);
        getUserFollowView().setVisibility(8);
        getFollowedCheck().setVisibility(8);
        if (z6) {
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
        int i10 = author.membershipStatus;
        boolean z12 = true;
        if (i10 != 1 && i10 != 3) {
            z12 = false;
        }
        getFollowedCheck().setVisibility((z10 || !z12) ? 8 : 0);
        getUserFollowView().setVisibility((z10 || z12) ? 8 : 0);
        getUserFollowView().findViewById(R.id.user_follow_icon).setVisibility(z11 ? 8 : 0);
        getUserFollowView().findViewById(R.id.user_follow_text).setVisibility(z11 ? 8 : 0);
        getUserFollowView().findViewById(R.id.user_follow_progress).setVisibility(z11 ? 0 : 8);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FansListItemCell(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs);
        t.j(context, "context");
        t.j(attrs, "attrs");
        this.avatar$delegate = bind(this, R.id.user_avatar_layout);
        this.nicknameView$delegate = bind(this, R.id.nickname);
        this.tvAdress$delegate = bind(this, R.id.address);
        this.followedCheck$delegate = bind(this, R.id.user_relation_following);
        this.fansThanksView$delegate = bind(this, R.id.fans_thanks_view);
        this.userFollowView$delegate = bind(this, R.id.user_follow);
    }
}
