package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;

/* JADX INFO: loaded from: classes9.dex */
public final class CaptionColorTabItemBinding implements ViewBinding {

    @NonNull
    public final View indicator;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView tabTitle;

    @NonNull
    public static CaptionColorTabItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CaptionColorTabItemBinding bind(@NonNull View view) {
        int i10 = R.id.indicator;
        View viewA = ViewBindings.a(view, i10);
        if (viewA != null) {
            i10 = R.id.tab_title;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                return new CaptionColorTabItemBinding((LinearLayout) view, viewA, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static CaptionColorTabItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.caption_color_tab_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CaptionColorTabItemBinding(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.indicator = view;
        this.tabTitle = textView;
    }
}
