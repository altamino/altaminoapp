package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes10.dex */
public final class EmptyViewFollowingFeedBinding implements ViewBinding {

    @NonNull
    public final FlexLayout empty;

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    public final TextView emptyText;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static EmptyViewFollowingFeedBinding bind(@NonNull View view) {
        FlexLayout flexLayout = (FlexLayout) view;
        int i10 = R.id.empty_retry;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.empty_retry);
        if (fontAwesomeView != null) {
            i10 = R.id.empty_text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.empty_text);
            if (textView != null) {
                return new EmptyViewFollowingFeedBinding(flexLayout, flexLayout, fontAwesomeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static EmptyViewFollowingFeedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static EmptyViewFollowingFeedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.empty_view_following_feed, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private EmptyViewFollowingFeedBinding(@NonNull FlexLayout flexLayout, @NonNull FlexLayout flexLayout2, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView) {
        this.rootView = flexLayout;
        this.empty = flexLayout2;
        this.emptyRetry = fontAwesomeView;
        this.emptyText = textView;
    }
}
