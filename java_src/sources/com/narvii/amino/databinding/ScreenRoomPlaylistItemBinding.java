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
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class ScreenRoomPlaylistItemBinding implements ViewBinding {

    @NonNull
    public final ImageView dragHandle;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView screenroomPlaylistDuration;

    @NonNull
    public final ImageView screenroomPlaylistSourceIcon;

    @NonNull
    public final TextView screenroomPlaylistSourceText;

    @NonNull
    public final ImageView screenroomPlaylistStatus;

    @NonNull
    public final NVImageView screenroomPlaylistThumbnail;

    @NonNull
    public final NVImageView screenroomPlaylistThumbnailOverlay;

    @NonNull
    public final TextView screenroomPlaylistTitle;

    @NonNull
    public static ScreenRoomPlaylistItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ScreenRoomPlaylistItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.screen_room_playlist_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ScreenRoomPlaylistItemBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull ImageView imageView3, @NonNull NVImageView nVImageView, @NonNull NVImageView nVImageView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.dragHandle = imageView;
        this.screenroomPlaylistDuration = textView;
        this.screenroomPlaylistSourceIcon = imageView2;
        this.screenroomPlaylistSourceText = textView2;
        this.screenroomPlaylistStatus = imageView3;
        this.screenroomPlaylistThumbnail = nVImageView;
        this.screenroomPlaylistThumbnailOverlay = nVImageView2;
        this.screenroomPlaylistTitle = textView3;
    }

    @NonNull
    public static ScreenRoomPlaylistItemBinding bind(@NonNull View view) {
        int i10 = R.id.drag_handle;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.drag_handle);
        if (imageView != null) {
            i10 = R.id.screenroom_playlist_duration;
            TextView textView = (TextView) ViewBindings.a(view, R.id.screenroom_playlist_duration);
            if (textView != null) {
                i10 = R.id.screenroom_playlist_source_icon;
                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.screenroom_playlist_source_icon);
                if (imageView2 != null) {
                    i10 = R.id.screenroom_playlist_source_text;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.screenroom_playlist_source_text);
                    if (textView2 != null) {
                        i10 = R.id.screenroom_playlist_status;
                        ImageView imageView3 = (ImageView) ViewBindings.a(view, R.id.screenroom_playlist_status);
                        if (imageView3 != null) {
                            i10 = R.id.screenroom_playlist_thumbnail;
                            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.screenroom_playlist_thumbnail);
                            if (nVImageView != null) {
                                i10 = R.id.screenroom_playlist_thumbnail_overlay;
                                NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.screenroom_playlist_thumbnail_overlay);
                                if (nVImageView2 != null) {
                                    i10 = R.id.screenroom_playlist_title;
                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.screenroom_playlist_title);
                                    if (textView3 != null) {
                                        return new ScreenRoomPlaylistItemBinding((LinearLayout) view, imageView, textView, imageView2, textView2, imageView3, nVImageView, nVImageView2, textView3);
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
}
