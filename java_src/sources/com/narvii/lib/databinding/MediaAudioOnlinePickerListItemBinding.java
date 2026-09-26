package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.media.online.audio.MusicPlayStatusView;
import com.narvii.media.online.audio.MusicSliderView;
import com.narvii.widget.CircleProgressBar;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes7.dex */
public final class MediaAudioOnlinePickerListItemBinding implements ViewBinding {

    @NonNull
    public final ImageView idleView;

    @NonNull
    public final FrameLayout musicDownloadContainer;

    @NonNull
    public final NVImageView musicDownloadDownload;

    @NonNull
    public final NVImageView musicDownloadPick;

    @NonNull
    public final CircleProgressBar musicDownloadProgress;

    @NonNull
    public final MusicSliderView musicSeekbar;

    @NonNull
    public final MusicPlayStatusView playingStatus;

    @NonNull
    public final NVImageView playingView;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final SpinningView spinningView;

    @NonNull
    public final TextView trackArtist;

    @NonNull
    public final TextView trackDuration;

    @NonNull
    public final TextView trackName;

    @NonNull
    public final TextView trackTags;

    @NonNull
    public final NVImageView trackThumbnail;

    @NonNull
    public static MediaAudioOnlinePickerListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaAudioOnlinePickerListItemBinding bind(@NonNull View view) {
        int i10 = R.id.idle_view;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.music_download_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
            if (frameLayout != null) {
                i10 = R.id.music_download_download;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
                if (nVImageView != null) {
                    i10 = R.id.music_download_pick;
                    NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, i10);
                    if (nVImageView2 != null) {
                        i10 = R.id.music_download_progress;
                        CircleProgressBar circleProgressBar = (CircleProgressBar) ViewBindings.a(view, i10);
                        if (circleProgressBar != null) {
                            i10 = R.id.music_seekbar;
                            MusicSliderView musicSliderView = (MusicSliderView) ViewBindings.a(view, i10);
                            if (musicSliderView != null) {
                                i10 = R.id.playing_status;
                                MusicPlayStatusView musicPlayStatusView = (MusicPlayStatusView) ViewBindings.a(view, i10);
                                if (musicPlayStatusView != null) {
                                    i10 = R.id.playing_view;
                                    NVImageView nVImageView3 = (NVImageView) ViewBindings.a(view, i10);
                                    if (nVImageView3 != null) {
                                        i10 = R.id.spinning_view;
                                        SpinningView spinningView = (SpinningView) ViewBindings.a(view, i10);
                                        if (spinningView != null) {
                                            i10 = R.id.track_artist;
                                            TextView textView = (TextView) ViewBindings.a(view, i10);
                                            if (textView != null) {
                                                i10 = R.id.track_duration;
                                                TextView textView2 = (TextView) ViewBindings.a(view, i10);
                                                if (textView2 != null) {
                                                    i10 = R.id.track_name;
                                                    TextView textView3 = (TextView) ViewBindings.a(view, i10);
                                                    if (textView3 != null) {
                                                        i10 = R.id.track_tags;
                                                        TextView textView4 = (TextView) ViewBindings.a(view, i10);
                                                        if (textView4 != null) {
                                                            i10 = R.id.track_thumbnail;
                                                            NVImageView nVImageView4 = (NVImageView) ViewBindings.a(view, i10);
                                                            if (nVImageView4 != null) {
                                                                return new MediaAudioOnlinePickerListItemBinding((FrameLayout) view, imageView, frameLayout, nVImageView, nVImageView2, circleProgressBar, musicSliderView, musicPlayStatusView, nVImageView3, spinningView, textView, textView2, textView3, textView4, nVImageView4);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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
    public static MediaAudioOnlinePickerListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_audio_online_picker_list_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaAudioOnlinePickerListItemBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull NVImageView nVImageView, @NonNull NVImageView nVImageView2, @NonNull CircleProgressBar circleProgressBar, @NonNull MusicSliderView musicSliderView, @NonNull MusicPlayStatusView musicPlayStatusView, @NonNull NVImageView nVImageView3, @NonNull SpinningView spinningView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull NVImageView nVImageView4) {
        this.rootView = frameLayout;
        this.idleView = imageView;
        this.musicDownloadContainer = frameLayout2;
        this.musicDownloadDownload = nVImageView;
        this.musicDownloadPick = nVImageView2;
        this.musicDownloadProgress = circleProgressBar;
        this.musicSeekbar = musicSliderView;
        this.playingStatus = musicPlayStatusView;
        this.playingView = nVImageView3;
        this.spinningView = spinningView;
        this.trackArtist = textView;
        this.trackDuration = textView2;
        this.trackName = textView3;
        this.trackTags = textView4;
        this.trackThumbnail = nVImageView4;
    }
}
