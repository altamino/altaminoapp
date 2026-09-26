package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoScaleTextView;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.OnlineMemberBar;
import com.narvii.widget.PromotionalImageView;

/* JADX INFO: loaded from: classes.dex */
public final class ItemCommunitySimpleCardBinding implements ViewBinding {

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final AutoScaleTextView communityName;

    @NonNull
    public final PromotionalImageView image;

    @NonNull
    public final OnlineMemberBar onlineBar;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ItemCommunitySimpleCardBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCommunitySimpleCardBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_community_simple_card, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCommunitySimpleCardBinding(@NonNull FlexLayout flexLayout, @NonNull CommunityIconView communityIconView, @NonNull AutoScaleTextView autoScaleTextView, @NonNull PromotionalImageView promotionalImageView, @NonNull OnlineMemberBar onlineMemberBar) {
        this.rootView = flexLayout;
        this.communityIcon = communityIconView;
        this.communityName = autoScaleTextView;
        this.image = promotionalImageView;
        this.onlineBar = onlineMemberBar;
    }

    @NonNull
    public static ItemCommunitySimpleCardBinding bind(@NonNull View view) {
        int i10 = R.id.community_icon;
        CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
        if (communityIconView != null) {
            i10 = R.id.community_name;
            AutoScaleTextView autoScaleTextView = (AutoScaleTextView) ViewBindings.a(view, R.id.community_name);
            if (autoScaleTextView != null) {
                i10 = R.id.image;
                PromotionalImageView promotionalImageView = (PromotionalImageView) ViewBindings.a(view, R.id.image);
                if (promotionalImageView != null) {
                    i10 = R.id.online_bar;
                    OnlineMemberBar onlineMemberBar = (OnlineMemberBar) ViewBindings.a(view, R.id.online_bar);
                    if (onlineMemberBar != null) {
                        return new ItemCommunitySimpleCardBinding((FlexLayout) view, communityIconView, autoScaleTextView, promotionalImageView, onlineMemberBar);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
