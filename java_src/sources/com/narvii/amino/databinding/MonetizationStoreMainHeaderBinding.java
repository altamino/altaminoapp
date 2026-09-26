package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoFitTextView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class MonetizationStoreMainHeaderBinding implements ViewBinding {

    @NonNull
    public final ImageView headerBackground;

    @NonNull
    public final NVImageView headerBannerAnimation;

    @NonNull
    public final LinearLayout membershipTintInfoLayout;

    @NonNull
    public final AutoFitTextView membershipTintInfoText;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static MonetizationStoreMainHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MonetizationStoreMainHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.monetization_store_main_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MonetizationStoreMainHeaderBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull NVImageView nVImageView, @NonNull LinearLayout linearLayout2, @NonNull AutoFitTextView autoFitTextView) {
        this.rootView = linearLayout;
        this.headerBackground = imageView;
        this.headerBannerAnimation = nVImageView;
        this.membershipTintInfoLayout = linearLayout2;
        this.membershipTintInfoText = autoFitTextView;
    }

    @NonNull
    public static MonetizationStoreMainHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.header_background;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.header_background);
        if (imageView != null) {
            i10 = R.id.header_banner_animation;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.header_banner_animation);
            if (nVImageView != null) {
                i10 = R.id.membership_tint_info_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.membership_tint_info_layout);
                if (linearLayout != null) {
                    i10 = R.id.membership_tint_info_text;
                    AutoFitTextView autoFitTextView = (AutoFitTextView) ViewBindings.a(view, R.id.membership_tint_info_text);
                    if (autoFitTextView != null) {
                        return new MonetizationStoreMainHeaderBinding((LinearLayout) view, imageView, nVImageView, linearLayout, autoFitTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
