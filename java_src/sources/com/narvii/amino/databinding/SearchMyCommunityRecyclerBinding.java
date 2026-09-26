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
import com.narvii.widget.HorizontalRecyclerView;

/* JADX INFO: loaded from: classes9.dex */
public final class SearchMyCommunityRecyclerBinding implements ViewBinding {

    @NonNull
    public final HorizontalRecyclerView recycleLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static SearchMyCommunityRecyclerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SearchMyCommunityRecyclerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.search_my_community_recycler, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SearchMyCommunityRecyclerBinding(@NonNull LinearLayout linearLayout, @NonNull HorizontalRecyclerView horizontalRecyclerView) {
        this.rootView = linearLayout;
        this.recycleLayout = horizontalRecyclerView;
    }

    @NonNull
    public static SearchMyCommunityRecyclerBinding bind(@NonNull View view) {
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, R.id.recycle_layout);
        if (horizontalRecyclerView != null) {
            return new SearchMyCommunityRecyclerBinding((LinearLayout) view, horizontalRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.recycle_layout)));
    }
}
