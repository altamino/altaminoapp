package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatMultiAvatars1Binding implements ViewBinding {

    @NonNull
    public final ThumbImageView image1;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatMultiAvatars1Binding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.chat_multi_avatars_1, viewGroup);
        return bind(viewGroup);
    }

    private ChatMultiAvatars1Binding(@NonNull View view, @NonNull ThumbImageView thumbImageView) {
        this.rootView = view;
        this.image1 = thumbImageView;
    }

    @NonNull
    public static ChatMultiAvatars1Binding bind(@NonNull View view) {
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image1);
        if (thumbImageView != null) {
            return new ChatMultiAvatars1Binding(view, thumbImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.image1)));
    }
}
