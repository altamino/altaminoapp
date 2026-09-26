package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class LocationPickerLayoutBinding implements ViewBinding {

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final LinearLayout stub1;

    @NonNull
    public final View stub2;

    @NonNull
    public final WebView webview;

    @NonNull
    public static LocationPickerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LocationPickerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.location_picker_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LocationPickerLayoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull View view, @NonNull WebView webView) {
        this.rootView = relativeLayout;
        this.stub1 = linearLayout;
        this.stub2 = view;
        this.webview = webView;
    }

    @NonNull
    public static LocationPickerLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.stub1;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.stub1);
        if (linearLayout != null) {
            i10 = R.id.stub2;
            View viewA = ViewBindings.a(view, R.id.stub2);
            if (viewA != null) {
                i10 = R.id.webview;
                WebView webView = (WebView) ViewBindings.a(view, R.id.webview);
                if (webView != null) {
                    return new LocationPickerLayoutBinding((RelativeLayout) view, linearLayout, viewA, webView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
