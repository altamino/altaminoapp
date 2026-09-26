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
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.PushButton;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogDownloadAcmNewBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView buttonText;

    @NonNull
    public final TintButton close;

    @NonNull
    public final PushButton getAcm;

    @NonNull
    public final TextView hintContent;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DialogDownloadAcmNewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogDownloadAcmNewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_download_acm_new, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogDownloadAcmNewBinding(@NonNull LinearLayout linearLayout, @NonNull AutoSizingTextView autoSizingTextView, @NonNull TintButton tintButton, @NonNull PushButton pushButton, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.buttonText = autoSizingTextView;
        this.close = tintButton;
        this.getAcm = pushButton;
        this.hintContent = textView;
    }

    @NonNull
    public static DialogDownloadAcmNewBinding bind(@NonNull View view) {
        int i10 = R.id.button_text;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.button_text);
        if (autoSizingTextView != null) {
            i10 = R.id.close;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.close);
            if (tintButton != null) {
                i10 = R.id.get_acm;
                PushButton pushButton = (PushButton) ViewBindings.a(view, R.id.get_acm);
                if (pushButton != null) {
                    i10 = R.id.hint_content;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.hint_content);
                    if (textView != null) {
                        return new DialogDownloadAcmNewBinding((LinearLayout) view, autoSizingTextView, tintButton, pushButton, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
