package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.EditTextIMG;

/* JADX INFO: loaded from: classes11.dex */
public final class PostBlogLayoutBinding implements ViewBinding {

    @NonNull
    public final EditTextIMG content;

    @NonNull
    public final PostEmbedImageHintSmallBinding postEmbedImageHint;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView stub1;

    @NonNull
    public final EditText title;

    @NonNull
    public static PostBlogLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostBlogLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_blog_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostBlogLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull EditTextIMG editTextIMG, @NonNull PostEmbedImageHintSmallBinding postEmbedImageHintSmallBinding, @NonNull TextView textView, @NonNull EditText editText) {
        this.rootView = linearLayout;
        this.content = editTextIMG;
        this.postEmbedImageHint = postEmbedImageHintSmallBinding;
        this.stub1 = textView;
        this.title = editText;
    }

    @NonNull
    public static PostBlogLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        EditTextIMG editTextIMG = (EditTextIMG) ViewBindings.a(view, R.id.content);
        if (editTextIMG != null) {
            i10 = R.id.post_embed_image_hint;
            View viewA = ViewBindings.a(view, R.id.post_embed_image_hint);
            if (viewA != null) {
                PostEmbedImageHintSmallBinding postEmbedImageHintSmallBindingBind = PostEmbedImageHintSmallBinding.bind(viewA);
                i10 = R.id.stub1;
                TextView textView = (TextView) ViewBindings.a(view, R.id.stub1);
                if (textView != null) {
                    i10 = R.id.title;
                    EditText editText = (EditText) ViewBindings.a(view, R.id.title);
                    if (editText != null) {
                        return new PostBlogLayoutBinding((LinearLayout) view, editTextIMG, postEmbedImageHintSmallBindingBind, textView, editText);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
