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

/* JADX INFO: loaded from: classes10.dex */
public final class ItemPageTopLayoutBinding implements ViewBinding {

    @NonNull
    public final View curPageIndicator;

    @NonNull
    public final View divider;

    @NonNull
    public final TextView pageItemBadge;

    @NonNull
    public final ImageView pageItemIcon;

    @NonNull
    public final TextView pageItemName;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout topContentContainer;

    @NonNull
    public static ItemPageTopLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemPageTopLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_page_top_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemPageTopLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull View view2, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.curPageIndicator = view;
        this.divider = view2;
        this.pageItemBadge = textView;
        this.pageItemIcon = imageView;
        this.pageItemName = textView2;
        this.topContentContainer = linearLayout2;
    }

    @NonNull
    public static ItemPageTopLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.cur_page_indicator;
        View viewA = ViewBindings.a(view, R.id.cur_page_indicator);
        if (viewA != null) {
            i10 = R.id.divider;
            View viewA2 = ViewBindings.a(view, R.id.divider);
            if (viewA2 != null) {
                i10 = R.id.page_item_badge;
                TextView textView = (TextView) ViewBindings.a(view, R.id.page_item_badge);
                if (textView != null) {
                    i10 = R.id.page_item_icon;
                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.page_item_icon);
                    if (imageView != null) {
                        i10 = R.id.page_item_name;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.page_item_name);
                        if (textView2 != null) {
                            i10 = R.id.top_content_container;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.top_content_container);
                            if (linearLayout != null) {
                                return new ItemPageTopLayoutBinding((LinearLayout) view, viewA, viewA2, textView, imageView, textView2, linearLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
