package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.monetization.bubble.BubbleEditView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes8.dex */
public final class FragmentBubbleEditBinding implements ViewBinding {

    @NonNull
    public final TextView actionbarTitle;

    @NonNull
    public final BubbleEditView bubbleEditor;

    @NonNull
    public final FrameLayout bubblePickerContainer;

    @NonNull
    public final FrameLayout bubblePreviewContainer;

    @NonNull
    public final ImageView close;

    @NonNull
    public final FlexLayout content;

    @NonNull
    public final LinearLayout fakeActionBar;

    @NonNull
    public final LinearLayout hideSticker;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView saveBubble;

    @NonNull
    public final FrameLayout stickerFrame;

    @NonNull
    public final LinearLayout stickerPickerContainer;

    @NonNull
    public static FragmentBubbleEditBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentBubbleEditBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_title;
        TextView textView = (TextView) ViewBindings.a(view, R.id.actionbar_title);
        if (textView != null) {
            i10 = R.id.bubble_editor;
            BubbleEditView bubbleEditView = (BubbleEditView) ViewBindings.a(view, R.id.bubble_editor);
            if (bubbleEditView != null) {
                i10 = R.id.bubble_picker_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.bubble_picker_container);
                if (frameLayout != null) {
                    i10 = R.id.bubble_preview_container;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.bubble_preview_container);
                    if (frameLayout2 != null) {
                        i10 = R.id.close;
                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.close);
                        if (imageView != null) {
                            i10 = R.id.content;
                            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.content);
                            if (flexLayout != null) {
                                i10 = R.id.fake_action_bar;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.fake_action_bar);
                                if (linearLayout != null) {
                                    i10 = R.id.hide_sticker;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.hide_sticker);
                                    if (linearLayout2 != null) {
                                        i10 = android.R.id.progress;
                                        SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                                        if (spinningView != null) {
                                            i10 = R.id.save_bubble;
                                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.save_bubble);
                                            if (textView2 != null) {
                                                i10 = R.id.sticker_frame;
                                                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.sticker_frame);
                                                if (frameLayout3 != null) {
                                                    i10 = R.id.sticker_picker_container;
                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.sticker_picker_container);
                                                    if (linearLayout3 != null) {
                                                        return new FragmentBubbleEditBinding((LinearLayout) view, textView, bubbleEditView, frameLayout, frameLayout2, imageView, flexLayout, linearLayout, linearLayout2, spinningView, textView2, frameLayout3, linearLayout3);
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
    public static FragmentBubbleEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_bubble_edit, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentBubbleEditBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull BubbleEditView bubbleEditView, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull FlexLayout flexLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull SpinningView spinningView, @NonNull TextView textView2, @NonNull FrameLayout frameLayout3, @NonNull LinearLayout linearLayout4) {
        this.rootView = linearLayout;
        this.actionbarTitle = textView;
        this.bubbleEditor = bubbleEditView;
        this.bubblePickerContainer = frameLayout;
        this.bubblePreviewContainer = frameLayout2;
        this.close = imageView;
        this.content = flexLayout;
        this.fakeActionBar = linearLayout2;
        this.hideSticker = linearLayout3;
        this.progress = spinningView;
        this.saveBubble = textView2;
        this.stickerFrame = frameLayout3;
        this.stickerPickerContainer = linearLayout4;
    }
}
