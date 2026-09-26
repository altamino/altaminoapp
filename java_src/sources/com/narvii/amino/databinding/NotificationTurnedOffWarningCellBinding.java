package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public final class NotificationTurnedOffWarningCellBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static NotificationTurnedOffWarningCellBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static NotificationTurnedOffWarningCellBinding bind(@NonNull View view) {
        if (view != null) {
            return new NotificationTurnedOffWarningCellBinding((LinearLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static NotificationTurnedOffWarningCellBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.notification_turned_off_warning_cell, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private NotificationTurnedOffWarningCellBinding(@NonNull LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }
}
