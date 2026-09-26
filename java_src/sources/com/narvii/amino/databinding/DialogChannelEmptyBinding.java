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

/* JADX INFO: loaded from: classes10.dex */
public final class DialogChannelEmptyBinding implements ViewBinding {

    @NonNull
    public final TextView endHint;

    @NonNull
    public final TextView leave;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DialogChannelEmptyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogChannelEmptyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_channel_empty, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogChannelEmptyBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.endHint = textView;
        this.leave = textView2;
    }

    @NonNull
    public static DialogChannelEmptyBinding bind(@NonNull View view) {
        int i10 = R.id.end_hint;
        TextView textView = (TextView) ViewBindings.a(view, R.id.end_hint);
        if (textView != null) {
            i10 = R.id.leave;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.leave);
            if (textView2 != null) {
                return new DialogChannelEmptyBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
