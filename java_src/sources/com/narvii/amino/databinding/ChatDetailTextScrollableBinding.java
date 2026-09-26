package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SelectableTextView;

/* JADX INFO: loaded from: classes5.dex */
public final class ChatDetailTextScrollableBinding implements ViewBinding {

    @NonNull
    private final View rootView;

    @NonNull
    public final SelectableTextView text;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatDetailTextScrollableBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.chat_detail_text_scrollable, viewGroup);
        return bind(viewGroup);
    }

    private ChatDetailTextScrollableBinding(@NonNull View view, @NonNull SelectableTextView selectableTextView) {
        this.rootView = view;
        this.text = selectableTextView;
    }

    @NonNull
    public static ChatDetailTextScrollableBinding bind(@NonNull View view) {
        SelectableTextView selectableTextView = (SelectableTextView) ViewBindings.a(view, R.id.text);
        if (selectableTextView != null) {
            return new ChatDetailTextScrollableBinding(view, selectableTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.text)));
    }
}
