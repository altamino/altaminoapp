package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemTemplateMaterailSortBackgroundBinding implements ViewBinding {

    @NonNull
    public final TextView number;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemTemplateMaterailSortBackgroundBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemTemplateMaterailSortBackgroundBinding bind(@NonNull View view) {
        int i10 = R.id.number;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            return new ItemTemplateMaterailSortBackgroundBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemTemplateMaterailSortBackgroundBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_template_materail_sort_background, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemTemplateMaterailSortBackgroundBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.number = textView;
    }
}
