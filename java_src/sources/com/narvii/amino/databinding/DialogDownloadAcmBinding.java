package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.PushButton;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogDownloadAcmBinding implements ViewBinding {

    @NonNull
    public final TintButton back;

    @NonNull
    public final PushButton btnCreateCommunity;

    @NonNull
    public final AutoSizingTextView buttonText;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DialogDownloadAcmBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogDownloadAcmBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_download_acm, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogDownloadAcmBinding(@NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull PushButton pushButton, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = linearLayout;
        this.back = tintButton;
        this.btnCreateCommunity = pushButton;
        this.buttonText = autoSizingTextView;
    }

    @NonNull
    public static DialogDownloadAcmBinding bind(@NonNull View view) {
        int i10 = R.id.back;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.back);
        if (tintButton != null) {
            i10 = R.id.btn_create_community;
            PushButton pushButton = (PushButton) ViewBindings.a(view, R.id.btn_create_community);
            if (pushButton != null) {
                i10 = R.id.button_text;
                AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.button_text);
                if (autoSizingTextView != null) {
                    return new DialogDownloadAcmBinding((LinearLayout) view, tintButton, pushButton, autoSizingTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
