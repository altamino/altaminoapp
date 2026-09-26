package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeView;

/* JADX INFO: loaded from: classes8.dex */
public final class ChatDetailDivideBinding implements ViewBinding {

    @NonNull
    private final NVThemeView rootView;

    @NonNull
    public static ChatDetailDivideBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatDetailDivideBinding bind(@NonNull View view) {
        if (view != null) {
            return new ChatDetailDivideBinding((NVThemeView) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ChatDetailDivideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_detail_divide, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatDetailDivideBinding(@NonNull NVThemeView nVThemeView) {
        this.rootView = nVThemeView;
    }
}
