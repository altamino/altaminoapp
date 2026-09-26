package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class LayoutLoginSimpleForegroundBinding implements ViewBinding {

    @NonNull
    public final FlexLayout backgroundLayout;

    @NonNull
    public final ImageView icForeground;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static LayoutLoginSimpleForegroundBinding bind(@NonNull View view) {
        FlexLayout flexLayout = (FlexLayout) view;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.ic_foreground);
        if (imageView != null) {
            return new LayoutLoginSimpleForegroundBinding(flexLayout, flexLayout, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.ic_foreground)));
    }

    @NonNull
    public static LayoutLoginSimpleForegroundBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutLoginSimpleForegroundBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_login_simple_foreground, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutLoginSimpleForegroundBinding(@NonNull FlexLayout flexLayout, @NonNull FlexLayout flexLayout2, @NonNull ImageView imageView) {
        this.rootView = flexLayout;
        this.backgroundLayout = flexLayout2;
        this.icForeground = imageView;
    }
}
