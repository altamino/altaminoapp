package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.link.view.CommunityInfoItem;
import com.narvii.widget.CommunityIconView;

/* JADX INFO: loaded from: classes9.dex */
public final class LinkSnippetOtherCommunityItemBinding implements ViewBinding {

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final CommunityInfoItem communityLayout;

    @NonNull
    public final TextView communityName;

    @NonNull
    private final CommunityInfoItem rootView;

    @NonNull
    public static LinkSnippetOtherCommunityItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public CommunityInfoItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LinkSnippetOtherCommunityItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.link_snippet_other_community_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LinkSnippetOtherCommunityItemBinding(@NonNull CommunityInfoItem communityInfoItem, @NonNull CommunityIconView communityIconView, @NonNull CommunityInfoItem communityInfoItem2, @NonNull TextView textView) {
        this.rootView = communityInfoItem;
        this.communityIcon = communityIconView;
        this.communityLayout = communityInfoItem2;
        this.communityName = textView;
    }

    @NonNull
    public static LinkSnippetOtherCommunityItemBinding bind(@NonNull View view) {
        int i10 = R.id.community_icon;
        CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
        if (communityIconView != null) {
            CommunityInfoItem communityInfoItem = (CommunityInfoItem) view;
            TextView textView = (TextView) ViewBindings.a(view, R.id.community_name);
            if (textView != null) {
                return new LinkSnippetOtherCommunityItemBinding(communityInfoItem, communityIconView, communityInfoItem, textView);
            }
            i10 = R.id.community_name;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
