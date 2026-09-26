package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.CommunityIconView;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutCommunityGlobalSearchInfoBinding implements ViewBinding {

    @NonNull
    public final CommunityIconView communityIcon;

    @NonNull
    public final LinearLayout communityInfo;

    @NonNull
    public final TextView communityName;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static LayoutCommunityGlobalSearchInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutCommunityGlobalSearchInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_community_global_search_info, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutCommunityGlobalSearchInfoBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityIconView communityIconView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.communityIcon = communityIconView;
        this.communityInfo = linearLayout2;
        this.communityName = textView;
    }

    @NonNull
    public static LayoutCommunityGlobalSearchInfoBinding bind(@NonNull View view) {
        int i10 = R.id.community_icon;
        CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.community_icon);
        if (communityIconView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            TextView textView = (TextView) ViewBindings.a(view, R.id.community_name);
            if (textView != null) {
                return new LayoutCommunityGlobalSearchInfoBinding(linearLayout, communityIconView, linearLayout, textView);
            }
            i10 = R.id.community_name;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
