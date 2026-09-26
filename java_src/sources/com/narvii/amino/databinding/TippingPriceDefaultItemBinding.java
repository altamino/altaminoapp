package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class TippingPriceDefaultItemBinding implements ViewBinding {

    @NonNull
    public final EditText customTippingPriceInput;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView tippingHintCustom;

    @NonNull
    public final LinearLayout tippingHintDefault;

    @NonNull
    public final NVImageView tippingPriceIcon;

    @NonNull
    public final LinearLayout tippingPriceItem;

    @NonNull
    public final TextView tippingPriceText;

    @NonNull
    public static TippingPriceDefaultItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TippingPriceDefaultItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.tipping_price_default_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private TippingPriceDefaultItemBinding(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull NVImageView nVImageView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.customTippingPriceInput = editText;
        this.tippingHintCustom = textView;
        this.tippingHintDefault = linearLayout2;
        this.tippingPriceIcon = nVImageView;
        this.tippingPriceItem = linearLayout3;
        this.tippingPriceText = textView2;
    }

    @NonNull
    public static TippingPriceDefaultItemBinding bind(@NonNull View view) {
        int i10 = R.id.custom_tipping_price_input;
        EditText editText = (EditText) ViewBindings.a(view, R.id.custom_tipping_price_input);
        if (editText != null) {
            i10 = R.id.tipping_hint_custom;
            TextView textView = (TextView) ViewBindings.a(view, R.id.tipping_hint_custom);
            if (textView != null) {
                i10 = R.id.tipping_hint_default;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.tipping_hint_default);
                if (linearLayout != null) {
                    i10 = R.id.tipping_price_icon;
                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.tipping_price_icon);
                    if (nVImageView != null) {
                        LinearLayout linearLayout2 = (LinearLayout) view;
                        i10 = R.id.tipping_price_text;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.tipping_price_text);
                        if (textView2 != null) {
                            return new TippingPriceDefaultItemBinding(linearLayout2, editText, textView, linearLayout, nVImageView, linearLayout2, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
