package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class PurchaseConfirmButtonBinding implements ViewBinding {

    @NonNull
    public final ImageView confirmButtonCoin;

    @NonNull
    public final FrameLayout confirmButtonContainer;

    @NonNull
    public final ImageView confirmButtonLoading;

    @NonNull
    public final TextView confirmButtonText;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PurchaseConfirmButtonBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.purchase_confirm_button, viewGroup);
        return bind(viewGroup);
    }

    private PurchaseConfirmButtonBinding(@NonNull View view, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.rootView = view;
        this.confirmButtonCoin = imageView;
        this.confirmButtonContainer = frameLayout;
        this.confirmButtonLoading = imageView2;
        this.confirmButtonText = textView;
    }

    @NonNull
    public static PurchaseConfirmButtonBinding bind(@NonNull View view) {
        int i10 = R.id.confirm_button_coin;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.confirm_button_coin);
        if (imageView != null) {
            i10 = R.id.confirm_button_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.confirm_button_container);
            if (frameLayout != null) {
                i10 = R.id.confirm_button_loading;
                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.confirm_button_loading);
                if (imageView2 != null) {
                    i10 = R.id.confirm_button_text;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.confirm_button_text);
                    if (textView != null) {
                        return new PurchaseConfirmButtonBinding(view, imageView, frameLayout, imageView2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
