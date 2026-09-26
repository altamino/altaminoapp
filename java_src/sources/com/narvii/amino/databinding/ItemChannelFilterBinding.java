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
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class ItemChannelFilterBinding implements ViewBinding {

    @NonNull
    public final TextView channelName;

    @NonNull
    public final TintButton icon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemChannelFilterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemChannelFilterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_channel_filter, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemChannelFilterBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TintButton tintButton) {
        this.rootView = linearLayout;
        this.channelName = textView;
        this.icon = tintButton;
    }

    @NonNull
    public static ItemChannelFilterBinding bind(@NonNull View view) {
        int i10 = R.id.channel_name;
        TextView textView = (TextView) ViewBindings.a(view, R.id.channel_name);
        if (textView != null) {
            i10 = R.id.icon;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.icon);
            if (tintButton != null) {
                return new ItemChannelFilterBinding((LinearLayout) view, textView, tintButton);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
