package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class ExplorerPublicChatChildBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView explorerPublicChatBg;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ExplorerPublicChatChildBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.explorer_public_chat_child, viewGroup);
        return bind(viewGroup);
    }

    private ExplorerPublicChatChildBinding(@NonNull View view, @NonNull ThumbImageView thumbImageView) {
        this.rootView = view;
        this.explorerPublicChatBg = thumbImageView;
    }

    @NonNull
    public static ExplorerPublicChatChildBinding bind(@NonNull View view) {
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.explorer_public_chat_bg);
        if (thumbImageView != null) {
            return new ExplorerPublicChatChildBinding(view, thumbImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.explorer_public_chat_bg)));
    }
}
