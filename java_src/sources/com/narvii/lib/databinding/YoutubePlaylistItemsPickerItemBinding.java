package com.narvii.lib.databinding;

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
import com.narvii.lib.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class YoutubePlaylistItemsPickerItemBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView screenroomPlaylistDuration;

    @NonNull
    public final ImageView screenroomPlaylistSourceIcon;

    @NonNull
    public final TextView screenroomPlaylistSourceText;

    @NonNull
    public final NVImageView screenroomPlaylistThumbnail;

    @NonNull
    public final TextView screenroomPlaylistTitle;

    @NonNull
    public final ImageView youtubeVideoSelect;

    @NonNull
    public static YoutubePlaylistItemsPickerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static YoutubePlaylistItemsPickerItemBinding bind(@NonNull View view) {
        int i10 = R.id.screenroom_playlist_duration;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.screenroom_playlist_source_icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, i10);
            if (imageView != null) {
                i10 = R.id.screenroom_playlist_source_text;
                TextView textView2 = (TextView) ViewBindings.a(view, i10);
                if (textView2 != null) {
                    i10 = R.id.screenroom_playlist_thumbnail;
                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
                    if (nVImageView != null) {
                        i10 = R.id.screenroom_playlist_title;
                        TextView textView3 = (TextView) ViewBindings.a(view, i10);
                        if (textView3 != null) {
                            i10 = R.id.youtube_video_select;
                            ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                            if (imageView2 != null) {
                                return new YoutubePlaylistItemsPickerItemBinding((LinearLayout) view, textView, imageView, textView2, nVImageView, textView3, imageView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static YoutubePlaylistItemsPickerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.youtube_playlist_items_picker_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private YoutubePlaylistItemsPickerItemBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull NVImageView nVImageView, @NonNull TextView textView3, @NonNull ImageView imageView2) {
        this.rootView = linearLayout;
        this.screenroomPlaylistDuration = textView;
        this.screenroomPlaylistSourceIcon = imageView;
        this.screenroomPlaylistSourceText = textView2;
        this.screenroomPlaylistThumbnail = nVImageView;
        this.screenroomPlaylistTitle = textView3;
        this.youtubeVideoSelect = imageView2;
    }
}
