package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;
import com.narvii.widget.ULTextview;

/* JADX INFO: loaded from: classes10.dex */
public final class AminoTemplateFeatureUlBinding implements ViewBinding {

    @NonNull
    private final ULTextview rootView;

    @NonNull
    public final ULTextview ul;

    @NonNull
    public static AminoTemplateFeatureUlBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ULTextview getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AminoTemplateFeatureUlBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ULTextview uLTextview = (ULTextview) view;
        return new AminoTemplateFeatureUlBinding(uLTextview, uLTextview);
    }

    @NonNull
    public static AminoTemplateFeatureUlBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.amino_template_feature_ul, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AminoTemplateFeatureUlBinding(@NonNull ULTextview uLTextview, @NonNull ULTextview uLTextview2) {
        this.rootView = uLTextview;
        this.ul = uLTextview2;
    }
}
