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
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.CommunityActivenessBar;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class IncubatorSearchedCommunityItemUnlistBinding implements ViewBinding {

    @NonNull
    public final CommunityActivenessBar communityActivenessLevel;

    @NonNull
    public final TextView communityAminoId;

    @NonNull
    public final TextView communityDescription;

    @NonNull
    public final ThumbImageView communityIcon;

    @NonNull
    public final ImageView communityInviteLock;

    @NonNull
    public final AutoSizingTextView communityName;

    @NonNull
    public final View divider;

    @NonNull
    public final TextView extraInfo;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static IncubatorSearchedCommunityItemUnlistBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorSearchedCommunityItemUnlistBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.community_activeness_level;
        CommunityActivenessBar communityActivenessBar = (CommunityActivenessBar) ViewBindings.a(view, i10);
        if (communityActivenessBar != null) {
            i10 = R.id.community_amino_id;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.community_description;
                TextView textView2 = (TextView) ViewBindings.a(view, i10);
                if (textView2 != null) {
                    i10 = R.id.community_icon;
                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
                    if (thumbImageView != null) {
                        i10 = R.id.community_invite_lock;
                        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                        if (imageView != null) {
                            i10 = R.id.community_name;
                            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, i10);
                            if (autoSizingTextView != null && (viewA = ViewBindings.a(view, (i10 = R.id.divider))) != null) {
                                i10 = R.id.extra_info;
                                TextView textView3 = (TextView) ViewBindings.a(view, i10);
                                if (textView3 != null) {
                                    return new IncubatorSearchedCommunityItemUnlistBinding((LinearLayout) view, communityActivenessBar, textView, textView2, thumbImageView, imageView, autoSizingTextView, viewA, textView3);
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
    public static IncubatorSearchedCommunityItemUnlistBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_searched_community_item_unlist, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorSearchedCommunityItemUnlistBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityActivenessBar communityActivenessBar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView, @NonNull ImageView imageView, @NonNull AutoSizingTextView autoSizingTextView, @NonNull View view, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.communityActivenessLevel = communityActivenessBar;
        this.communityAminoId = textView;
        this.communityDescription = textView2;
        this.communityIcon = thumbImageView;
        this.communityInviteLock = imageView;
        this.communityName = autoSizingTextView;
        this.divider = view;
        this.extraInfo = textView3;
    }
}
