package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class LayoutChatReplyBinding implements ViewBinding {

    @NonNull
    public final TextView content;

    @NonNull
    public final TintButton delete;

    @NonNull
    public final RelativeLayout deleteLayout;

    @NonNull
    public final View divideLine;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static LayoutChatReplyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutChatReplyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_chat_reply, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutChatReplyBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.content = textView;
        this.delete = tintButton;
        this.deleteLayout = relativeLayout;
        this.divideLine = view;
        this.title = textView2;
    }

    @NonNull
    public static LayoutChatReplyBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.content);
        if (textView != null) {
            i10 = R.id.delete;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.delete);
            if (tintButton != null) {
                i10 = R.id.delete_layout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.delete_layout);
                if (relativeLayout != null) {
                    i10 = R.id.divide_line;
                    View viewA = ViewBindings.a(view, R.id.divide_line);
                    if (viewA != null) {
                        i10 = R.id.title;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                        if (textView2 != null) {
                            return new LayoutChatReplyBinding((LinearLayout) view, textView, tintButton, relativeLayout, viewA, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
