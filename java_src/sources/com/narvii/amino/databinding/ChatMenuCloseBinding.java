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

/* JADX INFO: loaded from: classes8.dex */
public final class ChatMenuCloseBinding implements ViewBinding {

    @NonNull
    public final LinearLayout close;

    @NonNull
    public final LinearLayout mini;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ChatMenuCloseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatMenuCloseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_menu_close, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatMenuCloseBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.close = linearLayout2;
        this.mini = linearLayout3;
    }

    @NonNull
    public static ChatMenuCloseBinding bind(@NonNull View view) {
        int i10 = R.id.close;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.close);
        if (linearLayout != null) {
            i10 = R.id.mini;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.mini);
            if (linearLayout2 != null) {
                return new ChatMenuCloseBinding((LinearLayout) view, linearLayout, linearLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
