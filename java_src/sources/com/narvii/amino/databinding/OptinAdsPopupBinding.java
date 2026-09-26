package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.PopButton;
import com.narvii.widget.PushButton;
import com.narvii.widget.StatusBarPlaceHolder;

/* JADX INFO: loaded from: classes9.dex */
public final class OptinAdsPopupBinding implements ViewBinding {

    @NonNull
    public final TextView adsSettings;

    @NonNull
    public final TextView adsText;

    @NonNull
    public final TextView adsTitle;

    @NonNull
    public final PushButton buttonOk;

    @NonNull
    public final PopButton close;

    @NonNull
    public final FlexLayout container;

    @NonNull
    public final LinearLayout containerLl;

    @NonNull
    public final ImageView icon;

    @NonNull
    public final FlexLayout root;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final StatusBarPlaceHolder status;

    @NonNull
    public static OptinAdsPopupBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static OptinAdsPopupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.optin_ads_popup, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private OptinAdsPopupBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull PushButton pushButton, @NonNull PopButton popButton, @NonNull FlexLayout flexLayout2, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull FlexLayout flexLayout3, @NonNull StatusBarPlaceHolder statusBarPlaceHolder) {
        this.rootView = flexLayout;
        this.adsSettings = textView;
        this.adsText = textView2;
        this.adsTitle = textView3;
        this.buttonOk = pushButton;
        this.close = popButton;
        this.container = flexLayout2;
        this.containerLl = linearLayout;
        this.icon = imageView;
        this.root = flexLayout3;
        this.status = statusBarPlaceHolder;
    }

    @NonNull
    public static OptinAdsPopupBinding bind(@NonNull View view) {
        int i10 = R.id.ads_settings;
        TextView textView = (TextView) ViewBindings.a(view, R.id.ads_settings);
        if (textView != null) {
            i10 = R.id.ads_text;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.ads_text);
            if (textView2 != null) {
                i10 = R.id.ads_title;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.ads_title);
                if (textView3 != null) {
                    i10 = R.id.button_ok;
                    PushButton pushButton = (PushButton) ViewBindings.a(view, R.id.button_ok);
                    if (pushButton != null) {
                        i10 = R.id.close;
                        PopButton popButton = (PopButton) ViewBindings.a(view, R.id.close);
                        if (popButton != null) {
                            i10 = R.id.container;
                            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.container);
                            if (flexLayout != null) {
                                i10 = R.id.container_ll;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.container_ll);
                                if (linearLayout != null) {
                                    i10 = R.id.icon;
                                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
                                    if (imageView != null) {
                                        FlexLayout flexLayout2 = (FlexLayout) view;
                                        i10 = R.id.status;
                                        StatusBarPlaceHolder statusBarPlaceHolder = (StatusBarPlaceHolder) ViewBindings.a(view, R.id.status);
                                        if (statusBarPlaceHolder != null) {
                                            return new OptinAdsPopupBinding(flexLayout2, textView, textView2, textView3, pushButton, popButton, flexLayout, linearLayout, imageView, flexLayout2, statusBarPlaceHolder);
                                        }
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
}
