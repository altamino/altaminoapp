package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AddressView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class DetailAddressItemBinding implements ViewBinding {

    @NonNull
    public final AddressView address;

    @NonNull
    public final TintButton icon;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static DetailAddressItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailAddressItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_address_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailAddressItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull AddressView addressView, @NonNull TintButton tintButton) {
        this.rootView = relativeLayout;
        this.address = addressView;
        this.icon = tintButton;
    }

    @NonNull
    public static DetailAddressItemBinding bind(@NonNull View view) {
        int i10 = R.id.address;
        AddressView addressView = (AddressView) ViewBindings.a(view, R.id.address);
        if (addressView != null) {
            i10 = R.id.icon;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.icon);
            if (tintButton != null) {
                return new DetailAddressItemBinding((RelativeLayout) view, addressView, tintButton);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
