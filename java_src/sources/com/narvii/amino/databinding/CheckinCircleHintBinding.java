package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class CheckinCircleHintBinding implements ViewBinding {

    @NonNull
    private final TextView rootView;

    @NonNull
    public static CheckinCircleHintBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public TextView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CheckinCircleHintBinding bind(@NonNull View view) {
        if (view != null) {
            return new CheckinCircleHintBinding((TextView) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static CheckinCircleHintBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.checkin_circle_hint, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CheckinCircleHintBinding(@NonNull TextView textView) {
        this.rootView = textView;
    }
}
