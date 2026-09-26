package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemShowMoreStoryBinding implements ViewBinding {

    @NonNull
    public final TextView countText;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ItemShowMoreStoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemShowMoreStoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_show_more_story, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemShowMoreStoryBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView) {
        this.rootView = flexLayout;
        this.countText = textView;
    }

    @NonNull
    public static ItemShowMoreStoryBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.count_text);
        if (textView != null) {
            return new ItemShowMoreStoryBinding((FlexLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.count_text)));
    }
}
