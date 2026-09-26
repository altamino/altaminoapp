package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes8.dex */
public final class EmptyDeleteChatBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    public final TextView emptyText;

    @NonNull
    public final LinearLayout main;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static EmptyDeleteChatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static EmptyDeleteChatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.empty_delete_chat, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private EmptyDeleteChatBinding(@NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.emptyRetry = fontAwesomeView;
        this.emptyText = textView;
        this.main = linearLayout2;
    }

    @NonNull
    public static EmptyDeleteChatBinding bind(@NonNull View view) {
        int i10 = R.id.empty_retry;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.empty_retry);
        if (fontAwesomeView != null) {
            i10 = R.id.empty_text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.empty_text);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new EmptyDeleteChatBinding(linearLayout, fontAwesomeView, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
