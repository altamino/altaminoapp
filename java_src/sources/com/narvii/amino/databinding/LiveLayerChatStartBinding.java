package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes9.dex */
public final class LiveLayerChatStartBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final AutoSizingTextView text;

    @NonNull
    public static LiveLayerChatStartBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerChatStartBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_chat_start, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerChatStartBinding(@NonNull LinearLayout linearLayout, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = linearLayout;
        this.text = autoSizingTextView;
    }

    @NonNull
    public static LiveLayerChatStartBinding bind(@NonNull View view) {
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.text);
        if (autoSizingTextView != null) {
            return new LiveLayerChatStartBinding((LinearLayout) view, autoSizingTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.text)));
    }
}
