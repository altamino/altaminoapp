package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class ChatDetailChangeBackgroundBinding implements ViewBinding {

    @NonNull
    public final LinearLayout action;

    @NonNull
    public final NVImageView backgroundThumbnail;

    @NonNull
    public final RealtimeBlurView backgroundThumbnailBlur;

    @NonNull
    public final FontAwesomeView chatMuteIcon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ChatDetailChangeBackgroundBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatDetailChangeBackgroundBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_detail_change_background, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatDetailChangeBackgroundBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull NVImageView nVImageView, @NonNull RealtimeBlurView realtimeBlurView, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = linearLayout;
        this.action = linearLayout2;
        this.backgroundThumbnail = nVImageView;
        this.backgroundThumbnailBlur = realtimeBlurView;
        this.chatMuteIcon = fontAwesomeView;
    }

    @NonNull
    public static ChatDetailChangeBackgroundBinding bind(@NonNull View view) {
        int i10 = R.id.action;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.action);
        if (linearLayout != null) {
            i10 = R.id.background_thumbnail;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.background_thumbnail);
            if (nVImageView != null) {
                i10 = R.id.background_thumbnail_blur;
                RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.background_thumbnail_blur);
                if (realtimeBlurView != null) {
                    i10 = R.id.chat_mute_icon;
                    FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.chat_mute_icon);
                    if (fontAwesomeView != null) {
                        return new ChatDetailChangeBackgroundBinding((LinearLayout) view, linearLayout, nVImageView, realtimeBlurView, fontAwesomeView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
