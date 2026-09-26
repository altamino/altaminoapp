package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.lib.R;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.share.ShareDialogButton;

/* JADX INFO: loaded from: classes11.dex */
public final class ShareDarkRoomLayoutBinding implements ViewBinding {

    @NonNull
    public final RealtimeBlurView blur;

    @NonNull
    public final OverlayListPlaceholder fakeActionBar;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final ScrollView scroll;

    @NonNull
    public final FlexLayout shareButtonContainer;

    @NonNull
    public final FlexLayout shareContentContainer;

    @NonNull
    public final FlexLayout shareDialogButtons;

    @NonNull
    public final ShareDialogButton shareDialogFirstButton;

    @NonNull
    public final ShareDialogButton shareDialogSecondButton;

    @NonNull
    public final GridLayout shareTargetsLayout;

    @NonNull
    public static ShareDarkRoomLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ShareDarkRoomLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.blur;
        RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, i10);
        if (realtimeBlurView != null) {
            i10 = R.id.fake_action_bar;
            OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, i10);
            if (overlayListPlaceholder != null) {
                i10 = R.id.scroll;
                ScrollView scrollView = (ScrollView) ViewBindings.a(view, i10);
                if (scrollView != null) {
                    i10 = R.id.share_button_container;
                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, i10);
                    if (flexLayout != null) {
                        i10 = R.id.share_content_container;
                        FlexLayout flexLayout2 = (FlexLayout) ViewBindings.a(view, i10);
                        if (flexLayout2 != null) {
                            i10 = R.id.share_dialog_buttons;
                            FlexLayout flexLayout3 = (FlexLayout) ViewBindings.a(view, i10);
                            if (flexLayout3 != null) {
                                i10 = R.id.share_dialog_first_button;
                                ShareDialogButton shareDialogButton = (ShareDialogButton) ViewBindings.a(view, i10);
                                if (shareDialogButton != null) {
                                    i10 = R.id.share_dialog_second_button;
                                    ShareDialogButton shareDialogButton2 = (ShareDialogButton) ViewBindings.a(view, i10);
                                    if (shareDialogButton2 != null) {
                                        i10 = R.id.share_targets_layout;
                                        GridLayout gridLayout = (GridLayout) ViewBindings.a(view, i10);
                                        if (gridLayout != null) {
                                            return new ShareDarkRoomLayoutBinding((FrameLayout) view, realtimeBlurView, overlayListPlaceholder, scrollView, flexLayout, flexLayout2, flexLayout3, shareDialogButton, shareDialogButton2, gridLayout);
                                        }
                                    }
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
    public static ShareDarkRoomLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.share_dark_room_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ShareDarkRoomLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull RealtimeBlurView realtimeBlurView, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull ScrollView scrollView, @NonNull FlexLayout flexLayout, @NonNull FlexLayout flexLayout2, @NonNull FlexLayout flexLayout3, @NonNull ShareDialogButton shareDialogButton, @NonNull ShareDialogButton shareDialogButton2, @NonNull GridLayout gridLayout) {
        this.rootView = frameLayout;
        this.blur = realtimeBlurView;
        this.fakeActionBar = overlayListPlaceholder;
        this.scroll = scrollView;
        this.shareButtonContainer = flexLayout;
        this.shareContentContainer = flexLayout2;
        this.shareDialogButtons = flexLayout3;
        this.shareDialogFirstButton = shareDialogButton;
        this.shareDialogSecondButton = shareDialogButton2;
        this.shareTargetsLayout = gridLayout;
    }
}
