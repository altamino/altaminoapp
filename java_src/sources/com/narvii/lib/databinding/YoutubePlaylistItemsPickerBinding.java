package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.lib.R;
import com.narvii.widget.PressedFrameLayout;
import com.narvii.widget.RadiusLayout;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class YoutubePlaylistItemsPickerBinding implements ViewBinding {

    @NonNull
    public final TintButton cancel;

    @NonNull
    public final View clickRemoveMask;

    @NonNull
    public final Button finishSelect;

    @NonNull
    public final TextView playlistUrl;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final PressedFrameLayout selectAll;

    @NonNull
    public final RadiusLayout tippingConfirmContent;

    @NonNull
    public final ImageView youtubeVideoSelectAllIcon;

    @NonNull
    public static YoutubePlaylistItemsPickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static YoutubePlaylistItemsPickerBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.cancel;
        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
        if (tintButton != null && (viewA = ViewBindings.a(view, (i10 = R.id.click_remove_mask))) != null) {
            i10 = R.id.finish_select;
            Button button = (Button) ViewBindings.a(view, i10);
            if (button != null) {
                i10 = R.id.playlist_url;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    i10 = R.id.select_all;
                    PressedFrameLayout pressedFrameLayout = (PressedFrameLayout) ViewBindings.a(view, i10);
                    if (pressedFrameLayout != null) {
                        i10 = R.id.tipping_confirm_content;
                        RadiusLayout radiusLayout = (RadiusLayout) ViewBindings.a(view, i10);
                        if (radiusLayout != null) {
                            i10 = R.id.youtube_video_select_all_icon;
                            ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                            if (imageView != null) {
                                return new YoutubePlaylistItemsPickerBinding((FlexLayout) view, tintButton, viewA, button, textView, pressedFrameLayout, radiusLayout, imageView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static YoutubePlaylistItemsPickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.youtube_playlist_items_picker, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private YoutubePlaylistItemsPickerBinding(@NonNull FlexLayout flexLayout, @NonNull TintButton tintButton, @NonNull View view, @NonNull Button button, @NonNull TextView textView, @NonNull PressedFrameLayout pressedFrameLayout, @NonNull RadiusLayout radiusLayout, @NonNull ImageView imageView) {
        this.rootView = flexLayout;
        this.cancel = tintButton;
        this.clickRemoveMask = view;
        this.finishSelect = button;
        this.playlistUrl = textView;
        this.selectAll = pressedFrameLayout;
        this.tippingConfirmContent = radiusLayout;
        this.youtubeVideoSelectAllIcon = imageView;
    }
}
