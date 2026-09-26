package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.lib.R;
import com.narvii.share.ShareDialogButton;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogShareBackupBinding implements ViewBinding {

    @NonNull
    public final View bg;

    @NonNull
    public final RealtimeBlurView blur;

    @NonNull
    public final FlexLayout mainLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FlexLayout shareButtonContainer;

    @NonNull
    public final ShareDialogButton shareDialogFirstButton;

    @NonNull
    public final ShareDialogButton shareDialogSecondButton;

    @NonNull
    public final View shareTargetsLayout;

    @NonNull
    public final TextView title;

    @NonNull
    public static DialogShareBackupBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogShareBackupBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.bg;
        View viewA2 = ViewBindings.a(view, i10);
        if (viewA2 != null) {
            i10 = R.id.blur;
            RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, i10);
            if (realtimeBlurView != null) {
                i10 = R.id.main_layout;
                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, i10);
                if (flexLayout != null) {
                    i10 = R.id.share_button_container;
                    FlexLayout flexLayout2 = (FlexLayout) ViewBindings.a(view, i10);
                    if (flexLayout2 != null) {
                        i10 = R.id.share_dialog_first_button;
                        ShareDialogButton shareDialogButton = (ShareDialogButton) ViewBindings.a(view, i10);
                        if (shareDialogButton != null) {
                            i10 = R.id.share_dialog_second_button;
                            ShareDialogButton shareDialogButton2 = (ShareDialogButton) ViewBindings.a(view, i10);
                            if (shareDialogButton2 != null && (viewA = ViewBindings.a(view, (i10 = R.id.share_targets_layout))) != null) {
                                i10 = R.id.title;
                                TextView textView = (TextView) ViewBindings.a(view, i10);
                                if (textView != null) {
                                    return new DialogShareBackupBinding((FrameLayout) view, viewA2, realtimeBlurView, flexLayout, flexLayout2, shareDialogButton, shareDialogButton2, viewA, textView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogShareBackupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_share_backup, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogShareBackupBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull RealtimeBlurView realtimeBlurView, @NonNull FlexLayout flexLayout, @NonNull FlexLayout flexLayout2, @NonNull ShareDialogButton shareDialogButton, @NonNull ShareDialogButton shareDialogButton2, @NonNull View view2, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.bg = view;
        this.blur = realtimeBlurView;
        this.mainLayout = flexLayout;
        this.shareButtonContainer = flexLayout2;
        this.shareDialogFirstButton = shareDialogButton;
        this.shareDialogSecondButton = shareDialogButton2;
        this.shareTargetsLayout = view2;
        this.title = textView;
    }
}
