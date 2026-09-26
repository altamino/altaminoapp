package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class WalletDialogItemBinding implements ViewBinding {

    @NonNull
    public final View background;

    @NonNull
    public final NVImageView icon;

    @NonNull
    public final AutoSizingTextView price;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static WalletDialogItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WalletDialogItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.wallet_dialog_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WalletDialogItemBinding(@NonNull FlexLayout flexLayout, @NonNull View view, @NonNull NVImageView nVImageView, @NonNull AutoSizingTextView autoSizingTextView, @NonNull TextView textView) {
        this.rootView = flexLayout;
        this.background = view;
        this.icon = nVImageView;
        this.price = autoSizingTextView;
        this.text = textView;
    }

    @NonNull
    public static WalletDialogItemBinding bind(@NonNull View view) {
        int i10 = R.id.background;
        View viewA = ViewBindings.a(view, R.id.background);
        if (viewA != null) {
            i10 = R.id.icon;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.icon);
            if (nVImageView != null) {
                i10 = R.id.price;
                AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.price);
                if (autoSizingTextView != null) {
                    i10 = R.id.text;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                    if (textView != null) {
                        return new WalletDialogItemBinding((FlexLayout) view, viewA, nVImageView, autoSizingTextView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
