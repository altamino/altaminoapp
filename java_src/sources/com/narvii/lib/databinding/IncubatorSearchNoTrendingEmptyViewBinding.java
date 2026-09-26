package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.lib.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class IncubatorSearchNoTrendingEmptyViewBinding implements ViewBinding {

    @NonNull
    public final TextView emptyContent;

    @NonNull
    public final NVImageView image;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static IncubatorSearchNoTrendingEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorSearchNoTrendingEmptyViewBinding bind(@NonNull View view) {
        int i10 = R.id.empty_content;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.image;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
            if (nVImageView != null) {
                return new IncubatorSearchNoTrendingEmptyViewBinding((FlexLayout) view, textView, nVImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static IncubatorSearchNoTrendingEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_search_no_trending_empty_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorSearchNoTrendingEmptyViewBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull NVImageView nVImageView) {
        this.rootView = flexLayout;
        this.emptyContent = textView;
        this.image = nVImageView;
    }
}
