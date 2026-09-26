package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVScrollView;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentScenePollPostBinding implements ViewBinding {

    @NonNull
    public final RelativeLayout addOption;

    @NonNull
    public final NVImageView bg;

    @NonNull
    public final FrameLayout deleteContainer;

    @NonNull
    public final ImageView deleteIv;

    @NonNull
    public final LinearLayout optionsContainer;

    @NonNull
    public final LinearLayout root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final NVScrollView scrollView;

    @NonNull
    public final EditText title;

    @NonNull
    public final View topPlaceholder;

    @NonNull
    public static FragmentScenePollPostBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentScenePollPostBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.add_option;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, i10);
        if (relativeLayout != null) {
            i10 = R.id.bg;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
            if (nVImageView != null) {
                i10 = R.id.delete_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                if (frameLayout != null) {
                    i10 = R.id.delete_iv;
                    ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                    if (imageView != null) {
                        i10 = R.id.options_container;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                        if (linearLayout != null) {
                            i10 = R.id.root;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, i10);
                            if (linearLayout2 != null) {
                                i10 = R.id.scroll_view;
                                NVScrollView nVScrollView = (NVScrollView) ViewBindings.a(view, i10);
                                if (nVScrollView != null) {
                                    i10 = R.id.title;
                                    EditText editText = (EditText) ViewBindings.a(view, i10);
                                    if (editText != null && (viewA = ViewBindings.a(view, (i10 = R.id.top_placeholder))) != null) {
                                        return new FragmentScenePollPostBinding((FrameLayout) view, relativeLayout, nVImageView, frameLayout, imageView, linearLayout, linearLayout2, nVScrollView, editText, viewA);
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
    public static FragmentScenePollPostBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_scene_poll_post, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentScenePollPostBinding(@NonNull FrameLayout frameLayout, @NonNull RelativeLayout relativeLayout, @NonNull NVImageView nVImageView, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull NVScrollView nVScrollView, @NonNull EditText editText, @NonNull View view) {
        this.rootView = frameLayout;
        this.addOption = relativeLayout;
        this.bg = nVImageView;
        this.deleteContainer = frameLayout2;
        this.deleteIv = imageView;
        this.optionsContainer = linearLayout;
        this.root = linearLayout2;
        this.scrollView = nVScrollView;
        this.title = editText;
        this.topPlaceholder = view;
    }
}
