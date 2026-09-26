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
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class SharedStickerPackStoreItemLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView New;

    @NonNull
    public final ImageView aminoPlusBadge;

    @NonNull
    public final View disabled;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView storeItemName;

    @NonNull
    public final NVImageView storeItemPreview;

    @NonNull
    public final TextView usedTimes;

    @NonNull
    public static SharedStickerPackStoreItemLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SharedStickerPackStoreItemLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.shared_sticker_pack_store_item_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SharedStickerPackStoreItemLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull View view, @NonNull TextView textView2, @NonNull NVImageView nVImageView, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.New = textView;
        this.aminoPlusBadge = imageView;
        this.disabled = view;
        this.storeItemName = textView2;
        this.storeItemPreview = nVImageView;
        this.usedTimes = textView3;
    }

    @NonNull
    public static SharedStickerPackStoreItemLayoutBinding bind(@NonNull View view) {
        int i10 = R.id._new;
        TextView textView = (TextView) ViewBindings.a(view, R.id._new);
        if (textView != null) {
            i10 = R.id.amino_plus_badge;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.amino_plus_badge);
            if (imageView != null) {
                i10 = R.id.disabled;
                View viewA = ViewBindings.a(view, R.id.disabled);
                if (viewA != null) {
                    i10 = R.id.store_item_name;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.store_item_name);
                    if (textView2 != null) {
                        i10 = R.id.store_item_preview;
                        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.store_item_preview);
                        if (nVImageView != null) {
                            i10 = R.id.used_times;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.used_times);
                            if (textView3 != null) {
                                return new SharedStickerPackStoreItemLayoutBinding((LinearLayout) view, textView, imageView, viewA, textView2, nVImageView, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
