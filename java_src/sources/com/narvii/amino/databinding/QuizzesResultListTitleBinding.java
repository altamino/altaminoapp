package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.RadiusLayout;

/* JADX INFO: loaded from: classes11.dex */
public final class QuizzesResultListTitleBinding implements ViewBinding {

    @NonNull
    public final View divider;

    @NonNull
    private final RadiusLayout rootView;

    @NonNull
    public final TextView topPlayers;

    @NonNull
    public static QuizzesResultListTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RadiusLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizzesResultListTitleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quizzes_result_list_title, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private QuizzesResultListTitleBinding(@NonNull RadiusLayout radiusLayout, @NonNull View view, @NonNull TextView textView) {
        this.rootView = radiusLayout;
        this.divider = view;
        this.topPlayers = textView;
    }

    @NonNull
    public static QuizzesResultListTitleBinding bind(@NonNull View view) {
        int i10 = R.id.divider;
        View viewA = ViewBindings.a(view, R.id.divider);
        if (viewA != null) {
            i10 = R.id.top_players;
            TextView textView = (TextView) ViewBindings.a(view, R.id.top_players);
            if (textView != null) {
                return new QuizzesResultListTitleBinding((RadiusLayout) view, viewA, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
