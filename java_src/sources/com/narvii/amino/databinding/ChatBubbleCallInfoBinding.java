package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatBubbleCallInfoBinding implements ViewBinding {

    @NonNull
    public final TintButton indicator;

    @NonNull
    private final View rootView;

    @NonNull
    public final View stub1;

    @NonNull
    public final TextView text;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatBubbleCallInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.chat_bubble_call_info, viewGroup);
        return bind(viewGroup);
    }

    private ChatBubbleCallInfoBinding(@NonNull View view, @NonNull TintButton tintButton, @NonNull View view2, @NonNull TextView textView) {
        this.rootView = view;
        this.indicator = tintButton;
        this.stub1 = view2;
        this.text = textView;
    }

    @NonNull
    public static ChatBubbleCallInfoBinding bind(@NonNull View view) {
        int i10 = R.id.indicator;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.indicator);
        if (tintButton != null) {
            i10 = R.id.stub1;
            View viewA = ViewBindings.a(view, R.id.stub1);
            if (viewA != null) {
                i10 = R.id.text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                if (textView != null) {
                    return new ChatBubbleCallInfoBinding(view, tintButton, viewA, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
