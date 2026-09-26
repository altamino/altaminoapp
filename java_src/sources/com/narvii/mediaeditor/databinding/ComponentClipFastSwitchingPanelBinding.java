package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;

/* JADX INFO: loaded from: classes9.dex */
public final class ComponentClipFastSwitchingPanelBinding implements ViewBinding {

    @NonNull
    public final FrameLayout clipFrame;

    @NonNull
    public final RecyclerView clipList;

    @NonNull
    public final LinearLayout clipOptionPanel;

    @NonNull
    public final LinearLayout optionCrop;

    @NonNull
    public final LinearLayout optionMusic;

    @NonNull
    public final LinearLayout optionRemove;

    @NonNull
    public final LinearLayout optionSpeed;

    @NonNull
    public final LinearLayout optionTrim;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ComponentClipFastSwitchingPanelBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ComponentClipFastSwitchingPanelBinding bind(@NonNull View view) {
        int i10 = R.id.clip_frame;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
        if (frameLayout != null) {
            i10 = R.id.clip_list;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.a(view, i10);
            if (recyclerView != null) {
                i10 = R.id.clip_option_panel;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                if (linearLayout != null) {
                    i10 = R.id.option_crop;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, i10);
                    if (linearLayout2 != null) {
                        i10 = R.id.option_music;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, i10);
                        if (linearLayout3 != null) {
                            i10 = R.id.option_remove;
                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, i10);
                            if (linearLayout4 != null) {
                                i10 = R.id.option_speed;
                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, i10);
                                if (linearLayout5 != null) {
                                    i10 = R.id.option_trim;
                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.a(view, i10);
                                    if (linearLayout6 != null) {
                                        return new ComponentClipFastSwitchingPanelBinding((LinearLayout) view, frameLayout, recyclerView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6);
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
    public static ComponentClipFastSwitchingPanelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.component_clip_fast_switching_panel, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ComponentClipFastSwitchingPanelBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull RecyclerView recyclerView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7) {
        this.rootView = linearLayout;
        this.clipFrame = frameLayout;
        this.clipList = recyclerView;
        this.clipOptionPanel = linearLayout2;
        this.optionCrop = linearLayout3;
        this.optionMusic = linearLayout4;
        this.optionRemove = linearLayout5;
        this.optionSpeed = linearLayout6;
        this.optionTrim = linearLayout7;
    }
}
