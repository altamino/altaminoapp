package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeRatingBar;

/* JADX INFO: loaded from: classes8.dex */
public final class ItemPropertyRatingStarBinding implements ViewBinding {

    @NonNull
    public final TextView itemPropertyTitle;

    @NonNull
    public final FontAwesomeRatingBar itemPropertyValue;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemPropertyRatingStarBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.item_property_rating_star, viewGroup);
        return bind(viewGroup);
    }

    private ItemPropertyRatingStarBinding(@NonNull View view, @NonNull TextView textView, @NonNull FontAwesomeRatingBar fontAwesomeRatingBar) {
        this.rootView = view;
        this.itemPropertyTitle = textView;
        this.itemPropertyValue = fontAwesomeRatingBar;
    }

    @NonNull
    public static ItemPropertyRatingStarBinding bind(@NonNull View view) {
        int i10 = R.id.item_property_title;
        TextView textView = (TextView) ViewBindings.a(view, R.id.item_property_title);
        if (textView != null) {
            i10 = R.id.item_property_value;
            FontAwesomeRatingBar fontAwesomeRatingBar = (FontAwesomeRatingBar) ViewBindings.a(view, R.id.item_property_value);
            if (fontAwesomeRatingBar != null) {
                return new ItemPropertyRatingStarBinding(view, textView, fontAwesomeRatingBar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
