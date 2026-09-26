package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class ComponentTippingThanksViewBinding implements ViewBinding {

    @NonNull
    public final ImageView baseView;

    @NonNull
    public final TextView chatView;

    @NonNull
    public final ImageView heartView;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ComponentTippingThanksViewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.component_tipping_thanks_view, viewGroup);
        return bind(viewGroup);
    }

    private ComponentTippingThanksViewBinding(@NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2) {
        this.rootView = view;
        this.baseView = imageView;
        this.chatView = textView;
        this.heartView = imageView2;
    }

    @NonNull
    public static ComponentTippingThanksViewBinding bind(@NonNull View view) {
        int i10 = R.id.base_view;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.base_view);
        if (imageView != null) {
            i10 = R.id.chat_view;
            TextView textView = (TextView) ViewBindings.a(view, R.id.chat_view);
            if (textView != null) {
                i10 = R.id.heart_view;
                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.heart_view);
                if (imageView2 != null) {
                    return new ComponentTippingThanksViewBinding(view, imageView, textView, imageView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
