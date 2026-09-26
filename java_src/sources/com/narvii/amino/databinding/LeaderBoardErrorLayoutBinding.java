package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes9.dex */
public final class LeaderBoardErrorLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView error;

    @NonNull
    public final FontAwesomeView retry;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static LeaderBoardErrorLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LeaderBoardErrorLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.leader_board_error_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LeaderBoardErrorLayoutBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView2) {
        this.rootView = flexLayout;
        this.error = textView;
        this.retry = fontAwesomeView;
        this.text = textView2;
    }

    @NonNull
    public static LeaderBoardErrorLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.error;
        TextView textView = (TextView) ViewBindings.a(view, R.id.error);
        if (textView != null) {
            i10 = R.id.retry;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.retry);
            if (fontAwesomeView != null) {
                i10 = R.id.text;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                if (textView2 != null) {
                    return new LeaderBoardErrorLayoutBinding((FlexLayout) view, textView, fontAwesomeView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
