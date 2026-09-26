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
import com.narvii.chat.ChatTimeItem;

/* JADX INFO: loaded from: classes6.dex */
public final class ChatTimeItemBinding implements ViewBinding {

    @NonNull
    private final ChatTimeItem rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static ChatTimeItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ChatTimeItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatTimeItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_time_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatTimeItemBinding(@NonNull ChatTimeItem chatTimeItem, @NonNull TextView textView) {
        this.rootView = chatTimeItem;
        this.text = textView;
    }

    @NonNull
    public static ChatTimeItemBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.text);
        if (textView != null) {
            return new ChatTimeItemBinding((ChatTimeItem) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.text)));
    }
}
