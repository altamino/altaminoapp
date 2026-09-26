package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes4.dex */
public final class WebviewExLayoutBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final LinearLayout webviewBlock;

    @NonNull
    public static WebviewExLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WebviewExLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.webview_ex_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WebviewExLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout) {
        this.rootView = frameLayout;
        this.webviewBlock = linearLayout;
    }

    @NonNull
    public static WebviewExLayoutBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.webview_block);
        if (linearLayout != null) {
            return new WebviewExLayoutBinding((FrameLayout) view, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.webview_block)));
    }
}
