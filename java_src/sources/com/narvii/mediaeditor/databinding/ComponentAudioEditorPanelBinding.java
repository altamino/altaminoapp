package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.video.widget.MediaRetrieveController;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.VolumeProgressView;
import com.narvii.widget.HorizontalRecyclerView;

/* JADX INFO: loaded from: classes11.dex */
public final class ComponentAudioEditorPanelBinding implements ViewBinding {

    @NonNull
    public final HorizontalRecyclerView audioTimeLine;

    @NonNull
    public final MediaTimeLineComponent audioTimeLineComponent;

    @NonNull
    public final LinearLayout contentPanel;

    @NonNull
    public final MediaOptionPanel optionsPanel;

    @NonNull
    public final MediaRetrieveController retrieveController;

    @NonNull
    private final View rootView;

    @NonNull
    public final VolumeProgressView volumeControllerPanel;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ComponentAudioEditorPanelBinding bind(@NonNull View view) {
        int i10 = R.id.audio_time_line;
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, i10);
        if (horizontalRecyclerView != null) {
            i10 = R.id.audio_time_line_component;
            MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) ViewBindings.a(view, i10);
            if (mediaTimeLineComponent != null) {
                i10 = R.id.contentPanel;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                if (linearLayout != null) {
                    i10 = R.id.options_panel;
                    MediaOptionPanel mediaOptionPanel = (MediaOptionPanel) ViewBindings.a(view, i10);
                    if (mediaOptionPanel != null) {
                        i10 = R.id.retrieve_controller;
                        MediaRetrieveController mediaRetrieveController = (MediaRetrieveController) ViewBindings.a(view, i10);
                        if (mediaRetrieveController != null) {
                            i10 = R.id.volume_controller_panel;
                            VolumeProgressView volumeProgressView = (VolumeProgressView) ViewBindings.a(view, i10);
                            if (volumeProgressView != null) {
                                return new ComponentAudioEditorPanelBinding(view, horizontalRecyclerView, mediaTimeLineComponent, linearLayout, mediaOptionPanel, mediaRetrieveController, volumeProgressView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ComponentAudioEditorPanelBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.component_audio_editor_panel, viewGroup);
        return bind(viewGroup);
    }

    private ComponentAudioEditorPanelBinding(@NonNull View view, @NonNull HorizontalRecyclerView horizontalRecyclerView, @NonNull MediaTimeLineComponent mediaTimeLineComponent, @NonNull LinearLayout linearLayout, @NonNull MediaOptionPanel mediaOptionPanel, @NonNull MediaRetrieveController mediaRetrieveController, @NonNull VolumeProgressView volumeProgressView) {
        this.rootView = view;
        this.audioTimeLine = horizontalRecyclerView;
        this.audioTimeLineComponent = mediaTimeLineComponent;
        this.contentPanel = linearLayout;
        this.optionsPanel = mediaOptionPanel;
        this.retrieveController = mediaRetrieveController;
        this.volumeControllerPanel = volumeProgressView;
    }
}
