package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class LiveIndicatorPollBinding implements ViewBinding {

    @NonNull
    public final View cell1;

    @NonNull
    public final View cell2;

    @NonNull
    public final View cell3;

    @NonNull
    public final View pollingBase;

    @NonNull
    public final ImageView pollingCheck;

    @NonNull
    public final FrameLayout pollingContainer;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static LiveIndicatorPollBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveIndicatorPollBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_indicator_poll, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveIndicatorPollBinding(@NonNull FlexLayout flexLayout, @NonNull View view, @NonNull View view2, @NonNull View view3, @NonNull View view4, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout) {
        this.rootView = flexLayout;
        this.cell1 = view;
        this.cell2 = view2;
        this.cell3 = view3;
        this.pollingBase = view4;
        this.pollingCheck = imageView;
        this.pollingContainer = frameLayout;
    }

    @NonNull
    public static LiveIndicatorPollBinding bind(@NonNull View view) {
        int i10 = R.id.cell1;
        View viewA = ViewBindings.a(view, R.id.cell1);
        if (viewA != null) {
            i10 = R.id.cell2;
            View viewA2 = ViewBindings.a(view, R.id.cell2);
            if (viewA2 != null) {
                i10 = R.id.cell3;
                View viewA3 = ViewBindings.a(view, R.id.cell3);
                if (viewA3 != null) {
                    i10 = R.id.polling_base;
                    View viewA4 = ViewBindings.a(view, R.id.polling_base);
                    if (viewA4 != null) {
                        i10 = R.id.polling_check;
                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.polling_check);
                        if (imageView != null) {
                            i10 = R.id.polling_container;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.polling_container);
                            if (frameLayout != null) {
                                return new LiveIndicatorPollBinding((FlexLayout) view, viewA, viewA2, viewA3, viewA4, imageView, frameLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
