package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.theme.BackgroundColorView;

/* JADX INFO: loaded from: classes6.dex */
public final class FeedDividerItemBinding implements ViewBinding {

    @NonNull
    public final TextView dividerText;

    @NonNull
    private final BackgroundColorView rootView;

    @NonNull
    public static FeedDividerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public BackgroundColorView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedDividerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_divider_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedDividerItemBinding(@NonNull BackgroundColorView backgroundColorView, @NonNull TextView textView) {
        this.rootView = backgroundColorView;
        this.dividerText = textView;
    }

    @NonNull
    public static FeedDividerItemBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.divider_text);
        if (textView != null) {
            return new FeedDividerItemBinding((BackgroundColorView) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.divider_text)));
    }
}
