package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.lib.databinding.ItemCommunityCardBaseBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemCommunitySummaryBinding implements ViewBinding {

    @NonNull
    public final ItemCommunityCardBaseBinding communityItem;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemCommunitySummaryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCommunitySummaryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_community_summary, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCommunitySummaryBinding(@NonNull FrameLayout frameLayout, @NonNull ItemCommunityCardBaseBinding itemCommunityCardBaseBinding) {
        this.rootView = frameLayout;
        this.communityItem = itemCommunityCardBaseBinding;
    }

    @NonNull
    public static ItemCommunitySummaryBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.community_item);
        if (viewA != null) {
            return new ItemCommunitySummaryBinding((FrameLayout) view, ItemCommunityCardBaseBinding.bind(viewA));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.community_item)));
    }
}
