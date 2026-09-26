package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.influencer.FansListItemCell;
import com.narvii.tipping.TippingThanksView;
import com.narvii.widget.NicknameView;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemFansListBinding implements ViewBinding {

    @NonNull
    public final TextView address;

    @NonNull
    public final TippingThanksView fansThanksView;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    private final FansListItemCell rootView;

    @NonNull
    public final ImageView userRelationFollowing;

    @NonNull
    public final View viewStub;

    @NonNull
    public static ItemFansListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FansListItemCell getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFansListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_fans_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFansListBinding(@NonNull FansListItemCell fansListItemCell, @NonNull TextView textView, @NonNull TippingThanksView tippingThanksView, @NonNull NicknameView nicknameView, @NonNull ImageView imageView, @NonNull View view) {
        this.rootView = fansListItemCell;
        this.address = textView;
        this.fansThanksView = tippingThanksView;
        this.nickname = nicknameView;
        this.userRelationFollowing = imageView;
        this.viewStub = view;
    }

    @NonNull
    public static ItemFansListBinding bind(@NonNull View view) {
        int i10 = R.id.address;
        TextView textView = (TextView) ViewBindings.a(view, R.id.address);
        if (textView != null) {
            i10 = R.id.fans_thanks_view;
            TippingThanksView tippingThanksView = (TippingThanksView) ViewBindings.a(view, R.id.fans_thanks_view);
            if (tippingThanksView != null) {
                i10 = R.id.nickname;
                NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                if (nicknameView != null) {
                    i10 = R.id.user_relation_following;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.user_relation_following);
                    if (imageView != null) {
                        i10 = R.id.view_stub;
                        View viewA = ViewBindings.a(view, R.id.view_stub);
                        if (viewA != null) {
                            return new ItemFansListBinding((FansListItemCell) view, textView, tippingThanksView, nicknameView, imageView, viewA);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
