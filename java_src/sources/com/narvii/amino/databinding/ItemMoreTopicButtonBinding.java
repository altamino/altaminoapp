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

/* JADX INFO: loaded from: classes4.dex */
public final class ItemMoreTopicButtonBinding implements ViewBinding {

    @NonNull
    public final TextView countText;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static ItemMoreTopicButtonBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemMoreTopicButtonBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_more_topic_button, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemMoreTopicButtonBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView) {
        this.rootView = flexLayout;
        this.countText = textView;
    }

    @NonNull
    public static ItemMoreTopicButtonBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.count_text);
        if (textView != null) {
            return new ItemMoreTopicButtonBinding((FlexLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.count_text)));
    }
}
