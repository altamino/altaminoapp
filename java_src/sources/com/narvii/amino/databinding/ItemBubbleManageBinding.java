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
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemBubbleManageBinding implements ViewBinding {

    @NonNull
    public final LinearLayout collectionLayout;

    @NonNull
    public final TintButton edit;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemBubbleManageBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.edit);
        if (tintButton != null) {
            return new ItemBubbleManageBinding(linearLayout, linearLayout, tintButton);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.edit)));
    }

    @NonNull
    public static ItemBubbleManageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemBubbleManageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_bubble_manage, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemBubbleManageBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TintButton tintButton) {
        this.rootView = linearLayout;
        this.collectionLayout = linearLayout2;
        this.edit = tintButton;
    }
}
