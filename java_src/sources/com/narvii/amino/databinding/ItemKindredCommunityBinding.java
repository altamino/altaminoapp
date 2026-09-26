package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.PromotionalImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class ItemKindredCommunityBinding implements ViewBinding {

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final TextView communityName;

    @NonNull
    public final PromotionalImageView image;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ItemKindredCommunityBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemKindredCommunityBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_kindred_community, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemKindredCommunityBinding(@NonNull FlexLayout flexLayout, @NonNull CommunityIconView communityIconView, @NonNull TextView textView, @NonNull PromotionalImageView promotionalImageView) {
        this.rootView = flexLayout;
        this.communityIcon = communityIconView;
        this.communityName = textView;
        this.image = promotionalImageView;
    }

    @NonNull
    public static ItemKindredCommunityBinding bind(@NonNull View view) {
        int i10 = R.id.community_icon;
        CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
        if (communityIconView != null) {
            i10 = R.id.community_name;
            TextView textView = (TextView) ViewBindings.a(view, R.id.community_name);
            if (textView != null) {
                i10 = R.id.image;
                PromotionalImageView promotionalImageView = (PromotionalImageView) ViewBindings.a(view, R.id.image);
                if (promotionalImageView != null) {
                    return new ItemKindredCommunityBinding((FlexLayout) view, communityIconView, textView, promotionalImageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
