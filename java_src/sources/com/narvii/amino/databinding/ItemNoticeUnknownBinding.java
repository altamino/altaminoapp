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
import com.narvii.widget.PushButton;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemNoticeUnknownBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final PushButton update;

    @NonNull
    public static ItemNoticeUnknownBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemNoticeUnknownBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_notice_unknown, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemNoticeUnknownBinding(@NonNull LinearLayout linearLayout, @NonNull PushButton pushButton) {
        this.rootView = linearLayout;
        this.update = pushButton;
    }

    @NonNull
    public static ItemNoticeUnknownBinding bind(@NonNull View view) {
        PushButton pushButton = (PushButton) ViewBindings.a(view, R.id.update);
        if (pushButton != null) {
            return new ItemNoticeUnknownBinding((LinearLayout) view, pushButton);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.update)));
    }
}
