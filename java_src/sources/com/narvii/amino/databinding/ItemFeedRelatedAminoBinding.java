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
import com.narvii.widget.HorizontalRecyclerView;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemFeedRelatedAminoBinding implements ViewBinding {

    @NonNull
    public final LinearLayout emptySuggested;

    @NonNull
    public final HorizontalRecyclerView gallery;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView sectionLayout;

    @NonNull
    public static ItemFeedRelatedAminoBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.gallery;
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, R.id.gallery);
        if (horizontalRecyclerView != null) {
            i10 = R.id.section_layout;
            TextView textView = (TextView) ViewBindings.a(view, R.id.section_layout);
            if (textView != null) {
                return new ItemFeedRelatedAminoBinding(linearLayout, linearLayout, horizontalRecyclerView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemFeedRelatedAminoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFeedRelatedAminoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_feed_related_amino, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFeedRelatedAminoBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull HorizontalRecyclerView horizontalRecyclerView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.emptySuggested = linearLayout2;
        this.gallery = horizontalRecyclerView;
        this.sectionLayout = textView;
    }
}
