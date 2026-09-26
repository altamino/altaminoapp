package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemClipFastSwitchingPanelBinding implements ViewBinding {

    @NonNull
    public final TextView clipDuration;

    @NonNull
    public final NVImageView clipThumbnail;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static ItemClipFastSwitchingPanelBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemClipFastSwitchingPanelBinding bind(@NonNull View view) {
        int i10 = R.id.clip_duration;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.clip_thumbnail;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
            if (nVImageView != null) {
                return new ItemClipFastSwitchingPanelBinding((RelativeLayout) view, textView, nVImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemClipFastSwitchingPanelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_clip_fast_switching_panel, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemClipFastSwitchingPanelBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull NVImageView nVImageView) {
        this.rootView = relativeLayout;
        this.clipDuration = textView;
        this.clipThumbnail = nVImageView;
    }
}
