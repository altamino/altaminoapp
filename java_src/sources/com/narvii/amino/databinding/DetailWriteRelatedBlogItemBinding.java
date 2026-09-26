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
public final class DetailWriteRelatedBlogItemBinding implements ViewBinding {

    @NonNull
    public final ImageView createPlus;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public final TextView writeNewBlog;

    @NonNull
    public static DetailWriteRelatedBlogItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailWriteRelatedBlogItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_write_related_blog_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailWriteRelatedBlogItemBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.createPlus = imageView;
        this.text = textView;
        this.writeNewBlog = textView2;
    }

    @NonNull
    public static DetailWriteRelatedBlogItemBinding bind(@NonNull View view) {
        int i10 = R.id.create_plus;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.create_plus);
        if (imageView != null) {
            i10 = R.id.text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.text);
            if (textView != null) {
                i10 = R.id.write_new_blog;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.write_new_blog);
                if (textView2 != null) {
                    return new DetailWriteRelatedBlogItemBinding((LinearLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
