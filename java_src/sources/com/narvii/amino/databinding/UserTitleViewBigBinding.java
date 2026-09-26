package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class UserTitleViewBigBinding implements ViewBinding {

    @NonNull
    private final TextView rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static UserTitleViewBigBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public TextView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserTitleViewBigBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        TextView textView = (TextView) view;
        return new UserTitleViewBigBinding(textView, textView);
    }

    @NonNull
    public static UserTitleViewBigBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_title_view_big, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserTitleViewBigBinding(@NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = textView;
        this.title = textView2;
    }
}
