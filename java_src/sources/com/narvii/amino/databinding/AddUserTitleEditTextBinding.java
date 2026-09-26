package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoFocusDisabledEditText;

/* JADX INFO: loaded from: classes7.dex */
public final class AddUserTitleEditTextBinding implements ViewBinding {

    @NonNull
    public final AutoFocusDisabledEditText addTag;

    @NonNull
    private final AutoFocusDisabledEditText rootView;

    @NonNull
    public static AddUserTitleEditTextBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public AutoFocusDisabledEditText getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AddUserTitleEditTextBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        AutoFocusDisabledEditText autoFocusDisabledEditText = (AutoFocusDisabledEditText) view;
        return new AddUserTitleEditTextBinding(autoFocusDisabledEditText, autoFocusDisabledEditText);
    }

    @NonNull
    public static AddUserTitleEditTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.add_user_title_edit_text, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AddUserTitleEditTextBinding(@NonNull AutoFocusDisabledEditText autoFocusDisabledEditText, @NonNull AutoFocusDisabledEditText autoFocusDisabledEditText2) {
        this.rootView = autoFocusDisabledEditText;
        this.addTag = autoFocusDisabledEditText2;
    }
}
