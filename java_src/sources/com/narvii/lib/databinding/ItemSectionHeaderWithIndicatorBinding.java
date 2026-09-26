package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class ItemSectionHeaderWithIndicatorBinding implements ViewBinding {

    @NonNull
    public final TintButton icon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemSectionHeaderWithIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSectionHeaderWithIndicatorBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
        if (tintButton != null) {
            i10 = R.id.title;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                return new ItemSectionHeaderWithIndicatorBinding((LinearLayout) view, tintButton, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemSectionHeaderWithIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_section_header_with_indicator, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSectionHeaderWithIndicatorBinding(@NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.icon = tintButton;
        this.title = textView;
    }
}
