package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentCoverImageBinding implements ViewBinding {

    @NonNull
    public final FrameLayout customImageRl;

    @NonNull
    public final NVImageView customImageView;

    @NonNull
    public final FrameLayout editBackgroundView;

    @NonNull
    public final NVImageView imageThumbIv;

    @NonNull
    public final OverlayListPlaceholder overlay;

    @NonNull
    public final ImageView playerButton;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TintButton selectCoverImageBtn;

    @NonNull
    public final TextView swipeHintTv;

    @NonNull
    public final Button tabCustom;

    @NonNull
    public final Button tabScreenShoot;

    @NonNull
    public final FrameLayout videoContainer;

    @NonNull
    public final HorizontalRecyclerView videoTimeLine;

    @NonNull
    public final MediaTimeLineComponent videoTimeLineComponent;

    @NonNull
    public final FrameLayout videoTimeLineComponentContainer;

    @NonNull
    public final NVEditorPreviewVideoVIew videoViewPlayer;

    private FragmentCoverImageBinding(@NonNull FlexLayout flexLayout, @NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView, @NonNull FrameLayout frameLayout2, @NonNull NVImageView nVImageView2, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull ImageView imageView, @NonNull TintButton tintButton, @NonNull TextView textView, @NonNull Button button, @NonNull Button button2, @NonNull FrameLayout frameLayout3, @NonNull HorizontalRecyclerView horizontalRecyclerView, @NonNull MediaTimeLineComponent mediaTimeLineComponent, @NonNull FrameLayout frameLayout4, @NonNull NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew) {
        this.rootView = flexLayout;
        this.customImageRl = frameLayout;
        this.customImageView = nVImageView;
        this.editBackgroundView = frameLayout2;
        this.imageThumbIv = nVImageView2;
        this.overlay = overlayListPlaceholder;
        this.playerButton = imageView;
        this.selectCoverImageBtn = tintButton;
        this.swipeHintTv = textView;
        this.tabCustom = button;
        this.tabScreenShoot = button2;
        this.videoContainer = frameLayout3;
        this.videoTimeLine = horizontalRecyclerView;
        this.videoTimeLineComponent = mediaTimeLineComponent;
        this.videoTimeLineComponentContainer = frameLayout4;
        this.videoViewPlayer = nVEditorPreviewVideoVIew;
    }

    @NonNull
    public static FragmentCoverImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentCoverImageBinding bind(@NonNull View view) {
        int i10 = R.id.custom_image_rl;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.custom_image_rl);
        if (frameLayout != null) {
            i10 = R.id.custom_image_view;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.custom_image_view);
            if (nVImageView != null) {
                i10 = R.id.edit_background_view;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.edit_background_view);
                if (frameLayout2 != null) {
                    i10 = R.id.image_thumb_iv;
                    NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.image_thumb_iv);
                    if (nVImageView2 != null) {
                        i10 = R.id.overlay;
                        OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.overlay);
                        if (overlayListPlaceholder != null) {
                            i10 = R.id.player_button;
                            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.player_button);
                            if (imageView != null) {
                                i10 = R.id.select_cover_image_btn;
                                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.select_cover_image_btn);
                                if (tintButton != null) {
                                    i10 = R.id.swipe_hint_tv;
                                    TextView textView = (TextView) ViewBindings.a(view, R.id.swipe_hint_tv);
                                    if (textView != null) {
                                        i10 = R.id.tab_custom;
                                        Button button = (Button) ViewBindings.a(view, R.id.tab_custom);
                                        if (button != null) {
                                            i10 = R.id.tab_screen_shoot;
                                            Button button2 = (Button) ViewBindings.a(view, R.id.tab_screen_shoot);
                                            if (button2 != null) {
                                                i10 = R.id.video_container;
                                                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.video_container);
                                                if (frameLayout3 != null) {
                                                    i10 = R.id.video_time_line;
                                                    HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, R.id.video_time_line);
                                                    if (horizontalRecyclerView != null) {
                                                        i10 = R.id.video_time_line_component;
                                                        MediaTimeLineComponent mediaTimeLineComponent = (MediaTimeLineComponent) ViewBindings.a(view, R.id.video_time_line_component);
                                                        if (mediaTimeLineComponent != null) {
                                                            i10 = R.id.video_time_line_component_container;
                                                            FrameLayout frameLayout4 = (FrameLayout) ViewBindings.a(view, R.id.video_time_line_component_container);
                                                            if (frameLayout4 != null) {
                                                                i10 = R.id.video_view_player;
                                                                NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew = (NVEditorPreviewVideoVIew) ViewBindings.a(view, R.id.video_view_player);
                                                                if (nVEditorPreviewVideoVIew != null) {
                                                                    return new FragmentCoverImageBinding((FlexLayout) view, frameLayout, nVImageView, frameLayout2, nVImageView2, overlayListPlaceholder, imageView, tintButton, textView, button, button2, frameLayout3, horizontalRecyclerView, mediaTimeLineComponent, frameLayout4, nVEditorPreviewVideoVIew);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentCoverImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_cover_image, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
