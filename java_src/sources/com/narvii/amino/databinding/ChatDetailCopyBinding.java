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
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class ChatDetailCopyBinding implements ViewBinding {

    @NonNull
    public final LinearLayout copyChatThread;

    @NonNull
    public final LinearLayout copyLinkContainer;

    @NonNull
    public final TintButton flag;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ChatDetailCopyBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.copy_link_container;
        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.copy_link_container);
        if (linearLayout2 != null) {
            i10 = R.id.flag;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.flag);
            if (tintButton != null) {
                return new ChatDetailCopyBinding(linearLayout, linearLayout, linearLayout2, tintButton);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ChatDetailCopyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatDetailCopyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_detail_copy, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatDetailCopyBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TintButton tintButton) {
        this.rootView = linearLayout;
        this.copyChatThread = linearLayout2;
        this.copyLinkContainer = linearLayout3;
        this.flag = tintButton;
    }
}
