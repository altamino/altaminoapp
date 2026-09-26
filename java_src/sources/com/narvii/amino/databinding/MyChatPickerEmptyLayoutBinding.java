package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class MyChatPickerEmptyLayoutBinding implements ViewBinding {

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static MyChatPickerEmptyLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MyChatPickerEmptyLayoutBinding bind(@NonNull View view) {
        if (view != null) {
            return new MyChatPickerEmptyLayoutBinding((FlexLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static MyChatPickerEmptyLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.my_chat_picker_empty_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MyChatPickerEmptyLayoutBinding(@NonNull FlexLayout flexLayout) {
        this.rootView = flexLayout;
    }
}
