package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class AminoTemplatePickerListTopBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static AminoTemplatePickerListTopBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AminoTemplatePickerListTopBinding bind(@NonNull View view) {
        if (view != null) {
            return new AminoTemplatePickerListTopBinding((LinearLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static AminoTemplatePickerListTopBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.amino_template_picker_list_top, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AminoTemplatePickerListTopBinding(@NonNull LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }
}
