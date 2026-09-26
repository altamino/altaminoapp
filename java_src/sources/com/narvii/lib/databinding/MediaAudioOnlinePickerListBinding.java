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
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes9.dex */
public final class MediaAudioOnlinePickerListBinding implements ViewBinding {

    @NonNull
    public final FrameLayout filterAndSourt;

    @NonNull
    public final AutoSizingTextView filterCount;

    @NonNull
    public final NVImageView filterEntrance;

    @NonNull
    public final TextView filterResultCount;

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout sortFilter;

    @NonNull
    public final TextView sortText;

    @NonNull
    public static MediaAudioOnlinePickerListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaAudioOnlinePickerListBinding bind(@NonNull View view) {
        int i10 = R.id.filter_and_sourt;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
        if (frameLayout != null) {
            i10 = R.id.filter_count;
            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, i10);
            if (autoSizingTextView != null) {
                i10 = R.id.filter_entrance;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
                if (nVImageView != null) {
                    i10 = R.id.filter_result_count;
                    TextView textView = (TextView) ViewBindings.a(view, i10);
                    if (textView != null) {
                        i10 = R.id.list_frame;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, i10);
                        if (frameLayout2 != null) {
                            i10 = android.R.id.progress;
                            SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                            if (spinningView != null) {
                                i10 = R.id.sort_filter;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                                if (linearLayout != null) {
                                    i10 = R.id.sort_text;
                                    TextView textView2 = (TextView) ViewBindings.a(view, i10);
                                    if (textView2 != null) {
                                        return new MediaAudioOnlinePickerListBinding((LinearLayout) view, frameLayout, autoSizingTextView, nVImageView, textView, frameLayout2, spinningView, linearLayout, textView2);
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
    public static MediaAudioOnlinePickerListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_audio_online_picker_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaAudioOnlinePickerListBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull AutoSizingTextView autoSizingTextView, @NonNull NVImageView nVImageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull SpinningView spinningView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.filterAndSourt = frameLayout;
        this.filterCount = autoSizingTextView;
        this.filterEntrance = nVImageView;
        this.filterResultCount = textView;
        this.listFrame = frameLayout2;
        this.progress = spinningView;
        this.sortFilter = linearLayout2;
        this.sortText = textView2;
    }
}
