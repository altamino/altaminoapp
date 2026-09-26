package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public final class FlagItemTagBinding implements ViewBinding {

    @NonNull
    private final TextView rootView;

    @NonNull
    public static FlagItemTagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public TextView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlagItemTagBinding bind(@NonNull View view) {
        if (view != null) {
            return new FlagItemTagBinding((TextView) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static FlagItemTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_item_tag, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlagItemTagBinding(@NonNull TextView textView) {
        this.rootView = textView;
    }
}
