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

/* JADX INFO: loaded from: classes9.dex */
public final class DialogDownloadMasterBinding implements ViewBinding {

    @NonNull
    public final TextView alertDialogMessage;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DialogDownloadMasterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogDownloadMasterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_download_master, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogDownloadMasterBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.alertDialogMessage = textView;
    }

    @NonNull
    public static DialogDownloadMasterBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.alert_dialog_message);
        if (textView != null) {
            return new DialogDownloadMasterBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.alert_dialog_message)));
    }
}
