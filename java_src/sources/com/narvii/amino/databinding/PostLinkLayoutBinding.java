package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.EditTextIMG;

/* JADX INFO: loaded from: classes6.dex */
public final class PostLinkLayoutBinding implements ViewBinding {

    @NonNull
    public final EditTextIMG content;

    @NonNull
    public final LinkPreviewLayoutBinding linkPreviewLayout;

    @NonNull
    public final PostEmbedImageHintSmallBinding postEmbedImageHint;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final EditText title;

    @NonNull
    public static PostLinkLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostLinkLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_link_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostLinkLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull EditTextIMG editTextIMG, @NonNull LinkPreviewLayoutBinding linkPreviewLayoutBinding, @NonNull PostEmbedImageHintSmallBinding postEmbedImageHintSmallBinding, @NonNull EditText editText) {
        this.rootView = linearLayout;
        this.content = editTextIMG;
        this.linkPreviewLayout = linkPreviewLayoutBinding;
        this.postEmbedImageHint = postEmbedImageHintSmallBinding;
        this.title = editText;
    }

    @NonNull
    public static PostLinkLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        EditTextIMG editTextIMG = (EditTextIMG) ViewBindings.a(view, R.id.content);
        if (editTextIMG != null) {
            i10 = R.id.link_preview_layout;
            View viewA = ViewBindings.a(view, R.id.link_preview_layout);
            if (viewA != null) {
                LinkPreviewLayoutBinding linkPreviewLayoutBindingBind = LinkPreviewLayoutBinding.bind(viewA);
                i10 = R.id.post_embed_image_hint;
                View viewA2 = ViewBindings.a(view, R.id.post_embed_image_hint);
                if (viewA2 != null) {
                    PostEmbedImageHintSmallBinding postEmbedImageHintSmallBindingBind = PostEmbedImageHintSmallBinding.bind(viewA2);
                    i10 = R.id.title;
                    EditText editText = (EditText) ViewBindings.a(view, R.id.title);
                    if (editText != null) {
                        return new PostLinkLayoutBinding((LinearLayout) view, editTextIMG, linkPreviewLayoutBindingBind, postEmbedImageHintSmallBindingBind, editText);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
