package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes.dex */
public final class ChatActionbarLeftBinding implements ViewBinding {

    @NonNull
    public final TextView fakeActionbarTitle;

    @NonNull
    public final TextView memberCount;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ChatActionbarLeftBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatActionbarLeftBinding bind(@NonNull View view) {
        int i10 = R.id.fake_actionbar_title;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.member_count;
            TextView textView2 = (TextView) ViewBindings.a(view, i10);
            if (textView2 != null) {
                return new ChatActionbarLeftBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ChatActionbarLeftBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_actionbar_left, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatActionbarLeftBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.fakeActionbarTitle = textView;
        this.memberCount = textView2;
    }
}
