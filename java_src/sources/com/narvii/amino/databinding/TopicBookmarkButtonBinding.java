package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes6.dex */
public final class TopicBookmarkButtonBinding implements ViewBinding {

    @NonNull
    public final SpinningView bookmarkLoading;

    @NonNull
    public final LinearLayout bookmarkNormal;

    @NonNull
    public final FrameLayout bookmarkNormalSelected;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TopicBookmarkButtonBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.topic_bookmark_button, viewGroup);
        return bind(viewGroup);
    }

    private TopicBookmarkButtonBinding(@NonNull View view, @NonNull SpinningView spinningView, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout) {
        this.rootView = view;
        this.bookmarkLoading = spinningView;
        this.bookmarkNormal = linearLayout;
        this.bookmarkNormalSelected = frameLayout;
    }

    @NonNull
    public static TopicBookmarkButtonBinding bind(@NonNull View view) {
        int i10 = R.id.bookmark_loading;
        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.bookmark_loading);
        if (spinningView != null) {
            i10 = R.id.bookmark_normal;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.bookmark_normal);
            if (linearLayout != null) {
                i10 = R.id.bookmark_normal_selected;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.bookmark_normal_selected);
                if (frameLayout != null) {
                    return new TopicBookmarkButtonBinding(view, spinningView, linearLayout, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
