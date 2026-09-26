package com.narvii.mediaeditor.databinding;

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
import com.narvii.mediaeditor.R;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.ViceTimeLineCutterView;
import com.narvii.video.widget.ViceTimeLineWrapperView;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class ComponentViceTimeLineBinding implements ViewBinding {

    @NonNull
    public final HorizontalRecyclerView audioTimeLine;

    @NonNull
    public final MediaTimeLineComponent audioTimeLineComponent;

    @NonNull
    public final TextView clipName;

    @NonNull
    private final MediaTimeLineComponent rootView;

    @NonNull
    public final LinearLayout trackContentPanel;

    @NonNull
    public final ImageView trackIcon;

    @NonNull
    public final NVImageView trackStickerIcon;

    @NonNull
    public final ViceTimeLineCutterView viceTimeLineCutter;

    @NonNull
    public final ViceTimeLineWrapperView viceTimeLineWrapper;

    @NonNull
    public static ComponentViceTimeLineBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public MediaTimeLineComponent getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ComponentViceTimeLineBinding bind(@NonNull View view) {
        int i10 = R.id.audio_time_line;
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, i10);
        if (horizontalRecyclerView != null) {
            MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) view;
            i10 = R.id.clip_name;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.track_content_panel;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                if (linearLayout != null) {
                    i10 = R.id.track_icon;
                    ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                    if (imageView != null) {
                        i10 = R.id.track_sticker_icon;
                        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
                        if (nVImageView != null) {
                            i10 = R.id.vice_time_line_cutter;
                            ViceTimeLineCutterView viceTimeLineCutterView = (ViceTimeLineCutterView) ViewBindings.a(view, i10);
                            if (viceTimeLineCutterView != null) {
                                i10 = R.id.vice_time_line_wrapper;
                                ViceTimeLineWrapperView viceTimeLineWrapperView = (ViceTimeLineWrapperView) ViewBindings.a(view, i10);
                                if (viceTimeLineWrapperView != null) {
                                    return new ComponentViceTimeLineBinding(mediaTimeLineComponent, horizontalRecyclerView, mediaTimeLineComponent, textView, linearLayout, imageView, nVImageView, viceTimeLineCutterView, viceTimeLineWrapperView);
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
    public static ComponentViceTimeLineBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.component_vice_time_line, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ComponentViceTimeLineBinding(@NonNull MediaTimeLineComponent mediaTimeLineComponent, @NonNull HorizontalRecyclerView horizontalRecyclerView, @NonNull MediaTimeLineComponent mediaTimeLineComponent2, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull NVImageView nVImageView, @NonNull ViceTimeLineCutterView viceTimeLineCutterView, @NonNull ViceTimeLineWrapperView viceTimeLineWrapperView) {
        this.rootView = mediaTimeLineComponent;
        this.audioTimeLine = horizontalRecyclerView;
        this.audioTimeLineComponent = mediaTimeLineComponent2;
        this.clipName = textView;
        this.trackContentPanel = linearLayout;
        this.trackIcon = imageView;
        this.trackStickerIcon = nVImageView;
        this.viceTimeLineCutter = viceTimeLineCutterView;
        this.viceTimeLineWrapper = viceTimeLineWrapperView;
    }
}
