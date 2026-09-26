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

/* JADX INFO: loaded from: classes2.dex */
public final class DetailPaidContentHeaderItemBinding implements ViewBinding {

    @NonNull
    public final LinearLayout cellLayout;

    @NonNull
    public final ImageView iconAd;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DetailPaidContentHeaderItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailPaidContentHeaderItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_paid_content_header_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailPaidContentHeaderItemBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.cellLayout = linearLayout2;
        this.iconAd = imageView;
    }

    @NonNull
    public static DetailPaidContentHeaderItemBinding bind(@NonNull View view) {
        int i10 = R.id.cell_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.cell_layout);
        if (linearLayout != null) {
            i10 = R.id.icon_ad;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon_ad);
            if (imageView != null) {
                return new DetailPaidContentHeaderItemBinding((LinearLayout) view, linearLayout, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
