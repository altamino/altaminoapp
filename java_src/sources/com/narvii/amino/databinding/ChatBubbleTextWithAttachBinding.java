package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ChatBubbleTextWithAttachBinding implements ViewBinding {

    @NonNull
    private final View rootView;

    @NonNull
    public final View stub5;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatBubbleTextWithAttachBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.chat_bubble_text_with_attach, viewGroup);
        return bind(viewGroup);
    }

    private ChatBubbleTextWithAttachBinding(@NonNull View view, @NonNull View view2) {
        this.rootView = view;
        this.stub5 = view2;
    }

    @NonNull
    public static ChatBubbleTextWithAttachBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.stub5);
        if (viewA != null) {
            return new ChatBubbleTextWithAttachBinding(view, viewA);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.stub5)));
    }
}
