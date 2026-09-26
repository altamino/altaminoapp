package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.lib.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class MediaAudioOnlinePickerCategoryListItemBinding implements ViewBinding {

    @NonNull
    public final NVImageView categoryBackground;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView trackAlbumName;

    @NonNull
    public final TextView trackCount;

    @NonNull
    public static MediaAudioOnlinePickerCategoryListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaAudioOnlinePickerCategoryListItemBinding bind(@NonNull View view) {
        int i10 = R.id.category_background;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
        if (nVImageView != null) {
            i10 = R.id.track_album_name;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.track_count;
                TextView textView2 = (TextView) ViewBindings.a(view, i10);
                if (textView2 != null) {
                    return new MediaAudioOnlinePickerCategoryListItemBinding((FlexLayout) view, nVImageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MediaAudioOnlinePickerCategoryListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_audio_online_picker_category_list_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaAudioOnlinePickerCategoryListItemBinding(@NonNull FlexLayout flexLayout, @NonNull NVImageView nVImageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = flexLayout;
        this.categoryBackground = nVImageView;
        this.trackAlbumName = textView;
        this.trackCount = textView2;
    }
}
