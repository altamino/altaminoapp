package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.lib.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.PromotionalImageView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class ShareCommunityContentLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView communityIdHint;

    @NonNull
    public final TextView communityIdInfo;

    @NonNull
    public final PromotionalImageView communityShareBg;

    @NonNull
    public final FlexLayout communityShareContent;

    @NonNull
    public final ThumbImageView communityShareIcon;

    @NonNull
    public final TextView communityShareTagline;

    @NonNull
    public final AutoSizingTextView communityShareTitle;

    @NonNull
    public final FlexLayout realShareLayout;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ShareCommunityContentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ShareCommunityContentLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.community_id_hint;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.community_id_info;
            TextView textView2 = (TextView) ViewBindings.a(view, i10);
            if (textView2 != null) {
                i10 = R.id.community_share_bg;
                PromotionalImageView promotionalImageView = (PromotionalImageView) ViewBindings.a(view, i10);
                if (promotionalImageView != null) {
                    i10 = R.id.community_share_content;
                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, i10);
                    if (flexLayout != null) {
                        i10 = R.id.community_share_icon;
                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
                        if (thumbImageView != null) {
                            i10 = R.id.community_share_tagline;
                            TextView textView3 = (TextView) ViewBindings.a(view, i10);
                            if (textView3 != null) {
                                i10 = R.id.community_share_title;
                                AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, i10);
                                if (autoSizingTextView != null) {
                                    i10 = R.id.real_share_layout;
                                    FlexLayout flexLayout2 = (FlexLayout) ViewBindings.a(view, i10);
                                    if (flexLayout2 != null) {
                                        return new ShareCommunityContentLayoutBinding((FlexLayout) view, textView, textView2, promotionalImageView, flexLayout, thumbImageView, textView3, autoSizingTextView, flexLayout2);
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
    public static ShareCommunityContentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.share_community_content_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ShareCommunityContentLayoutBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull PromotionalImageView promotionalImageView, @NonNull FlexLayout flexLayout2, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView3, @NonNull AutoSizingTextView autoSizingTextView, @NonNull FlexLayout flexLayout3) {
        this.rootView = flexLayout;
        this.communityIdHint = textView;
        this.communityIdInfo = textView2;
        this.communityShareBg = promotionalImageView;
        this.communityShareContent = flexLayout2;
        this.communityShareIcon = thumbImageView;
        this.communityShareTagline = textView3;
        this.communityShareTitle = autoSizingTextView;
        this.realShareLayout = flexLayout3;
    }
}
