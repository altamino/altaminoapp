package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes3.dex */
public final class StoreItemManageTitleItemBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static StoreItemManageTitleItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StoreItemManageTitleItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.store_item_manage_title_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StoreItemManageTitleItemBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.title = textView;
    }

    @NonNull
    public static StoreItemManageTitleItemBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.title);
        if (textView != null) {
            return new StoreItemManageTitleItemBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.title)));
    }
}
