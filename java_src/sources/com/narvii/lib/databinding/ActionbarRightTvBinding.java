package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes10.dex */
public final class ActionbarRightTvBinding implements ViewBinding {

    @NonNull
    private final TextView rootView;

    @NonNull
    public final TextView tvRight;

    @NonNull
    public static ActionbarRightTvBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public TextView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ActionbarRightTvBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        TextView textView = (TextView) view;
        return new ActionbarRightTvBinding(textView, textView);
    }

    @NonNull
    public static ActionbarRightTvBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.actionbar_right_tv, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ActionbarRightTvBinding(@NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = textView;
        this.tvRight = textView2;
    }
}
