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

/* JADX INFO: loaded from: classes9.dex */
public final class ItemHeadlineChannelEditSectionBinding implements ViewBinding {

    @NonNull
    public final TextView manageTopic;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemHeadlineChannelEditSectionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemHeadlineChannelEditSectionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_headline_channel_edit_section, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemHeadlineChannelEditSectionBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.manageTopic = textView;
    }

    @NonNull
    public static ItemHeadlineChannelEditSectionBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.manage_topic);
        if (textView != null) {
            return new ItemHeadlineChannelEditSectionBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.manage_topic)));
    }
}
