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
public final class DialogPrivateChannelNotAllowBinding implements ViewBinding {

    @NonNull
    public final TextView accept;

    @NonNull
    public final TextView cancel;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DialogPrivateChannelNotAllowBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogPrivateChannelNotAllowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_private_channel_not_allow, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogPrivateChannelNotAllowBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.accept = textView;
        this.cancel = textView2;
    }

    @NonNull
    public static DialogPrivateChannelNotAllowBinding bind(@NonNull View view) {
        int i10 = R.id.accept;
        TextView textView = (TextView) ViewBindings.a(view, R.id.accept);
        if (textView != null) {
            i10 = R.id.cancel;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.cancel);
            if (textView2 != null) {
                return new DialogPrivateChannelNotAllowBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
