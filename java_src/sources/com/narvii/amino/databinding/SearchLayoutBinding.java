package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes4.dex */
public final class SearchLayoutBinding implements ViewBinding {

    @NonNull
    public final TintButton icSearch;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FrameLayout searchLayout;

    @NonNull
    public final View searchLayoutBg;

    @NonNull
    public final FrameLayout searchLayoutWithShadow;

    @NonNull
    public final AutoSizingTextView searchText;

    @NonNull
    public final ThumbImageView shadow;

    @NonNull
    public static SearchLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SearchLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.search_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SearchLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull TintButton tintButton, @NonNull FrameLayout frameLayout2, @NonNull View view, @NonNull FrameLayout frameLayout3, @NonNull AutoSizingTextView autoSizingTextView, @NonNull ThumbImageView thumbImageView) {
        this.rootView = frameLayout;
        this.icSearch = tintButton;
        this.searchLayout = frameLayout2;
        this.searchLayoutBg = view;
        this.searchLayoutWithShadow = frameLayout3;
        this.searchText = autoSizingTextView;
        this.shadow = thumbImageView;
    }

    @NonNull
    public static SearchLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.ic_search;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.ic_search);
        if (tintButton != null) {
            i10 = R.id.search_layout;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.search_layout);
            if (frameLayout != null) {
                i10 = R.id.search_layout_bg;
                View viewA = ViewBindings.a(view, R.id.search_layout_bg);
                if (viewA != null) {
                    FrameLayout frameLayout2 = (FrameLayout) view;
                    i10 = R.id.search_text;
                    AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.search_text);
                    if (autoSizingTextView != null) {
                        i10 = R.id.shadow;
                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.shadow);
                        if (thumbImageView != null) {
                            return new SearchLayoutBinding(frameLayout2, tintButton, frameLayout, viewA, frameLayout2, autoSizingTextView, thumbImageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
