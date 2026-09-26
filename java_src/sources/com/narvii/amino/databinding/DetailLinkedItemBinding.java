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
import com.narvii.item.list.ItemGallery;

/* JADX INFO: loaded from: classes4.dex */
public final class DetailLinkedItemBinding implements ViewBinding {

    @NonNull
    public final ItemGallery pager;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DetailLinkedItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailLinkedItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_linked_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailLinkedItemBinding(@NonNull FrameLayout frameLayout, @NonNull ItemGallery itemGallery) {
        this.rootView = frameLayout;
        this.pager = itemGallery;
    }

    @NonNull
    public static DetailLinkedItemBinding bind(@NonNull View view) {
        ItemGallery itemGallery = (ItemGallery) ViewBindings.a(view, R.id.pager);
        if (itemGallery != null) {
            return new DetailLinkedItemBinding((FrameLayout) view, itemGallery);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.pager)));
    }
}
