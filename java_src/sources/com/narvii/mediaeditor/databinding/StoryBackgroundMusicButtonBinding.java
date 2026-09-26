package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes3.dex */
public final class StoryBackgroundMusicButtonBinding implements ViewBinding {

    @NonNull
    public final TintButton ivMusic;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout sceneRoot;

    @NonNull
    public final TextView tvTitle;

    @NonNull
    public static StoryBackgroundMusicButtonBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StoryBackgroundMusicButtonBinding bind(@NonNull View view) {
        int i10 = R.id.iv_music;
        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
        if (tintButton != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            int i11 = R.id.tv_title;
            TextView textView = (TextView) ViewBindings.a(view, i11);
            if (textView != null) {
                return new StoryBackgroundMusicButtonBinding(linearLayout, tintButton, linearLayout, textView);
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static StoryBackgroundMusicButtonBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.story_background_music_button, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StoryBackgroundMusicButtonBinding(@NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.ivMusic = tintButton;
        this.sceneRoot = linearLayout2;
        this.tvTitle = textView;
    }
}
