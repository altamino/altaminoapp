package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemPropertyTextBinding implements ViewBinding {

    @NonNull
    public final TextView itemPropertyTitle;

    @NonNull
    public final TextView itemPropertyValue;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemPropertyTextBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.item_property_text, viewGroup);
        return bind(viewGroup);
    }

    private ItemPropertyTextBinding(@NonNull View view, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = view;
        this.itemPropertyTitle = textView;
        this.itemPropertyValue = textView2;
    }

    @NonNull
    public static ItemPropertyTextBinding bind(@NonNull View view) {
        int i10 = R.id.item_property_title;
        TextView textView = (TextView) ViewBindings.a(view, R.id.item_property_title);
        if (textView != null) {
            i10 = R.id.item_property_value;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.item_property_value);
            if (textView2 != null) {
                return new ItemPropertyTextBinding(view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
