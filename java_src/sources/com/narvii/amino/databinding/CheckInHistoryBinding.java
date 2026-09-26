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
import com.narvii.checkin.CheckInHistoryView;

/* JADX INFO: loaded from: classes6.dex */
public final class CheckInHistoryBinding implements ViewBinding {

    @NonNull
    public final CheckInHistoryView checkInHistory;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView strikeLost;

    @NonNull
    public static CheckInHistoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CheckInHistoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.check_in_history, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CheckInHistoryBinding(@NonNull LinearLayout linearLayout, @NonNull CheckInHistoryView checkInHistoryView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.checkInHistory = checkInHistoryView;
        this.strikeLost = textView;
    }

    @NonNull
    public static CheckInHistoryBinding bind(@NonNull View view) {
        int i10 = R.id.check_in_history;
        CheckInHistoryView checkInHistoryView = (CheckInHistoryView) ViewBindings.a(view, R.id.check_in_history);
        if (checkInHistoryView != null) {
            i10 = R.id.strike_lost;
            TextView textView = (TextView) ViewBindings.a(view, R.id.strike_lost);
            if (textView != null) {
                return new CheckInHistoryBinding((LinearLayout) view, checkInHistoryView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
