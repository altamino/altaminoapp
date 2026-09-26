package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;
import com.narvii.widget.AutoFocusDisabledEditText;

/* JADX INFO: loaded from: classes4.dex */
public final class AddTagDefaultEditBinding implements ViewBinding {

    @NonNull
    public final AutoFocusDisabledEditText addTag;

    @NonNull
    private final AutoFocusDisabledEditText rootView;

    @NonNull
    public static AddTagDefaultEditBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public AutoFocusDisabledEditText getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AddTagDefaultEditBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        AutoFocusDisabledEditText autoFocusDisabledEditText = (AutoFocusDisabledEditText) view;
        return new AddTagDefaultEditBinding(autoFocusDisabledEditText, autoFocusDisabledEditText);
    }

    @NonNull
    public static AddTagDefaultEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.add_tag_default_edit, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AddTagDefaultEditBinding(@NonNull AutoFocusDisabledEditText autoFocusDisabledEditText, @NonNull AutoFocusDisabledEditText autoFocusDisabledEditText2) {
        this.rootView = autoFocusDisabledEditText;
        this.addTag = autoFocusDisabledEditText2;
    }
}
