package com.narvii.amino.databinding;

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
import com.narvii.amino.master.R;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemSubscriptionListBinding implements ViewBinding {

    @NonNull
    public final ImageView aminoPlusBadge;

    @NonNull
    public final NVImageView avatarFrameIcon;

    @NonNull
    public final TextView avatarFrameName;

    @NonNull
    public final TintButton chevronRight;

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final LinearLayout communityInfoLayout;

    @NonNull
    public final TextView communityName;

    @NonNull
    public final LinearLayout layoutMain;

    @NonNull
    public final LinearLayout propItemContainerRoot;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView status;

    @NonNull
    public static ItemSubscriptionListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSubscriptionListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_subscription_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSubscriptionListBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull NVImageView nVImageView, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull CommunityIconView communityIconView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.aminoPlusBadge = imageView;
        this.avatarFrameIcon = nVImageView;
        this.avatarFrameName = textView;
        this.chevronRight = tintButton;
        this.communityIcon = communityIconView;
        this.communityInfoLayout = linearLayout2;
        this.communityName = textView2;
        this.layoutMain = linearLayout3;
        this.propItemContainerRoot = linearLayout4;
        this.status = textView3;
    }

    @NonNull
    public static ItemSubscriptionListBinding bind(@NonNull View view) {
        int i10 = R.id.amino_plus_badge;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.amino_plus_badge);
        if (imageView != null) {
            i10 = R.id.avatar_frame_icon;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.avatar_frame_icon);
            if (nVImageView != null) {
                i10 = R.id.avatar_frame_name;
                TextView textView = (TextView) ViewBindings.a(view, R.id.avatar_frame_name);
                if (textView != null) {
                    i10 = R.id.chevron_right;
                    TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.chevron_right);
                    if (tintButton != null) {
                        i10 = R.id.community_icon;
                        CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
                        if (communityIconView != null) {
                            i10 = R.id.community_info_layout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.community_info_layout);
                            if (linearLayout != null) {
                                i10 = R.id.community_name;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.community_name);
                                if (textView2 != null) {
                                    i10 = R.id.layout_main;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.layout_main);
                                    if (linearLayout2 != null) {
                                        LinearLayout linearLayout3 = (LinearLayout) view;
                                        i10 = R.id.status;
                                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.status);
                                        if (textView3 != null) {
                                            return new ItemSubscriptionListBinding(linearLayout3, imageView, nVImageView, textView, tintButton, communityIconView, linearLayout, textView2, linearLayout2, linearLayout3, textView3);
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
