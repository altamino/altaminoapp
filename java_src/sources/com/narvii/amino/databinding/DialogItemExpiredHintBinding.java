package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class DialogItemExpiredHintBinding implements ViewBinding {

    @NonNull
    public final TintButton close;

    @NonNull
    public final TextView itemExpiredDesc;

    @NonNull
    public final StoreItemNameView itemName;

    @NonNull
    public final NVImageView itemPreview;

    @NonNull
    public final TextView itemViewInStore;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView unavailable;

    @NonNull
    public static DialogItemExpiredHintBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogItemExpiredHintBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_item_expired_hint, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogItemExpiredHintBinding(@NonNull FrameLayout frameLayout, @NonNull TintButton tintButton, @NonNull TextView textView, @NonNull StoreItemNameView storeItemNameView, @NonNull NVImageView nVImageView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.close = tintButton;
        this.itemExpiredDesc = textView;
        this.itemName = storeItemNameView;
        this.itemPreview = nVImageView;
        this.itemViewInStore = textView2;
        this.unavailable = textView3;
    }

    @NonNull
    public static DialogItemExpiredHintBinding bind(@NonNull View view) {
        int i10 = R.id.close;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.close);
        if (tintButton != null) {
            i10 = R.id.item_expired_desc;
            TextView textView = (TextView) ViewBindings.a(view, R.id.item_expired_desc);
            if (textView != null) {
                i10 = R.id.item_name;
                StoreItemNameView storeItemNameView = (StoreItemNameView) ViewBindings.a(view, R.id.item_name);
                if (storeItemNameView != null) {
                    i10 = R.id.item_preview;
                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.item_preview);
                    if (nVImageView != null) {
                        i10 = R.id.item_view_in_store;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.item_view_in_store);
                        if (textView2 != null) {
                            i10 = R.id.unavailable;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.unavailable);
                            if (textView3 != null) {
                                return new DialogItemExpiredHintBinding((FrameLayout) view, tintButton, textView, storeItemNameView, nVImageView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
