package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemBubbleBaseBinding implements ViewBinding {

    @NonNull
    public final LinearLayout bubbleContent;

    @NonNull
    public final NVImageView bubblePreview;

    @NonNull
    public final ImageView customBubble;

    @NonNull
    public final LinearLayout customContainer;

    @NonNull
    public final TextView customHint;

    @NonNull
    public final StoreItemNameView itemName;

    @NonNull
    private final View rootView;

    @NonNull
    public final TextView subtitle;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemBubbleBaseBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.item_bubble_base, viewGroup);
        return bind(viewGroup);
    }

    private ItemBubbleBaseBinding(@NonNull View view, @NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull StoreItemNameView storeItemNameView, @NonNull TextView textView2) {
        this.rootView = view;
        this.bubbleContent = linearLayout;
        this.bubblePreview = nVImageView;
        this.customBubble = imageView;
        this.customContainer = linearLayout2;
        this.customHint = textView;
        this.itemName = storeItemNameView;
        this.subtitle = textView2;
    }

    @NonNull
    public static ItemBubbleBaseBinding bind(@NonNull View view) {
        int i10 = R.id.bubble_content;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.bubble_content);
        if (linearLayout != null) {
            i10 = R.id.bubble_preview;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.bubble_preview);
            if (nVImageView != null) {
                i10 = R.id.custom_bubble;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.custom_bubble);
                if (imageView != null) {
                    i10 = R.id.custom_container;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.custom_container);
                    if (linearLayout2 != null) {
                        i10 = R.id.custom_hint;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.custom_hint);
                        if (textView != null) {
                            i10 = R.id.item_name;
                            StoreItemNameView storeItemNameView = (StoreItemNameView) ViewBindings.a(view, R.id.item_name);
                            if (storeItemNameView != null) {
                                i10 = R.id.subtitle;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.subtitle);
                                if (textView2 != null) {
                                    return new ItemBubbleBaseBinding(view, linearLayout, nVImageView, imageView, linearLayout2, textView, storeItemNameView, textView2);
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
