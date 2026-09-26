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

/* JADX INFO: loaded from: classes5.dex */
public final class ChatDetailViewOnlyBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final CheckBox viewOnly;

    @NonNull
    public static ChatDetailViewOnlyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatDetailViewOnlyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_detail_view_only, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatDetailViewOnlyBinding(@NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox) {
        this.rootView = linearLayout;
        this.viewOnly = checkBox;
    }

    @NonNull
    public static ChatDetailViewOnlyBinding bind(@NonNull View view) {
        CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.view_only);
        if (checkBox != null) {
            return new ChatDetailViewOnlyBinding((LinearLayout) view, checkBox);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.view_only)));
    }
}
