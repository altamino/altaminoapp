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
import com.narvii.blog.category.BlogCategoryListItem;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class BlogCategoryPickerItemBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView icon;

    @NonNull
    private final BlogCategoryListItem rootView;

    @NonNull
    public final ImageView status;

    @NonNull
    public final FontAwesomeView stub1;

    @NonNull
    public final LinearLayout stub2;

    @NonNull
    public final TextView subTitle;

    @NonNull
    public final TextView title;

    @NonNull
    public static BlogCategoryPickerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public BlogCategoryListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BlogCategoryPickerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.blog_category_picker_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private BlogCategoryPickerItemBinding(@NonNull BlogCategoryListItem blogCategoryListItem, @NonNull ThumbImageView thumbImageView, @NonNull ImageView imageView, @NonNull FontAwesomeView fontAwesomeView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = blogCategoryListItem;
        this.icon = thumbImageView;
        this.status = imageView;
        this.stub1 = fontAwesomeView;
        this.stub2 = linearLayout;
        this.subTitle = textView;
        this.title = textView2;
    }

    @NonNull
    public static BlogCategoryPickerItemBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.icon);
        if (thumbImageView != null) {
            i10 = R.id.status;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.status);
            if (imageView != null) {
                i10 = R.id.stub1;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.stub1);
                if (fontAwesomeView != null) {
                    i10 = R.id.stub2;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.stub2);
                    if (linearLayout != null) {
                        i10 = R.id.subTitle;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.subTitle);
                        if (textView != null) {
                            i10 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView2 != null) {
                                return new BlogCategoryPickerItemBinding((BlogCategoryListItem) view, thumbImageView, imageView, fontAwesomeView, linearLayout, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
