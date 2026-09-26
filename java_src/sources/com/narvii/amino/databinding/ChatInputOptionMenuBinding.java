package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.input.ChatInputOptionMenu;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatInputOptionMenuBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView arrow;

    @NonNull
    public final GridLayout chatInputOptionMenuContainer;

    @NonNull
    private final ChatInputOptionMenu rootView;

    @NonNull
    public static ChatInputOptionMenuBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ChatInputOptionMenu getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatInputOptionMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_input_option_menu, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatInputOptionMenuBinding(@NonNull ChatInputOptionMenu chatInputOptionMenu, @NonNull FontAwesomeView fontAwesomeView, @NonNull GridLayout gridLayout) {
        this.rootView = chatInputOptionMenu;
        this.arrow = fontAwesomeView;
        this.chatInputOptionMenuContainer = gridLayout;
    }

    @NonNull
    public static ChatInputOptionMenuBinding bind(@NonNull View view) {
        int i10 = R.id.arrow;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.arrow);
        if (fontAwesomeView != null) {
            i10 = R.id.chat_input_option_menu_container;
            GridLayout gridLayout = (GridLayout) ViewBindings.a(view, R.id.chat_input_option_menu_container);
            if (gridLayout != null) {
                return new ChatInputOptionMenuBinding((ChatInputOptionMenu) view, fontAwesomeView, gridLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
