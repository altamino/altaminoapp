package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes5.dex */
public final class WaitListAcceptViewBinding implements ViewBinding {

    @NonNull
    public final TextView accept;

    @NonNull
    public final TextView cancel;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FrameLayout waitListAcceptContainer;

    @NonNull
    public static WaitListAcceptViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WaitListAcceptViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.wait_list_accept_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WaitListAcceptViewBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SpinningView spinningView, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.accept = textView;
        this.cancel = textView2;
        this.progress = spinningView;
        this.waitListAcceptContainer = frameLayout2;
    }

    @NonNull
    public static WaitListAcceptViewBinding bind(@NonNull View view) {
        int i10 = R.id.accept;
        TextView textView = (TextView) ViewBindings.a(view, R.id.accept);
        if (textView != null) {
            i10 = R.id.cancel;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.cancel);
            if (textView2 != null) {
                i10 = R.id.progress;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.progress);
                if (spinningView != null) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    return new WaitListAcceptViewBinding(frameLayout, textView, textView2, spinningView, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
