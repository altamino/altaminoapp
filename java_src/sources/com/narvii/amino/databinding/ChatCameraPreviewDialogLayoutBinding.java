package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.video.layout.VideoCameraPreviewView;
import com.narvii.widget.RadiusLayout;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class ChatCameraPreviewDialogLayoutBinding implements ViewBinding {

    @NonNull
    public final TintButton flipBtn;

    @NonNull
    public final FrameLayout flipFl;

    @NonNull
    public final TintButton muteBtn;

    @NonNull
    public final FrameLayout muteFl;

    @NonNull
    private final RadiusLayout rootView;

    @NonNull
    public final TextView startTv;

    @NonNull
    public final VideoCameraPreviewView videoCameraPreviewView;

    @NonNull
    public static ChatCameraPreviewDialogLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RadiusLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatCameraPreviewDialogLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_camera_preview_dialog_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatCameraPreviewDialogLayoutBinding(@NonNull RadiusLayout radiusLayout, @NonNull TintButton tintButton, @NonNull FrameLayout frameLayout, @NonNull TintButton tintButton2, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull VideoCameraPreviewView videoCameraPreviewView) {
        this.rootView = radiusLayout;
        this.flipBtn = tintButton;
        this.flipFl = frameLayout;
        this.muteBtn = tintButton2;
        this.muteFl = frameLayout2;
        this.startTv = textView;
        this.videoCameraPreviewView = videoCameraPreviewView;
    }

    @NonNull
    public static ChatCameraPreviewDialogLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.flip_btn;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.flip_btn);
        if (tintButton != null) {
            i10 = R.id.flip_fl;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.flip_fl);
            if (frameLayout != null) {
                i10 = R.id.mute_btn;
                TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.mute_btn);
                if (tintButton2 != null) {
                    i10 = R.id.mute_fl;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.mute_fl);
                    if (frameLayout2 != null) {
                        i10 = R.id.start_tv;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.start_tv);
                        if (textView != null) {
                            i10 = R.id.video_camera_preview_view;
                            VideoCameraPreviewView videoCameraPreviewView = (VideoCameraPreviewView) ViewBindings.a(view, R.id.video_camera_preview_view);
                            if (videoCameraPreviewView != null) {
                                return new ChatCameraPreviewDialogLayoutBinding((RadiusLayout) view, tintButton, frameLayout, tintButton2, frameLayout2, textView, videoCameraPreviewView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
