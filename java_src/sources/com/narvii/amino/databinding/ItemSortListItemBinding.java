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
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemSortListItemBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final TextView label;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemSortListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSortListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_sort_list_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSortListItemBinding(@NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.image = thumbImageView;
        this.label = textView;
    }

    @NonNull
    public static ItemSortListItemBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
        if (thumbImageView != null) {
            i10 = R.id.label;
            TextView textView = (TextView) ViewBindings.a(view, R.id.label);
            if (textView != null) {
                return new ItemSortListItemBinding((LinearLayout) view, thumbImageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
