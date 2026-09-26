package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.widget.VolumeIndicator;

/* JADX INFO: loaded from: classes11.dex */
public final class AccountInfoInVideoBinding implements ViewBinding {

    @NonNull
    public final LinearLayout accountInfo;

    @NonNull
    public final ImageView audioMuted;

    @NonNull
    public final TextView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final OverlayListPlaceholder topOffset;

    @NonNull
    public final VolumeIndicator volumeLevelIndicatorBottom;

    @NonNull
    public final VolumeIndicator volumeLevelIndicatorTop;

    @NonNull
    public static AccountInfoInVideoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AccountInfoInVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.account_info_in_video, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AccountInfoInVideoBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull VolumeIndicator volumeIndicator, @NonNull VolumeIndicator volumeIndicator2) {
        this.rootView = linearLayout;
        this.accountInfo = linearLayout2;
        this.audioMuted = imageView;
        this.nickname = textView;
        this.topOffset = overlayListPlaceholder;
        this.volumeLevelIndicatorBottom = volumeIndicator;
        this.volumeLevelIndicatorTop = volumeIndicator2;
    }

    @NonNull
    public static AccountInfoInVideoBinding bind(@NonNull View view) {
        int i10 = R.id.account_info;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.account_info);
        if (linearLayout != null) {
            i10 = R.id.audio_muted;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.audio_muted);
            if (imageView != null) {
                i10 = R.id.nickname;
                TextView textView = (TextView) ViewBindings.a(view, R.id.nickname);
                if (textView != null) {
                    i10 = R.id.top_offset;
                    OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.top_offset);
                    if (overlayListPlaceholder != null) {
                        i10 = R.id.volume_level_indicator_bottom;
                        VolumeIndicator volumeIndicator = (VolumeIndicator) ViewBindings.a(view, R.id.volume_level_indicator_bottom);
                        if (volumeIndicator != null) {
                            i10 = R.id.volume_level_indicator_top;
                            VolumeIndicator volumeIndicator2 = (VolumeIndicator) ViewBindings.a(view, R.id.volume_level_indicator_top);
                            if (volumeIndicator2 != null) {
                                return new AccountInfoInVideoBinding((LinearLayout) view, linearLayout, imageView, textView, overlayListPlaceholder, volumeIndicator, volumeIndicator2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
