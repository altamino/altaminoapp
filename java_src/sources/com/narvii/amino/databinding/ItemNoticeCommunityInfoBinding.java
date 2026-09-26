package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemNoticeCommunityInfoBinding implements ViewBinding {

    @NonNull
    public final LinearLayout communityContainer;

    @NonNull
    public final ThumbImageView communityIcon;

    @NonNull
    public final NVThemeTextView communityName;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemNoticeCommunityInfoBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.community_icon;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.community_icon);
        if (thumbImageView != null) {
            i10 = R.id.community_name;
            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.community_name);
            if (nVThemeTextView != null) {
                return new ItemNoticeCommunityInfoBinding(linearLayout, linearLayout, thumbImageView, nVThemeTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemNoticeCommunityInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemNoticeCommunityInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_notice_community_info, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemNoticeCommunityInfoBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ThumbImageView thumbImageView, @NonNull NVThemeTextView nVThemeTextView) {
        this.rootView = linearLayout;
        this.communityContainer = linearLayout2;
        this.communityIcon = thumbImageView;
        this.communityName = nVThemeTextView;
    }
}
