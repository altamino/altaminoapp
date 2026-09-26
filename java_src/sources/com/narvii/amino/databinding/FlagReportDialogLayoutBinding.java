package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class FlagReportDialogLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout flagReportOptionsLayout;

    @NonNull
    public final ProgressBar requestProgress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FlagReportDialogLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlagReportDialogLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_report_dialog_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlagReportDialogLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar) {
        this.rootView = frameLayout;
        this.flagReportOptionsLayout = linearLayout;
        this.requestProgress = progressBar;
    }

    @NonNull
    public static FlagReportDialogLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.flag_report_options_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.flag_report_options_layout);
        if (linearLayout != null) {
            i10 = R.id.request_progress;
            ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.request_progress);
            if (progressBar != null) {
                return new FlagReportDialogLayoutBinding((FrameLayout) view, linearLayout, progressBar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
