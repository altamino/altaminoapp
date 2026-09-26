package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.PromotionalImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemCommunityCardBaseBinding implements ViewBinding {

    @NonNull
    public final TextView communityAminoId;

    @NonNull
    public final TextView communityDescription;

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final ImageView communityInviteLock;

    @NonNull
    public final TextView communityName;

    @NonNull
    public final View divider;

    @NonNull
    public final TextView extraInfo;

    @NonNull
    public final PromotionalImageView image;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final NVFlowLayout topicFlowLayout;

    @NonNull
    public static ItemCommunityCardBaseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCommunityCardBaseBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.community_amino_id;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.community_description;
            TextView textView2 = (TextView) ViewBindings.a(view, i10);
            if (textView2 != null) {
                i10 = R.id.community_icon;
                CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, i10);
                if (communityIconView != null) {
                    i10 = R.id.community_invite_lock;
                    ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                    if (imageView != null) {
                        i10 = R.id.community_name;
                        TextView textView3 = (TextView) ViewBindings.a(view, i10);
                        if (textView3 != null && (viewA = ViewBindings.a(view, (i10 = R.id.divider))) != null) {
                            i10 = R.id.extra_info;
                            TextView textView4 = (TextView) ViewBindings.a(view, i10);
                            if (textView4 != null) {
                                i10 = R.id.image;
                                PromotionalImageView promotionalImageView = (PromotionalImageView) ViewBindings.a(view, i10);
                                if (promotionalImageView != null) {
                                    i10 = R.id.topic_flow_layout;
                                    NVFlowLayout nVFlowLayout = (NVFlowLayout) ViewBindings.a(view, i10);
                                    if (nVFlowLayout != null) {
                                        return new ItemCommunityCardBaseBinding((LinearLayout) view, textView, textView2, communityIconView, imageView, textView3, viewA, textView4, promotionalImageView, nVFlowLayout);
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

    @NonNull
    public static ItemCommunityCardBaseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_community_card_base, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCommunityCardBaseBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull CommunityIconView communityIconView, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull View view, @NonNull TextView textView4, @NonNull PromotionalImageView promotionalImageView, @NonNull NVFlowLayout nVFlowLayout) {
        this.rootView = linearLayout;
        this.communityAminoId = textView;
        this.communityDescription = textView2;
        this.communityIcon = communityIconView;
        this.communityInviteLock = imageView;
        this.communityName = textView3;
        this.divider = view;
        this.extraInfo = textView4;
        this.image = promotionalImageView;
        this.topicFlowLayout = nVFlowLayout;
    }
}
