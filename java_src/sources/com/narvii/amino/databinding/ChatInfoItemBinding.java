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
import com.narvii.chat.ChatInfoItem;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatInfoItemBinding implements ViewBinding {

    @NonNull
    private final ChatInfoItem rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static ChatInfoItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ChatInfoItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatInfoItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_info_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatInfoItemBinding(@NonNull ChatInfoItem chatInfoItem, @NonNull TextView textView) {
        this.rootView = chatInfoItem;
        this.text = textView;
    }

    @NonNull
    public static ChatInfoItemBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.text);
        if (textView != null) {
            return new ChatInfoItemBinding((ChatInfoItem) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.text)));
    }
}
