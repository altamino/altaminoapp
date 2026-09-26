package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemRecentCommunityRecyclerViewBinding implements ViewBinding {

    @NonNull
    public final RecyclerView embedRecycler;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemRecentCommunityRecyclerViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemRecentCommunityRecyclerViewBinding bind(@NonNull View view) {
        int i10 = R.id.embed_recycler;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.a(view, i10);
        if (recyclerView != null) {
            i10 = R.id.title;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                return new ItemRecentCommunityRecyclerViewBinding((LinearLayout) view, recyclerView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemRecentCommunityRecyclerViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_recent_community_recycler_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemRecentCommunityRecyclerViewBinding(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.embedRecycler = recyclerView;
        this.title = textView;
    }
}
