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

/* JADX INFO: loaded from: classes11.dex */
public final class ItemRecnetCommunityCardHorizontalBinding implements ViewBinding {

    @NonNull
    public final CommunityIconView icon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemRecnetCommunityCardHorizontalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemRecnetCommunityCardHorizontalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_recnet_community_card_horizontal, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemRecnetCommunityCardHorizontalBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityIconView communityIconView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.icon = communityIconView;
        this.title = textView;
    }

    @NonNull
    public static ItemRecnetCommunityCardHorizontalBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        CommunityIconView communityIconView = (CommunityIconView) ViewBindings.a(view, R.id.icon);
        if (communityIconView != null) {
            i10 = R.id.title;
            TextView textView = (TextView) ViewBindings.a(view, R.id.title);
            if (textView != null) {
                return new ItemRecnetCommunityCardHorizontalBinding((LinearLayout) view, communityIconView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
