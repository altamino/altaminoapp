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

/* JADX INFO: loaded from: classes7.dex */
public final class FragmentNoticeDetailBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView appeal;

    @NonNull
    public final AutoSizingTextView gotIt;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentNoticeDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentNoticeDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_notice_detail, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentNoticeDetailBinding(@NonNull FrameLayout frameLayout, @NonNull AutoSizingTextView autoSizingTextView, @NonNull AutoSizingTextView autoSizingTextView2) {
        this.rootView = frameLayout;
        this.appeal = autoSizingTextView;
        this.gotIt = autoSizingTextView2;
    }

    @NonNull
    public static FragmentNoticeDetailBinding bind(@NonNull View view) {
        int i10 = R.id.appeal;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.appeal);
        if (autoSizingTextView != null) {
            i10 = R.id.got_it;
            AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, R.id.got_it);
            if (autoSizingTextView2 != null) {
                return new FragmentNoticeDetailBinding((FrameLayout) view, autoSizingTextView, autoSizingTextView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
