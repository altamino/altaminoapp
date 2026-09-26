package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.comment.post.CommentEditText;
import com.narvii.comment.post.CommentPostLayout;
import com.narvii.widget.DragSortGallery;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes4.dex */
public final class PostCommentLayoutBinding implements ViewBinding {

    @NonNull
    public final DragSortGallery commentImages;

    @NonNull
    public final CommentEditText content;

    @NonNull
    public final FontAwesomeView icon1;

    @NonNull
    public final FontAwesomeView icon2;

    @NonNull
    public final FontAwesomeView icon3;

    @NonNull
    public final FontAwesomeView icon4;

    @NonNull
    public final FontAwesomeView icon5;

    @NonNull
    public final FrameLayout image1;

    @NonNull
    public final ThumbImageView image11;

    @NonNull
    public final FrameLayout image2;

    @NonNull
    public final ThumbImageView image21;

    @NonNull
    public final FrameLayout image3;

    @NonNull
    public final ThumbImageView image31;

    @NonNull
    public final FrameLayout image4;

    @NonNull
    public final ThumbImageView image41;

    @NonNull
    public final FrameLayout image5;

    @NonNull
    public final ThumbImageView image51;

    @NonNull
    public final FrameLayout panelLayout;

    @NonNull
    public final TintButton pickMedia;

    @NonNull
    public final ImageView post;

    @NonNull
    private final CommentPostLayout rootView;

    @NonNull
    public final FrameLayout stickerButtonContainer;

    @NonNull
    public final ImageView stickerEntry;

    @NonNull
    public final TintButton stickerKeyboard;

    @NonNull
    public final FrameLayout stickerPanel;

    @NonNull
    public final FrameLayout stub1;

    @NonNull
    public final View stub3;

    @NonNull
    public final FrameLayout stub4;

    private PostCommentLayoutBinding(@NonNull CommentPostLayout commentPostLayout, @NonNull DragSortGallery dragSortGallery, @NonNull CommentEditText commentEditText, @NonNull FontAwesomeView fontAwesomeView, @NonNull FontAwesomeView fontAwesomeView2, @NonNull FontAwesomeView fontAwesomeView3, @NonNull FontAwesomeView fontAwesomeView4, @NonNull FontAwesomeView fontAwesomeView5, @NonNull FrameLayout frameLayout, @NonNull ThumbImageView thumbImageView, @NonNull FrameLayout frameLayout2, @NonNull ThumbImageView thumbImageView2, @NonNull FrameLayout frameLayout3, @NonNull ThumbImageView thumbImageView3, @NonNull FrameLayout frameLayout4, @NonNull ThumbImageView thumbImageView4, @NonNull FrameLayout frameLayout5, @NonNull ThumbImageView thumbImageView5, @NonNull FrameLayout frameLayout6, @NonNull TintButton tintButton, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout7, @NonNull ImageView imageView2, @NonNull TintButton tintButton2, @NonNull FrameLayout frameLayout8, @NonNull FrameLayout frameLayout9, @NonNull View view, @NonNull FrameLayout frameLayout10) {
        this.rootView = commentPostLayout;
        this.commentImages = dragSortGallery;
        this.content = commentEditText;
        this.icon1 = fontAwesomeView;
        this.icon2 = fontAwesomeView2;
        this.icon3 = fontAwesomeView3;
        this.icon4 = fontAwesomeView4;
        this.icon5 = fontAwesomeView5;
        this.image1 = frameLayout;
        this.image11 = thumbImageView;
        this.image2 = frameLayout2;
        this.image21 = thumbImageView2;
        this.image3 = frameLayout3;
        this.image31 = thumbImageView3;
        this.image4 = frameLayout4;
        this.image41 = thumbImageView4;
        this.image5 = frameLayout5;
        this.image51 = thumbImageView5;
        this.panelLayout = frameLayout6;
        this.pickMedia = tintButton;
        this.post = imageView;
        this.stickerButtonContainer = frameLayout7;
        this.stickerEntry = imageView2;
        this.stickerKeyboard = tintButton2;
        this.stickerPanel = frameLayout8;
        this.stub1 = frameLayout9;
        this.stub3 = view;
        this.stub4 = frameLayout10;
    }

    @NonNull
    public static PostCommentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public CommentPostLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostCommentLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.comment_images;
        DragSortGallery dragSortGallery = (DragSortGallery) ViewBindings.a(view, R.id.comment_images);
        if (dragSortGallery != null) {
            i10 = R.id.content;
            CommentEditText commentEditText = (CommentEditText) ViewBindings.a(view, R.id.content);
            if (commentEditText != null) {
                i10 = R.id.icon_1;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.icon_1);
                if (fontAwesomeView != null) {
                    i10 = R.id.icon_2;
                    FontAwesomeView fontAwesomeView2 = (FontAwesomeView) ViewBindings.a(view, R.id.icon_2);
                    if (fontAwesomeView2 != null) {
                        i10 = R.id.icon_3;
                        FontAwesomeView fontAwesomeView3 = (FontAwesomeView) ViewBindings.a(view, R.id.icon_3);
                        if (fontAwesomeView3 != null) {
                            i10 = R.id.icon_4;
                            FontAwesomeView fontAwesomeView4 = (FontAwesomeView) ViewBindings.a(view, R.id.icon_4);
                            if (fontAwesomeView4 != null) {
                                i10 = R.id.icon_5;
                                FontAwesomeView fontAwesomeView5 = (FontAwesomeView) ViewBindings.a(view, R.id.icon_5);
                                if (fontAwesomeView5 != null) {
                                    i10 = R.id.image1;
                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.image1);
                                    if (frameLayout != null) {
                                        i10 = R.id.image_1;
                                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image_1);
                                        if (thumbImageView != null) {
                                            i10 = R.id.image2;
                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.image2);
                                            if (frameLayout2 != null) {
                                                i10 = R.id.image_2;
                                                ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.image_2);
                                                if (thumbImageView2 != null) {
                                                    i10 = R.id.image3;
                                                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.image3);
                                                    if (frameLayout3 != null) {
                                                        i10 = R.id.image_3;
                                                        ThumbImageView thumbImageView3 = (ThumbImageView) ViewBindings.a(view, R.id.image_3);
                                                        if (thumbImageView3 != null) {
                                                            i10 = R.id.image4;
                                                            FrameLayout frameLayout4 = (FrameLayout) ViewBindings.a(view, R.id.image4);
                                                            if (frameLayout4 != null) {
                                                                i10 = R.id.image_4;
                                                                ThumbImageView thumbImageView4 = (ThumbImageView) ViewBindings.a(view, R.id.image_4);
                                                                if (thumbImageView4 != null) {
                                                                    i10 = R.id.image5;
                                                                    FrameLayout frameLayout5 = (FrameLayout) ViewBindings.a(view, R.id.image5);
                                                                    if (frameLayout5 != null) {
                                                                        i10 = R.id.image_5;
                                                                        ThumbImageView thumbImageView5 = (ThumbImageView) ViewBindings.a(view, R.id.image_5);
                                                                        if (thumbImageView5 != null) {
                                                                            i10 = R.id.panel_layout;
                                                                            FrameLayout frameLayout6 = (FrameLayout) ViewBindings.a(view, R.id.panel_layout);
                                                                            if (frameLayout6 != null) {
                                                                                i10 = R.id.pick_media;
                                                                                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.pick_media);
                                                                                if (tintButton != null) {
                                                                                    i10 = R.id.post;
                                                                                    ImageView imageView = (ImageView) ViewBindings.a(view, R.id.post);
                                                                                    if (imageView != null) {
                                                                                        i10 = R.id.sticker_button_container;
                                                                                        FrameLayout frameLayout7 = (FrameLayout) ViewBindings.a(view, R.id.sticker_button_container);
                                                                                        if (frameLayout7 != null) {
                                                                                            i10 = R.id.sticker_entry;
                                                                                            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.sticker_entry);
                                                                                            if (imageView2 != null) {
                                                                                                i10 = R.id.sticker_keyboard;
                                                                                                TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.sticker_keyboard);
                                                                                                if (tintButton2 != null) {
                                                                                                    i10 = R.id.sticker_panel;
                                                                                                    FrameLayout frameLayout8 = (FrameLayout) ViewBindings.a(view, R.id.sticker_panel);
                                                                                                    if (frameLayout8 != null) {
                                                                                                        i10 = R.id.stub1;
                                                                                                        FrameLayout frameLayout9 = (FrameLayout) ViewBindings.a(view, R.id.stub1);
                                                                                                        if (frameLayout9 != null) {
                                                                                                            i10 = R.id.stub3;
                                                                                                            View viewA = ViewBindings.a(view, R.id.stub3);
                                                                                                            if (viewA != null) {
                                                                                                                i10 = R.id.stub4;
                                                                                                                FrameLayout frameLayout10 = (FrameLayout) ViewBindings.a(view, R.id.stub4);
                                                                                                                if (frameLayout10 != null) {
                                                                                                                    return new PostCommentLayoutBinding((CommentPostLayout) view, dragSortGallery, commentEditText, fontAwesomeView, fontAwesomeView2, fontAwesomeView3, fontAwesomeView4, fontAwesomeView5, frameLayout, thumbImageView, frameLayout2, thumbImageView2, frameLayout3, thumbImageView3, frameLayout4, thumbImageView4, frameLayout5, thumbImageView5, frameLayout6, tintButton, imageView, frameLayout7, imageView2, tintButton2, frameLayout8, frameLayout9, viewA, frameLayout10);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PostCommentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_comment_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
