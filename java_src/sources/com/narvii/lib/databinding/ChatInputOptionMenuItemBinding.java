package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.chat.video.view.CheckableImageView;
import com.narvii.lib.R;
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes9.dex */
public final class ChatInputOptionMenuItemBinding implements ViewBinding {

    @NonNull
    public final CheckableImageView icon;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final AutoSizingTextView title;

    @NonNull
    public static ChatInputOptionMenuItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatInputOptionMenuItemBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        CheckableImageView checkableImageView = (CheckableImageView) ViewBindings.a(view, i10);
        if (checkableImageView != null) {
            i10 = R.id.title;
            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, i10);
            if (autoSizingTextView != null) {
                return new ChatInputOptionMenuItemBinding((FrameLayout) view, checkableImageView, autoSizingTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ChatInputOptionMenuItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_input_option_menu_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatInputOptionMenuItemBinding(@NonNull FrameLayout frameLayout, @NonNull CheckableImageView checkableImageView, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = frameLayout;
        this.icon = checkableImageView;
        this.title = autoSizingTextView;
    }
}
