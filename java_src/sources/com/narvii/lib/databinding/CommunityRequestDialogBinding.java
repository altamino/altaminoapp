package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes3.dex */
public final class CommunityRequestDialogBinding implements ViewBinding {

    @NonNull
    public final EditText requestEdit;

    @NonNull
    public final ProgressBar requestProgress;

    @NonNull
    public final TextView requestTextCountLeft;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static CommunityRequestDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CommunityRequestDialogBinding bind(@NonNull View view) {
        int i10 = R.id.request_edit;
        EditText editText = (EditText) ViewBindings.a(view, i10);
        if (editText != null) {
            i10 = R.id.request_progress;
            ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, i10);
            if (progressBar != null) {
                i10 = R.id.request_text_count_left;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    return new CommunityRequestDialogBinding((FrameLayout) view, editText, progressBar, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static CommunityRequestDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.community_request_dialog, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CommunityRequestDialogBinding(@NonNull FrameLayout frameLayout, @NonNull EditText editText, @NonNull ProgressBar progressBar, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.requestEdit = editText;
        this.requestProgress = progressBar;
        this.requestTextCountLeft = textView;
    }
}
