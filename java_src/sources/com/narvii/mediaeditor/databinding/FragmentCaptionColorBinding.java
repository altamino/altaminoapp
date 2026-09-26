package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.video.attachment.caption.CaptionColorRecyclerView;

/* JADX INFO: loaded from: classes7.dex */
public final class FragmentCaptionColorBinding implements ViewBinding {

    @NonNull
    public final CaptionColorRecyclerView colorPicker;

    @NonNull
    public final TextView opacity;

    @NonNull
    public final TextView progressText;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final SeekBar seekBar;

    @NonNull
    public final FrameLayout seekBarParent;

    @NonNull
    public static FragmentCaptionColorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentCaptionColorBinding bind(@NonNull View view) {
        int i10 = R.id.color_picker;
        CaptionColorRecyclerView captionColorRecyclerView = (CaptionColorRecyclerView) ViewBindings.a(view, i10);
        if (captionColorRecyclerView != null) {
            i10 = R.id.opacity;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.progress_text;
                TextView textView2 = (TextView) ViewBindings.a(view, i10);
                if (textView2 != null) {
                    i10 = R.id.seek_bar;
                    SeekBar seekBar = (SeekBar) ViewBindings.a(view, i10);
                    if (seekBar != null) {
                        i10 = R.id.seek_bar_parent;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                        if (frameLayout != null) {
                            return new FragmentCaptionColorBinding((LinearLayout) view, captionColorRecyclerView, textView, textView2, seekBar, frameLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentCaptionColorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_caption_color, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentCaptionColorBinding(@NonNull LinearLayout linearLayout, @NonNull CaptionColorRecyclerView captionColorRecyclerView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SeekBar seekBar, @NonNull FrameLayout frameLayout) {
        this.rootView = linearLayout;
        this.colorPicker = captionColorRecyclerView;
        this.opacity = textView;
        this.progressText = textView2;
        this.seekBar = seekBar;
        this.seekBarParent = frameLayout;
    }
}
