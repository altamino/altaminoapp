package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class JoinCommunityRequestLayoutBinding implements ViewBinding {

    @NonNull
    public final ImageView landingClose;

    @NonNull
    public final ScrollView root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static JoinCommunityRequestLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static JoinCommunityRequestLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.join_community_request_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private JoinCommunityRequestLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ScrollView scrollView) {
        this.rootView = frameLayout;
        this.landingClose = imageView;
        this.root = scrollView;
    }

    @NonNull
    public static JoinCommunityRequestLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.landing_close;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.landing_close);
        if (imageView != null) {
            i10 = R.id.root;
            ScrollView scrollView = (ScrollView) ViewBindings.a(view, R.id.root);
            if (scrollView != null) {
                return new JoinCommunityRequestLayoutBinding((FrameLayout) view, imageView, scrollView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
