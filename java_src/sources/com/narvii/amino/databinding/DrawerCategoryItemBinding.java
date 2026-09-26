package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class DrawerCategoryItemBinding implements ViewBinding {

    @NonNull
    public final RelativeLayout drawerCategoryItem;

    @NonNull
    public final ThumbImageView icon;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final ImageView status;

    @NonNull
    public final TextView subTitle;

    @NonNull
    public final TextView title;

    @NonNull
    public static DrawerCategoryItemBinding bind(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i10 = R.id.icon;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.icon);
        if (thumbImageView != null) {
            i10 = R.id.status;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.status);
            if (imageView != null) {
                i10 = R.id.subTitle;
                TextView textView = (TextView) ViewBindings.a(view, R.id.subTitle);
                if (textView != null) {
                    i10 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView2 != null) {
                        return new DrawerCategoryItemBinding(relativeLayout, relativeLayout, thumbImageView, imageView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DrawerCategoryItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DrawerCategoryItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drawer_category_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DrawerCategoryItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull ThumbImageView thumbImageView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = relativeLayout;
        this.drawerCategoryItem = relativeLayout2;
        this.icon = thumbImageView;
        this.status = imageView;
        this.subTitle = textView;
        this.title = textView2;
    }
}
