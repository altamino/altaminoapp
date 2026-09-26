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
import com.narvii.lib.databinding.ItemCommunityCardBaseBinding;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemMatchedAminoIdCommunityBinding implements ViewBinding {

    @NonNull
    public final ItemCommunityCardBaseBinding matchedCommunityContainer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemMatchedAminoIdCommunityBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemMatchedAminoIdCommunityBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_matched_amino_id_community, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemMatchedAminoIdCommunityBinding(@NonNull LinearLayout linearLayout, @NonNull ItemCommunityCardBaseBinding itemCommunityCardBaseBinding) {
        this.rootView = linearLayout;
        this.matchedCommunityContainer = itemCommunityCardBaseBinding;
    }

    @NonNull
    public static ItemMatchedAminoIdCommunityBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.matched_community_container);
        if (viewA != null) {
            return new ItemMatchedAminoIdCommunityBinding((LinearLayout) view, ItemCommunityCardBaseBinding.bind(viewA));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.matched_community_container)));
    }
}
