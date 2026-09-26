package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemLoginHintMyAminosBinding implements ViewBinding {

    @NonNull
    public final TextView loginHint;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemLoginHintMyAminosBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemLoginHintMyAminosBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_login_hint_my_aminos, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemLoginHintMyAminosBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.loginHint = textView;
    }

    @NonNull
    public static ItemLoginHintMyAminosBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.login_hint);
        if (textView != null) {
            return new ItemLoginHintMyAminosBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.login_hint)));
    }
}
