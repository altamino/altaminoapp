package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RecentlyCreatedChatroomDateSectionBinding implements ViewBinding {

    @NonNull
    private final TextView rootView;

    @NonNull
    public final TextView time;

    @NonNull
    public static RecentlyCreatedChatroomDateSectionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public TextView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RecentlyCreatedChatroomDateSectionBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        TextView textView = (TextView) view;
        return new RecentlyCreatedChatroomDateSectionBinding(textView, textView);
    }

    @NonNull
    public static RecentlyCreatedChatroomDateSectionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.recently_created_chatroom_date_section, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RecentlyCreatedChatroomDateSectionBinding(@NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = textView;
        this.time = textView2;
    }
}
