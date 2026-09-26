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
import com.narvii.widget.SelectableTextView;

/* JADX INFO: loaded from: classes8.dex */
public final class DetailTitleItemBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final SelectableTextView title;

    @NonNull
    public static DetailTitleItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailTitleItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_title_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailTitleItemBinding(@NonNull LinearLayout linearLayout, @NonNull SelectableTextView selectableTextView) {
        this.rootView = linearLayout;
        this.title = selectableTextView;
    }

    @NonNull
    public static DetailTitleItemBinding bind(@NonNull View view) {
        SelectableTextView selectableTextView = (SelectableTextView) ViewBindings.a(view, R.id.title);
        if (selectableTextView != null) {
            return new DetailTitleItemBinding((LinearLayout) view, selectableTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.title)));
    }
}
