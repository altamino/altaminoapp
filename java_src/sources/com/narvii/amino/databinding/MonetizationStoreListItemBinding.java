package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
public final class MonetizationStoreListItemBinding implements ViewBinding {

    @NonNull
    public final TextView New;

    @NonNull
    public final View disabled;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final ImageView storeItemDiscountAminoPlusLabel;

    @NonNull
    public final TextView storeItemFreeLabel;

    @NonNull
    public final FrameLayout storeItemIsSelected;

    @NonNull
    public final ImageView storeItemMembershipLabel;

    @NonNull
    public final TextView storeItemName;

    @NonNull
    public final ImageView storeItemOwnedLabel;

    @NonNull
    public final NVImageView storeItemPreview;

    @NonNull
    public final LinearLayout storeItemPriceLabel;

    @NonNull
    public final TextView storeItemPriceLabelMainText;

    @NonNull
    public static MonetizationStoreListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MonetizationStoreListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.monetization_store_list_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MonetizationStoreListItemBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView2, @NonNull TextView textView3, @NonNull ImageView imageView3, @NonNull NVImageView nVImageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.New = textView;
        this.disabled = view;
        this.storeItemDiscountAminoPlusLabel = imageView;
        this.storeItemFreeLabel = textView2;
        this.storeItemIsSelected = frameLayout;
        this.storeItemMembershipLabel = imageView2;
        this.storeItemName = textView3;
        this.storeItemOwnedLabel = imageView3;
        this.storeItemPreview = nVImageView;
        this.storeItemPriceLabel = linearLayout2;
        this.storeItemPriceLabelMainText = textView4;
    }

    @NonNull
    public static MonetizationStoreListItemBinding bind(@NonNull View view) {
        int i10 = R.id._new;
        TextView textView = (TextView) ViewBindings.a(view, R.id._new);
        if (textView != null) {
            i10 = R.id.disabled;
            View viewA = ViewBindings.a(view, R.id.disabled);
            if (viewA != null) {
                i10 = R.id.store_item_discount_amino_plus_label;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.store_item_discount_amino_plus_label);
                if (imageView != null) {
                    i10 = R.id.store_item_free_label;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.store_item_free_label);
                    if (textView2 != null) {
                        i10 = R.id.store_item_is_selected;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.store_item_is_selected);
                        if (frameLayout != null) {
                            i10 = R.id.store_item_membership_label;
                            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.store_item_membership_label);
                            if (imageView2 != null) {
                                i10 = R.id.store_item_name;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.store_item_name);
                                if (textView3 != null) {
                                    i10 = R.id.store_item_owned_label;
                                    ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.store_item_owned_label);
                                    if (imageView3 != null) {
                                        i10 = R.id.store_item_preview;
                                        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.store_item_preview);
                                        if (nVImageView != null) {
                                            i10 = R.id.store_item_price_label;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.store_item_price_label);
                                            if (linearLayout != null) {
                                                i10 = R.id.store_item_price_label_main_text;
                                                TextView textView4 = (TextView) ViewBindings.a(view, R.id.store_item_price_label_main_text);
                                                if (textView4 != null) {
                                                    return new MonetizationStoreListItemBinding((LinearLayout) view, textView, viewA, imageView, textView2, frameLayout, imageView2, textView3, imageView3, nVImageView, linearLayout, textView4);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
