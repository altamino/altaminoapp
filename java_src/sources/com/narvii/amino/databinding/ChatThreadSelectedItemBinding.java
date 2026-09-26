package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class ChatThreadSelectedItemBinding implements ViewBinding {

    @NonNull
    public final FrameLayout chatContainer;

    @NonNull
    public final View divideLine;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final ImageView select;

    @NonNull
    public static ChatThreadSelectedItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatThreadSelectedItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_thread_selected_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatThreadSelectedItemBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull View view, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.chatContainer = frameLayout;
        this.divideLine = view;
        this.select = imageView;
    }

    @NonNull
    public static ChatThreadSelectedItemBinding bind(@NonNull View view) {
        int i10 = R.id.chat_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.chat_container);
        if (frameLayout != null) {
            i10 = R.id.divide_line;
            View viewA = ViewBindings.a(view, R.id.divide_line);
            if (viewA != null) {
                i10 = R.id.select;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.select);
                if (imageView != null) {
                    return new ChatThreadSelectedItemBinding((LinearLayout) view, frameLayout, viewA, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
