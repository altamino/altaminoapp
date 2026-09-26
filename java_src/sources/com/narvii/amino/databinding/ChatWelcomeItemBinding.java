package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatWelcomeItem;

/* JADX INFO: loaded from: classes6.dex */
public final class ChatWelcomeItemBinding implements ViewBinding {

    @NonNull
    private final ChatWelcomeItem rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static ChatWelcomeItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ChatWelcomeItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatWelcomeItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_welcome_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatWelcomeItemBinding(@NonNull ChatWelcomeItem chatWelcomeItem, @NonNull TextView textView) {
        this.rootView = chatWelcomeItem;
        this.text = textView;
    }

    @NonNull
    public static ChatWelcomeItemBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.text);
        if (textView != null) {
            return new ChatWelcomeItemBinding((ChatWelcomeItem) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.text)));
    }
}
