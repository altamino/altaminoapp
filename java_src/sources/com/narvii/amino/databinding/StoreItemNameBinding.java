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

/* JADX INFO: loaded from: classes9.dex */
public final class StoreItemNameBinding implements ViewBinding {

    @NonNull
    public final TextView New;

    @NonNull
    public final ImageView aminoPlusBadge;

    @NonNull
    public final TextView collectionName;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StoreItemNameBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.store_item_name, viewGroup);
        return bind(viewGroup);
    }

    private StoreItemNameBinding(@NonNull View view, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.rootView = view;
        this.New = textView;
        this.aminoPlusBadge = imageView;
        this.collectionName = textView2;
    }

    @NonNull
    public static StoreItemNameBinding bind(@NonNull View view) {
        int i10 = R.id._new;
        TextView textView = (TextView) ViewBindings.a(view, R.id._new);
        if (textView != null) {
            i10 = R.id.amino_plus_badge;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.amino_plus_badge);
            if (imageView != null) {
                i10 = R.id.collection_name;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.collection_name);
                if (textView2 != null) {
                    return new StoreItemNameBinding(view, textView, imageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
