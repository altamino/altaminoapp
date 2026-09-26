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
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class RtcPreviewBannerBinding implements ViewBinding {

    @NonNull
    public final UserAvatarLayoutMiniNobadgeBinding avatar;

    @NonNull
    public final TextView count;

    @NonNull
    public final NVImageView indicator;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static RtcPreviewBannerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RtcPreviewBannerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.rtc_preview_banner, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RtcPreviewBannerBinding(@NonNull LinearLayout linearLayout, @NonNull UserAvatarLayoutMiniNobadgeBinding userAvatarLayoutMiniNobadgeBinding, @NonNull TextView textView, @NonNull NVImageView nVImageView) {
        this.rootView = linearLayout;
        this.avatar = userAvatarLayoutMiniNobadgeBinding;
        this.count = textView;
        this.indicator = nVImageView;
    }

    @NonNull
    public static RtcPreviewBannerBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        View viewA = ViewBindings.a(view, R.id.avatar);
        if (viewA != null) {
            UserAvatarLayoutMiniNobadgeBinding userAvatarLayoutMiniNobadgeBindingBind = UserAvatarLayoutMiniNobadgeBinding.bind(viewA);
            int i11 = R.id.count;
            TextView textView = (TextView) ViewBindings.a(view, R.id.count);
            if (textView != null) {
                i11 = R.id.indicator;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.indicator);
                if (nVImageView != null) {
                    return new RtcPreviewBannerBinding((LinearLayout) view, userAvatarLayoutMiniNobadgeBindingBind, textView, nVImageView);
                }
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
