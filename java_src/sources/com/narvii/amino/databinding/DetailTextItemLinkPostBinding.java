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
import com.narvii.widget.SelectableTextView;

/* JADX INFO: loaded from: classes8.dex */
public final class DetailTextItemLinkPostBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final SelectableTextView text;

    @NonNull
    public static DetailTextItemLinkPostBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailTextItemLinkPostBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_text_item_link_post, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailTextItemLinkPostBinding(@NonNull FrameLayout frameLayout, @NonNull SelectableTextView selectableTextView) {
        this.rootView = frameLayout;
        this.text = selectableTextView;
    }

    @NonNull
    public static DetailTextItemLinkPostBinding bind(@NonNull View view) {
        SelectableTextView selectableTextView = (SelectableTextView) ViewBindings.a(view, R.id.text);
        if (selectableTextView != null) {
            return new DetailTextItemLinkPostBinding((FrameLayout) view, selectableTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.text)));
    }
}
