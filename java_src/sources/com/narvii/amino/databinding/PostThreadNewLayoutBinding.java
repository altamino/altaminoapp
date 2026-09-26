package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatBackgroundPickerRecycler;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.widget.EditTextIMG;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class PostThreadNewLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout addCoverImageHint;

    @NonNull
    public final ChatBackgroundPickerRecycler chatBackgroundPicker;

    @NonNull
    public final FrameLayout chatBgFrame;

    @NonNull
    public final TextView chatShowGuideline;

    @NonNull
    public final EditTextIMG content;

    @NonNull
    public final TextView coverImageHint;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final LinearLayout root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final EditText title;

    @NonNull
    public final FrameLayout topicLayout;

    @NonNull
    public final NVFlowLayout topicParent;

    @NonNull
    public static PostThreadNewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostThreadNewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_thread_new_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostThreadNewLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull ChatBackgroundPickerRecycler chatBackgroundPickerRecycler, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull EditTextIMG editTextIMG, @NonNull TextView textView2, @NonNull ThumbImageView thumbImageView, @NonNull LinearLayout linearLayout2, @NonNull EditText editText, @NonNull FrameLayout frameLayout3, @NonNull NVFlowLayout nVFlowLayout) {
        this.rootView = frameLayout;
        this.addCoverImageHint = linearLayout;
        this.chatBackgroundPicker = chatBackgroundPickerRecycler;
        this.chatBgFrame = frameLayout2;
        this.chatShowGuideline = textView;
        this.content = editTextIMG;
        this.coverImageHint = textView2;
        this.image = thumbImageView;
        this.root = linearLayout2;
        this.title = editText;
        this.topicLayout = frameLayout3;
        this.topicParent = nVFlowLayout;
    }

    @NonNull
    public static PostThreadNewLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.add_cover_image_hint;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.add_cover_image_hint);
        if (linearLayout != null) {
            i10 = R.id.chat_background_picker;
            ChatBackgroundPickerRecycler chatBackgroundPickerRecycler = (ChatBackgroundPickerRecycler) ViewBindings.a(view, R.id.chat_background_picker);
            if (chatBackgroundPickerRecycler != null) {
                i10 = R.id.chat_bg_frame;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.chat_bg_frame);
                if (frameLayout != null) {
                    i10 = R.id.chat_show_guideline;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.chat_show_guideline);
                    if (textView != null) {
                        i10 = R.id.content;
                        EditTextIMG editTextIMG = (EditTextIMG) ViewBindings.a(view, R.id.content);
                        if (editTextIMG != null) {
                            i10 = R.id.cover_image_hint;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.cover_image_hint);
                            if (textView2 != null) {
                                i10 = R.id.image;
                                ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
                                if (thumbImageView != null) {
                                    i10 = R.id.root;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.root);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.title;
                                        EditText editText = (EditText) ViewBindings.a(view, R.id.title);
                                        if (editText != null) {
                                            i10 = R.id.topic_layout;
                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.topic_layout);
                                            if (frameLayout2 != null) {
                                                i10 = R.id.topic_parent;
                                                NVFlowLayout nVFlowLayout = (NVFlowLayout) ViewBindings.a(view, R.id.topic_parent);
                                                if (nVFlowLayout != null) {
                                                    return new PostThreadNewLayoutBinding((FrameLayout) view, linearLayout, chatBackgroundPickerRecycler, frameLayout, textView, editTextIMG, textView2, thumbImageView, linearLayout2, editText, frameLayout2, nVFlowLayout);
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
}
