package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.lib.R;
import com.narvii.webview.NVWebView;
import com.narvii.widget.SmoothProgressBar;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes4.dex */
public final class WebviewLayoutBinding implements ViewBinding {

    @NonNull
    public final SmoothProgressBar progressBar;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final NVWebView webview;

    @NonNull
    public final TintButton webviewAction;

    @NonNull
    public final TintButton webviewBack;

    @NonNull
    public final TintButton webviewForward;

    @NonNull
    public final TintButton webviewRefresh;

    @NonNull
    public final SpinningView webviewStop;

    @NonNull
    public final FlexLayout webviewToolbar;

    @NonNull
    public static WebviewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WebviewLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.progress_bar;
        SmoothProgressBar smoothProgressBar = (SmoothProgressBar) ViewBindings.a(view, i10);
        if (smoothProgressBar != null) {
            i10 = R.id.webview;
            NVWebView nVWebView = (NVWebView) ViewBindings.a(view, i10);
            if (nVWebView != null) {
                i10 = R.id.webview_action;
                TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
                if (tintButton != null) {
                    i10 = R.id.webview_back;
                    TintButton tintButton2 = (TintButton) ViewBindings.a(view, i10);
                    if (tintButton2 != null) {
                        i10 = R.id.webview_forward;
                        TintButton tintButton3 = (TintButton) ViewBindings.a(view, i10);
                        if (tintButton3 != null) {
                            i10 = R.id.webview_refresh;
                            TintButton tintButton4 = (TintButton) ViewBindings.a(view, i10);
                            if (tintButton4 != null) {
                                i10 = R.id.webview_stop;
                                SpinningView spinningView = (SpinningView) ViewBindings.a(view, i10);
                                if (spinningView != null) {
                                    i10 = R.id.webview_toolbar;
                                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, i10);
                                    if (flexLayout != null) {
                                        return new WebviewLayoutBinding((LinearLayout) view, smoothProgressBar, nVWebView, tintButton, tintButton2, tintButton3, tintButton4, spinningView, flexLayout);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static WebviewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.webview_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WebviewLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull SmoothProgressBar smoothProgressBar, @NonNull NVWebView nVWebView, @NonNull TintButton tintButton, @NonNull TintButton tintButton2, @NonNull TintButton tintButton3, @NonNull TintButton tintButton4, @NonNull SpinningView spinningView, @NonNull FlexLayout flexLayout) {
        this.rootView = linearLayout;
        this.progressBar = smoothProgressBar;
        this.webview = nVWebView;
        this.webviewAction = tintButton;
        this.webviewBack = tintButton2;
        this.webviewForward = tintButton3;
        this.webviewRefresh = tintButton4;
        this.webviewStop = spinningView;
        this.webviewToolbar = flexLayout;
    }
}
