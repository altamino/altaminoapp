package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.SelectableTextView;

/* JADX INFO: loaded from: classes2.dex */
public final class ChatDetailContentBinding implements ViewBinding {

    @NonNull
    private final SelectableTextView rootView;

    @NonNull
    public final SelectableTextView text;

    @NonNull
    public static ChatDetailContentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SelectableTextView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatDetailContentBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        SelectableTextView selectableTextView = (SelectableTextView) view;
        return new ChatDetailContentBinding(selectableTextView, selectableTextView);
    }

    @NonNull
    public static ChatDetailContentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_detail_content, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatDetailContentBinding(@NonNull SelectableTextView selectableTextView, @NonNull SelectableTextView selectableTextView2) {
        this.rootView = selectableTextView;
        this.text = selectableTextView2;
    }
}
