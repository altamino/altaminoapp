package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.link.viewer.LinkSnippetImageLayout;
import com.narvii.link.viewer.LinkSnippetImageView;

/* JADX INFO: loaded from: classes4.dex */
public final class ChatLinkSnippetLayoutBinding implements ViewBinding {

    @NonNull
    public final LinkSnippetImageLayout chatImageLayout;

    @NonNull
    public final LinkSnippetImageView image;

    @NonNull
    public final ImageView placeholder;

    @NonNull
    private final LinkSnippetImageLayout rootView;

    @NonNull
    public static ChatLinkSnippetLayoutBinding bind(@NonNull View view) {
        LinkSnippetImageLayout linkSnippetImageLayout = (LinkSnippetImageLayout) view;
        int i10 = R.id.image;
        LinkSnippetImageView linkSnippetImageView = (LinkSnippetImageView) ViewBindings.a(view, R.id.image);
        if (linkSnippetImageView != null) {
            i10 = R.id.placeholder;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.placeholder);
            if (imageView != null) {
                return new ChatLinkSnippetLayoutBinding(linkSnippetImageLayout, linkSnippetImageLayout, linkSnippetImageView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ChatLinkSnippetLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinkSnippetImageLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatLinkSnippetLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_link_snippet_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatLinkSnippetLayoutBinding(@NonNull LinkSnippetImageLayout linkSnippetImageLayout, @NonNull LinkSnippetImageLayout linkSnippetImageLayout2, @NonNull LinkSnippetImageView linkSnippetImageView, @NonNull ImageView imageView) {
        this.rootView = linkSnippetImageLayout;
        this.chatImageLayout = linkSnippetImageLayout2;
        this.image = linkSnippetImageView;
        this.placeholder = imageView;
    }
}
