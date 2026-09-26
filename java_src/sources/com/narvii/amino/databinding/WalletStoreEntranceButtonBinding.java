package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class WalletStoreEntranceButtonBinding implements ViewBinding {

    @NonNull
    public final LinearLayout moreStoreItem;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static WalletStoreEntranceButtonBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WalletStoreEntranceButtonBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.wallet_store_entrance_button, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WalletStoreEntranceButtonBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout) {
        this.rootView = frameLayout;
        this.moreStoreItem = linearLayout;
    }

    @NonNull
    public static WalletStoreEntranceButtonBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.more_store_item);
        if (linearLayout != null) {
            return new WalletStoreEntranceButtonBinding((FrameLayout) view, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.more_store_item)));
    }
}
