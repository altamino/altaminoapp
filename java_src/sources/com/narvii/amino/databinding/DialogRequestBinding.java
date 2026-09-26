package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogRequestBinding implements ViewBinding {

    @NonNull
    public final EditText requestEdit;

    @NonNull
    public final ProgressBar requestProgress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DialogRequestBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogRequestBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_request, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogRequestBinding(@NonNull FrameLayout frameLayout, @NonNull EditText editText, @NonNull ProgressBar progressBar) {
        this.rootView = frameLayout;
        this.requestEdit = editText;
        this.requestProgress = progressBar;
    }

    @NonNull
    public static DialogRequestBinding bind(@NonNull View view) {
        int i10 = R.id.request_edit;
        EditText editText = (EditText) ViewBindings.a(view, R.id.request_edit);
        if (editText != null) {
            i10 = R.id.request_progress;
            ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.request_progress);
            if (progressBar != null) {
                return new DialogRequestBinding((FrameLayout) view, editText, progressBar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
