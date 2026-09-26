package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class WaitingListEmptyViewBinding implements ViewBinding {

    @NonNull
    public final TextView inviteTalkBtn;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static WaitingListEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WaitingListEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.waiting_list_empty_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WaitingListEmptyViewBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.inviteTalkBtn = textView;
    }

    @NonNull
    public static WaitingListEmptyViewBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.invite_talk_btn);
        if (textView != null) {
            return new WaitingListEmptyViewBinding((RelativeLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.invite_talk_btn)));
    }
}
