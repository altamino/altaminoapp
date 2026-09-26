package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes3.dex */
public final class MediaImagePickerBinding implements ViewBinding {

    @NonNull
    public final TextView empty;

    @NonNull
    public final GridView grid;

    @NonNull
    public final SpinningView loading;

    @NonNull
    public final ListView mediaImageGalleryList;

    @NonNull
    public final View mediaImageGalleryMask;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final View stub1;

    @NonNull
    public static MediaImagePickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaImagePickerBinding bind(@NonNull View view) {
        View viewA;
        View viewA2;
        int i10 = R.id.empty;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.grid;
            GridView gridView = (GridView) ViewBindings.a(view, i10);
            if (gridView != null) {
                i10 = R.id.loading;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, i10);
                if (spinningView != null) {
                    i10 = R.id.media_image_gallery_list;
                    ListView listView = (ListView) ViewBindings.a(view, i10);
                    if (listView != null && (viewA = ViewBindings.a(view, (i10 = R.id.media_image_gallery_mask))) != null && (viewA2 = ViewBindings.a(view, (i10 = R.id.stub1))) != null) {
                        return new MediaImagePickerBinding((RelativeLayout) view, textView, gridView, spinningView, listView, viewA, viewA2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MediaImagePickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_image_picker, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaImagePickerBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull GridView gridView, @NonNull SpinningView spinningView, @NonNull ListView listView, @NonNull View view, @NonNull View view2) {
        this.rootView = relativeLayout;
        this.empty = textView;
        this.grid = gridView;
        this.loading = spinningView;
        this.mediaImageGalleryList = listView;
        this.mediaImageGalleryMask = view;
        this.stub1 = view2;
    }
}
