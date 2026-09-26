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

/* JADX INFO: loaded from: classes11.dex */
public final class ItemPageSecondLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView pageItemBadge;

    @NonNull
    public final ImageView pageItemIcon;

    @NonNull
    public final TextView pageItemName;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemPageSecondLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemPageSecondLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_page_second_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemPageSecondLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.pageItemBadge = textView;
        this.pageItemIcon = imageView;
        this.pageItemName = textView2;
    }

    @NonNull
    public static ItemPageSecondLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.page_item_badge;
        TextView textView = (TextView) ViewBindings.a(view, R.id.page_item_badge);
        if (textView != null) {
            i10 = R.id.page_item_icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.page_item_icon);
            if (imageView != null) {
                i10 = R.id.page_item_name;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.page_item_name);
                if (textView2 != null) {
                    return new ItemPageSecondLayoutBinding((LinearLayout) view, textView, imageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
