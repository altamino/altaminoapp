package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes5.dex */
public final class MediaAudioPickerBinding implements ViewBinding {

    @NonNull
    public final TextView empty;

    @NonNull
    public final SpinningView loading;

    @NonNull
    public final ListView mainList;

    @NonNull
    public final ListView mediaGalleryList;

    @NonNull
    public final View mediaImageGalleryMask;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final View stub1;

    @NonNull
    public static MediaAudioPickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaAudioPickerBinding bind(@NonNull View view) {
        View viewA;
        View viewA2;
        int i10 = R.id.empty;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.loading;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, i10);
            if (spinningView != null) {
                i10 = R.id.main_list;
                ListView listView = (ListView) ViewBindings.a(view, i10);
                if (listView != null) {
                    i10 = R.id.media_gallery_list;
                    ListView listView2 = (ListView) ViewBindings.a(view, i10);
                    if (listView2 != null && (viewA = ViewBindings.a(view, (i10 = R.id.media_image_gallery_mask))) != null && (viewA2 = ViewBindings.a(view, (i10 = R.id.stub1))) != null) {
                        return new MediaAudioPickerBinding((RelativeLayout) view, textView, spinningView, listView, listView2, viewA, viewA2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MediaAudioPickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_audio_picker, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaAudioPickerBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull SpinningView spinningView, @NonNull ListView listView, @NonNull ListView listView2, @NonNull View view, @NonNull View view2) {
        this.rootView = relativeLayout;
        this.empty = textView;
        this.loading = spinningView;
        this.mainList = listView;
        this.mediaGalleryList = listView2;
        this.mediaImageGalleryMask = view;
        this.stub1 = view2;
    }
}
