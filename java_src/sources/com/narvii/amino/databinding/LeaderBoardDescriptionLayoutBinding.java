package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class LeaderBoardDescriptionLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView desc;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static LeaderBoardDescriptionLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LeaderBoardDescriptionLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.leader_board_description_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LeaderBoardDescriptionLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.desc = textView;
    }

    @NonNull
    public static LeaderBoardDescriptionLayoutBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.desc);
        if (textView != null) {
            return new LeaderBoardDescriptionLayoutBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.desc)));
    }
}
