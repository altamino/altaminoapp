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
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class BusinessWalletCategoryLabelViewBinding implements ViewBinding {

    @NonNull
    public final TextView labelContent;

    @NonNull
    public final ImageView labelIcon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static BusinessWalletCategoryLabelViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BusinessWalletCategoryLabelViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.business_wallet_category_label_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private BusinessWalletCategoryLabelViewBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.labelContent = textView;
        this.labelIcon = imageView;
    }

    @NonNull
    public static BusinessWalletCategoryLabelViewBinding bind(@NonNull View view) {
        int i10 = R.id.label_content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.label_content);
        if (textView != null) {
            i10 = R.id.label_icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.label_icon);
            if (imageView != null) {
                return new BusinessWalletCategoryLabelViewBinding((LinearLayout) view, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
