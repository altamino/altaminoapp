package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.PressedFrameLayout;
import com.narvii.widget.RadiusLayout;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes9.dex */
public final class MediaAudioSubcategoryListBinding implements ViewBinding {

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final PressedFrameLayout pressedFrame;

    @NonNull
    public final SpinningView progress;

    @NonNull
    public final SpinningView progressPressedFrame;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final RadiusLayout subcategoryPickButton;

    @NonNull
    public final TextView subcategoryPickText;

    @NonNull
    public static MediaAudioSubcategoryListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaAudioSubcategoryListBinding bind(@NonNull View view) {
        int i10 = R.id.list_frame;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
        if (frameLayout != null) {
            i10 = R.id.pressed_frame;
            PressedFrameLayout pressedFrameLayout = (PressedFrameLayout) ViewBindings.a(view, i10);
            if (pressedFrameLayout != null) {
                i10 = android.R.id.progress;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                if (spinningView != null) {
                    i10 = R.id.progress_pressed_frame;
                    SpinningView spinningView2 = (SpinningView) ViewBindings.a(view, i10);
                    if (spinningView2 != null) {
                        i10 = R.id.subcategory_pick_button;
                        RadiusLayout radiusLayout = (RadiusLayout) ViewBindings.a(view, i10);
                        if (radiusLayout != null) {
                            i10 = R.id.subcategory_pick_text;
                            TextView textView = (TextView) ViewBindings.a(view, i10);
                            if (textView != null) {
                                return new MediaAudioSubcategoryListBinding((LinearLayout) view, frameLayout, pressedFrameLayout, spinningView, spinningView2, radiusLayout, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MediaAudioSubcategoryListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_audio_subcategory_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaAudioSubcategoryListBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull PressedFrameLayout pressedFrameLayout, @NonNull SpinningView spinningView, @NonNull SpinningView spinningView2, @NonNull RadiusLayout radiusLayout, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.listFrame = frameLayout;
        this.pressedFrame = pressedFrameLayout;
        this.progress = spinningView;
        this.progressPressedFrame = spinningView2;
        this.subcategoryPickButton = radiusLayout;
        this.subcategoryPickText = textView;
    }
}
