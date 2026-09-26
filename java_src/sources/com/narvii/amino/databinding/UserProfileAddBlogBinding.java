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

/* JADX INFO: loaded from: classes6.dex */
public final class UserProfileAddBlogBinding implements ViewBinding {

    @NonNull
    public final ImageView createPlus;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView writeNewBlog;

    @NonNull
    public static UserProfileAddBlogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserProfileAddBlogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_profile_add_blog, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserProfileAddBlogBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.createPlus = imageView;
        this.writeNewBlog = textView;
    }

    @NonNull
    public static UserProfileAddBlogBinding bind(@NonNull View view) {
        int i10 = R.id.create_plus;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.create_plus);
        if (imageView != null) {
            i10 = R.id.write_new_blog;
            TextView textView = (TextView) ViewBindings.a(view, R.id.write_new_blog);
            if (textView != null) {
                return new UserProfileAddBlogBinding((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
