package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes7.dex */
public final class LinkSnippetFansOnlyContentIndicatorBinding implements ViewBinding {

    @NonNull
    public final ImageView fansOnlyContentIndicator;

    @NonNull
    private final ImageView rootView;

    @NonNull
    public static LinkSnippetFansOnlyContentIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ImageView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LinkSnippetFansOnlyContentIndicatorBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ImageView imageView = (ImageView) view;
        return new LinkSnippetFansOnlyContentIndicatorBinding(imageView, imageView);
    }

    @NonNull
    public static LinkSnippetFansOnlyContentIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.link_snippet_fans_only_content_indicator, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LinkSnippetFansOnlyContentIndicatorBinding(@NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.rootView = imageView;
        this.fansOnlyContentIndicator = imageView2;
    }
}
