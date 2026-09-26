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

/* JADX INFO: loaded from: classes8.dex */
public final class ItemMatchedAminoIdUserBinding implements ViewBinding {

    @NonNull
    public final UserItemGlobalSearchDarkBinding matchedUserContainer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemMatchedAminoIdUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemMatchedAminoIdUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_matched_amino_id_user, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemMatchedAminoIdUserBinding(@NonNull LinearLayout linearLayout, @NonNull UserItemGlobalSearchDarkBinding userItemGlobalSearchDarkBinding) {
        this.rootView = linearLayout;
        this.matchedUserContainer = userItemGlobalSearchDarkBinding;
    }

    @NonNull
    public static ItemMatchedAminoIdUserBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.matched_user_container);
        if (viewA != null) {
            return new ItemMatchedAminoIdUserBinding((LinearLayout) view, UserItemGlobalSearchDarkBinding.bind(viewA));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.matched_user_container)));
    }
}
