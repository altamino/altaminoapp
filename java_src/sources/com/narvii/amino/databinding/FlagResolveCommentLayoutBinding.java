package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.sticker.widget.CommentStickerImageVIew;
import com.narvii.widget.EmojioneView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes9.dex */
public final class FlagResolveCommentLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView commentContent;

    @NonNull
    public final Button commentSeeAll;

    @NonNull
    public final TextView commentTime;

    @NonNull
    public final LinearLayout contentContainer;

    @NonNull
    public final EmojioneView emojiSticker;

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final CommentStickerImageVIew stickerImage;

    @NonNull
    public static FlagResolveCommentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlagResolveCommentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_resolve_comment_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlagResolveCommentLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull Button button, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull EmojioneView emojioneView, @NonNull FrameLayout frameLayout2, @NonNull NicknameView nicknameView, @NonNull SpinningView spinningView, @NonNull CommentStickerImageVIew commentStickerImageVIew) {
        this.rootView = frameLayout;
        this.commentContent = textView;
        this.commentSeeAll = button;
        this.commentTime = textView2;
        this.contentContainer = linearLayout;
        this.emojiSticker = emojioneView;
        this.listFrame = frameLayout2;
        this.nickname = nicknameView;
        this.progress = spinningView;
        this.stickerImage = commentStickerImageVIew;
    }

    @NonNull
    public static FlagResolveCommentLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.comment_content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.comment_content);
        if (textView != null) {
            i10 = R.id.comment_see_all;
            Button button = (Button) ViewBindings.a(view, R.id.comment_see_all);
            if (button != null) {
                i10 = R.id.comment_time;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.comment_time);
                if (textView2 != null) {
                    i10 = R.id.content_container;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.content_container);
                    if (linearLayout != null) {
                        i10 = R.id.emoji_sticker;
                        EmojioneView emojioneView = (EmojioneView) ViewBindings.a(view, R.id.emoji_sticker);
                        if (emojioneView != null) {
                            FrameLayout frameLayout = (FrameLayout) view;
                            i10 = R.id.nickname;
                            NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                            if (nicknameView != null) {
                                i10 = android.R.id.progress;
                                SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                                if (spinningView != null) {
                                    i10 = R.id.sticker_image;
                                    CommentStickerImageVIew commentStickerImageVIew = (CommentStickerImageVIew) ViewBindings.a(view, R.id.sticker_image);
                                    if (commentStickerImageVIew != null) {
                                        return new FlagResolveCommentLayoutBinding(frameLayout, textView, button, textView2, linearLayout, emojioneView, frameLayout, nicknameView, spinningView, commentStickerImageVIew);
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
