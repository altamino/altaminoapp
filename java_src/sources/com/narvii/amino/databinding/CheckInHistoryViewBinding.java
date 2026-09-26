package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class CheckInHistoryViewBinding implements ViewBinding {

    @NonNull
    public final LinearLayout dayofweek;

    @NonNull
    public final GridLayout history;

    @NonNull
    public final FrameLayout month;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static CheckInHistoryViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CheckInHistoryViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.check_in_history_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CheckInHistoryViewBinding(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull GridLayout gridLayout, @NonNull FrameLayout frameLayout) {
        this.rootView = relativeLayout;
        this.dayofweek = linearLayout;
        this.history = gridLayout;
        this.month = frameLayout;
    }

    @NonNull
    public static CheckInHistoryViewBinding bind(@NonNull View view) {
        int i10 = R.id.dayofweek;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.dayofweek);
        if (linearLayout != null) {
            i10 = R.id.history;
            GridLayout gridLayout = (GridLayout) ViewBindings.a(view, R.id.history);
            if (gridLayout != null) {
                i10 = R.id.month;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.month);
                if (frameLayout != null) {
                    return new CheckInHistoryViewBinding((RelativeLayout) view, linearLayout, gridLayout, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
