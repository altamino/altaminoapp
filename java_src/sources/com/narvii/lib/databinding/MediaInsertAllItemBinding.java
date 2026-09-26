package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes5.dex */
public final class MediaInsertAllItemBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static MediaInsertAllItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaInsertAllItemBinding bind(@NonNull View view) {
        if (view != null) {
            return new MediaInsertAllItemBinding((LinearLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static MediaInsertAllItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_insert_all_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaInsertAllItemBinding(@NonNull LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }
}
