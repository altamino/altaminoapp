package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.RadiusLayout;

/* JADX INFO: loaded from: classes11.dex */
public final class MediaAudioOnlinePickerSortSelectBinding implements ViewBinding {

    @NonNull
    public final LinearLayout popupList;

    @NonNull
    private final RadiusLayout rootView;

    @NonNull
    public final LinearLayout sortSelectDefault;

    @NonNull
    public final LinearLayout sortSelectLongest;

    @NonNull
    public final LinearLayout sortSelectRelevance;

    @NonNull
    public final LinearLayout sortSelectShortest;

    @NonNull
    public final ImageView sortSelectedDefault;

    @NonNull
    public final ImageView sortSelectedLongest;

    @NonNull
    public final ImageView sortSelectedRelevance;

    @NonNull
    public final ImageView sortSelectedShortest;

    @NonNull
    public static MediaAudioOnlinePickerSortSelectBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RadiusLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaAudioOnlinePickerSortSelectBinding bind(@NonNull View view) {
        int i10 = R.id.popup_list;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
        if (linearLayout != null) {
            i10 = R.id.sort_select_default;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, i10);
            if (linearLayout2 != null) {
                i10 = R.id.sort_select_longest;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, i10);
                if (linearLayout3 != null) {
                    i10 = R.id.sort_select_relevance;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, i10);
                    if (linearLayout4 != null) {
                        i10 = R.id.sort_select_shortest;
                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, i10);
                        if (linearLayout5 != null) {
                            i10 = R.id.sort_selected_default;
                            ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                            if (imageView != null) {
                                i10 = R.id.sort_selected_longest;
                                ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                                if (imageView2 != null) {
                                    i10 = R.id.sort_selected_relevance;
                                    ImageView imageView3 = (ImageView) ViewBindings.a(view, i10);
                                    if (imageView3 != null) {
                                        i10 = R.id.sort_selected_shortest;
                                        ImageView imageView4 = (ImageView) ViewBindings.a(view, i10);
                                        if (imageView4 != null) {
                                            return new MediaAudioOnlinePickerSortSelectBinding((RadiusLayout) view, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, imageView, imageView2, imageView3, imageView4);
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
    public static MediaAudioOnlinePickerSortSelectBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_audio_online_picker_sort_select, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaAudioOnlinePickerSortSelectBinding(@NonNull RadiusLayout radiusLayout, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4) {
        this.rootView = radiusLayout;
        this.popupList = linearLayout;
        this.sortSelectDefault = linearLayout2;
        this.sortSelectLongest = linearLayout3;
        this.sortSelectRelevance = linearLayout4;
        this.sortSelectShortest = linearLayout5;
        this.sortSelectedDefault = imageView;
        this.sortSelectedLongest = imageView2;
        this.sortSelectedRelevance = imageView3;
        this.sortSelectedShortest = imageView4;
    }
}
