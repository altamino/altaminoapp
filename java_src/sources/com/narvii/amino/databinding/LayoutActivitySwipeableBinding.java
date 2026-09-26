package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.RoundFrameLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class LayoutActivitySwipeableBinding implements ViewBinding {

    @NonNull
    public final FrameLayout CommunityJoinBar;

    @NonNull
    public final LinearLayout activitySwipeableRoot;

    @NonNull
    public final ImageView close;

    @NonNull
    public final FrameLayout fragmentContainer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final RoundFrameLayout swipeable;

    @NonNull
    public static LayoutActivitySwipeableBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutActivitySwipeableBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_activity_swipeable, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutActivitySwipeableBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull RoundFrameLayout roundFrameLayout) {
        this.rootView = linearLayout;
        this.CommunityJoinBar = frameLayout;
        this.activitySwipeableRoot = linearLayout2;
        this.close = imageView;
        this.fragmentContainer = frameLayout2;
        this.swipeable = roundFrameLayout;
    }

    @NonNull
    public static LayoutActivitySwipeableBinding bind(@NonNull View view) {
        int i10 = R.id._community_join_bar;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id._community_join_bar);
        if (frameLayout != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i10 = R.id.close;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.close);
            if (imageView != null) {
                i10 = R.id.fragment_container;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.fragment_container);
                if (frameLayout2 != null) {
                    i10 = R.id.swipeable;
                    RoundFrameLayout roundFrameLayout = (RoundFrameLayout) ViewBindings.a(view, R.id.swipeable);
                    if (roundFrameLayout != null) {
                        return new LayoutActivitySwipeableBinding(linearLayout, frameLayout, linearLayout, imageView, frameLayout2, roundFrameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
