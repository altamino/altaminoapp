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

/* JADX INFO: loaded from: classes3.dex */
public final class DetailHeaderItemTopMarginBinding implements ViewBinding {

    @NonNull
    public final TextView headerCount;

    @NonNull
    public final LinearLayout headerLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DetailHeaderItemTopMarginBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailHeaderItemTopMarginBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_header_item_top_margin, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailHeaderItemTopMarginBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.headerCount = textView;
        this.headerLayout = linearLayout2;
    }

    @NonNull
    public static DetailHeaderItemTopMarginBinding bind(@NonNull View view) {
        int i10 = R.id.header_count;
        TextView textView = (TextView) ViewBindings.a(view, R.id.header_count);
        if (textView != null) {
            i10 = R.id.header_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.header_layout);
            if (linearLayout != null) {
                return new DetailHeaderItemTopMarginBinding((LinearLayout) view, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
