package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.util.statusbar.StatusBarLayout;

/* JADX INFO: loaded from: classes9.dex */
public final class StatusLayoutBinding implements ViewBinding {

    @NonNull
    public final View fakeStatus;

    @NonNull
    private final StatusBarLayout rootView;

    @NonNull
    public static StatusLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public StatusBarLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StatusLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.fake_status;
        View viewA = ViewBindings.a(view, i10);
        if (viewA != null) {
            return new StatusLayoutBinding((StatusBarLayout) view, viewA);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static StatusLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.status_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StatusLayoutBinding(@NonNull StatusBarLayout statusBarLayout, @NonNull View view) {
        this.rootView = statusBarLayout;
        this.fakeStatus = view;
    }
}
