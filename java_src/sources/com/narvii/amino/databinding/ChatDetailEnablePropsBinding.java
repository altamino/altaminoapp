package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class ChatDetailEnablePropsBinding implements ViewBinding {

    @NonNull
    public final CheckBox enableProps;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ChatDetailEnablePropsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatDetailEnablePropsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_detail_enable_props, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatDetailEnablePropsBinding(@NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox) {
        this.rootView = linearLayout;
        this.enableProps = checkBox;
    }

    @NonNull
    public static ChatDetailEnablePropsBinding bind(@NonNull View view) {
        CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.enable_props);
        if (checkBox != null) {
            return new ChatDetailEnablePropsBinding((LinearLayout) view, checkBox);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.enable_props)));
    }
}
