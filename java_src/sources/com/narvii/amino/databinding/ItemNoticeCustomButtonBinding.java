package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.PushButton;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemNoticeCustomButtonBinding implements ViewBinding {

    @NonNull
    public final TextView buttonText;

    @NonNull
    private final PushButton rootView;

    @NonNull
    public static ItemNoticeCustomButtonBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public PushButton getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemNoticeCustomButtonBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_notice_custom_button, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemNoticeCustomButtonBinding(@NonNull PushButton pushButton, @NonNull TextView textView) {
        this.rootView = pushButton;
        this.buttonText = textView;
    }

    @NonNull
    public static ItemNoticeCustomButtonBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.button_text);
        if (textView != null) {
            return new ItemNoticeCustomButtonBinding((PushButton) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.button_text)));
    }
}
