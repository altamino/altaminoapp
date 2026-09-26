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

/* JADX INFO: loaded from: classes11.dex */
public final class DialogInviteToTalkBinding implements ViewBinding {

    @NonNull
    public final TextView accept;

    @NonNull
    public final TextView info;

    @NonNull
    public final TextView reject;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DialogInviteToTalkBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogInviteToTalkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_invite_to_talk, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogInviteToTalkBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.accept = textView;
        this.info = textView2;
        this.reject = textView3;
    }

    @NonNull
    public static DialogInviteToTalkBinding bind(@NonNull View view) {
        int i10 = R.id.accept;
        TextView textView = (TextView) ViewBindings.a(view, R.id.accept);
        if (textView != null) {
            i10 = R.id.info;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.info);
            if (textView2 != null) {
                i10 = R.id.reject;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.reject);
                if (textView3 != null) {
                    return new DialogInviteToTalkBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
