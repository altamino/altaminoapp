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

/* JADX INFO: loaded from: classes6.dex */
public final class DialogCallRetryBinding implements ViewBinding {

    @NonNull
    public final TextView cancel;

    @NonNull
    public final TextView content;

    @NonNull
    public final TextView retry;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DialogCallRetryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogCallRetryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_call_retry, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogCallRetryBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.cancel = textView;
        this.content = textView2;
        this.retry = textView3;
    }

    @NonNull
    public static DialogCallRetryBinding bind(@NonNull View view) {
        int i10 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.a(view, R.id.cancel);
        if (textView != null) {
            i10 = R.id.content;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.content);
            if (textView2 != null) {
                i10 = R.id.retry;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.retry);
                if (textView3 != null) {
                    return new DialogCallRetryBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
