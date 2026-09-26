package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.tipping.TippingListItemCell;
import com.narvii.tipping.TippingThanksView;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemTippingListBinding implements ViewBinding {

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final TextView rank;

    @NonNull
    public final FrameLayout rankFrame;

    @NonNull
    public final ImageView rankIcon;

    @NonNull
    private final TippingListItemCell rootView;

    @NonNull
    public final TextView tippingCoin;

    @NonNull
    public final LinearLayout tippingContainer;

    @NonNull
    public final TextView tippingDesc;

    @NonNull
    public final TippingThanksView tippingThanksView;

    @NonNull
    public final ImageView userRelationFollowing;

    @NonNull
    public final View viewStub;

    @NonNull
    public static ItemTippingListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public TippingListItemCell getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemTippingListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_tipping_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemTippingListBinding(@NonNull TippingListItemCell tippingListItemCell, @NonNull NicknameView nicknameView, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView3, @NonNull TippingThanksView tippingThanksView, @NonNull ImageView imageView2, @NonNull View view) {
        this.rootView = tippingListItemCell;
        this.nickname = nicknameView;
        this.rank = textView;
        this.rankFrame = frameLayout;
        this.rankIcon = imageView;
        this.tippingCoin = textView2;
        this.tippingContainer = linearLayout;
        this.tippingDesc = textView3;
        this.tippingThanksView = tippingThanksView;
        this.userRelationFollowing = imageView2;
        this.viewStub = view;
    }

    @NonNull
    public static ItemTippingListBinding bind(@NonNull View view) {
        int i10 = R.id.nickname;
        NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
        if (nicknameView != null) {
            i10 = R.id.rank;
            TextView textView = (TextView) ViewBindings.a(view, R.id.rank);
            if (textView != null) {
                i10 = R.id.rank_frame;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.rank_frame);
                if (frameLayout != null) {
                    i10 = R.id.rank_icon;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.rank_icon);
                    if (imageView != null) {
                        i10 = R.id.tipping_coin;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.tipping_coin);
                        if (textView2 != null) {
                            i10 = R.id.tipping_container;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.tipping_container);
                            if (linearLayout != null) {
                                i10 = R.id.tipping_desc;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.tipping_desc);
                                if (textView3 != null) {
                                    i10 = R.id.tipping_thanks_view;
                                    TippingThanksView tippingThanksView = (TippingThanksView) ViewBindings.a(view, R.id.tipping_thanks_view);
                                    if (tippingThanksView != null) {
                                        i10 = R.id.user_relation_following;
                                        ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.user_relation_following);
                                        if (imageView2 != null) {
                                            i10 = R.id.view_stub;
                                            View viewA = ViewBindings.a(view, R.id.view_stub);
                                            if (viewA != null) {
                                                return new ItemTippingListBinding((TippingListItemCell) view, nicknameView, textView, frameLayout, imageView, textView2, linearLayout, textView3, tippingThanksView, imageView2, viewA);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
