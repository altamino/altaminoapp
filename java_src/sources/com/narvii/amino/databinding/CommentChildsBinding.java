package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.comment.list.CommentImagesLayout;
import com.narvii.monetization.sticker.widget.CommentStickerImageVIew;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.EmojioneView;
import com.narvii.widget.ExpandTextView;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class CommentChildsBinding implements ViewBinding {

    @NonNull
    public final CommentImagesLayout commentImages;

    @NonNull
    public final TextView commentReply;

    @NonNull
    public final ViewStub commentVotes;

    @NonNull
    public final ExpandTextView content;

    @NonNull
    public final TextView datetime;

    @NonNull
    public final EmojioneView emojiSticker;

    @NonNull
    public final FrameLayout expand;

    @NonNull
    public final ThumbImageView image1;

    @NonNull
    public final ThumbImageView image2;

    @NonNull
    public final ThumbImageView image3;

    @NonNull
    public final ThumbImageView image4;

    @NonNull
    public final ThumbImageView image5;

    @NonNull
    public final NicknameView nickname;

    @NonNull
    public final FrameLayout rightLayout;

    @NonNull
    private final View rootView;

    @NonNull
    public final CommentStickerImageVIew stickerImage;

    @NonNull
    public final AutoSizingTextView voteCount2;

    @NonNull
    public final FontAwesomeView voteHeart2;

    @NonNull
    public final SpinningView voteProgress2;

    private CommentChildsBinding(@NonNull View view, @NonNull CommentImagesLayout commentImagesLayout, @NonNull TextView textView, @NonNull ViewStub viewStub, @NonNull ExpandTextView expandTextView, @NonNull TextView textView2, @NonNull EmojioneView emojioneView, @NonNull FrameLayout frameLayout, @NonNull ThumbImageView thumbImageView, @NonNull ThumbImageView thumbImageView2, @NonNull ThumbImageView thumbImageView3, @NonNull ThumbImageView thumbImageView4, @NonNull ThumbImageView thumbImageView5, @NonNull NicknameView nicknameView, @NonNull FrameLayout frameLayout2, @NonNull CommentStickerImageVIew commentStickerImageVIew, @NonNull AutoSizingTextView autoSizingTextView, @NonNull FontAwesomeView fontAwesomeView, @NonNull SpinningView spinningView) {
        this.rootView = view;
        this.commentImages = commentImagesLayout;
        this.commentReply = textView;
        this.commentVotes = viewStub;
        this.content = expandTextView;
        this.datetime = textView2;
        this.emojiSticker = emojioneView;
        this.expand = frameLayout;
        this.image1 = thumbImageView;
        this.image2 = thumbImageView2;
        this.image3 = thumbImageView3;
        this.image4 = thumbImageView4;
        this.image5 = thumbImageView5;
        this.nickname = nicknameView;
        this.rightLayout = frameLayout2;
        this.stickerImage = commentStickerImageVIew;
        this.voteCount2 = autoSizingTextView;
        this.voteHeart2 = fontAwesomeView;
        this.voteProgress2 = spinningView;
    }

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CommentChildsBinding bind(@NonNull View view) {
        int i10 = R.id.comment_images;
        CommentImagesLayout commentImagesLayout = (CommentImagesLayout) ViewBindings.a(view, R.id.comment_images);
        if (commentImagesLayout != null) {
            i10 = R.id.comment_reply;
            TextView textView = (TextView) ViewBindings.a(view, R.id.comment_reply);
            if (textView != null) {
                i10 = R.id.comment_votes;
                ViewStub viewStub = (ViewStub) ViewBindings.a(view, R.id.comment_votes);
                if (viewStub != null) {
                    i10 = R.id.content;
                    ExpandTextView expandTextView = (ExpandTextView) ViewBindings.a(view, R.id.content);
                    if (expandTextView != null) {
                        i10 = R.id.datetime;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.datetime);
                        if (textView2 != null) {
                            i10 = R.id.emoji_sticker;
                            EmojioneView emojioneView = (EmojioneView) ViewBindings.a(view, R.id.emoji_sticker);
                            if (emojioneView != null) {
                                i10 = R.id.expand;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.expand);
                                if (frameLayout != null) {
                                    i10 = R.id.image1;
                                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image1);
                                    if (thumbImageView != null) {
                                        i10 = R.id.image2;
                                        ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.image2);
                                        if (thumbImageView2 != null) {
                                            i10 = R.id.image3;
                                            ThumbImageView thumbImageView3 = (ThumbImageView) ViewBindings.a(view, R.id.image3);
                                            if (thumbImageView3 != null) {
                                                i10 = R.id.image4;
                                                ThumbImageView thumbImageView4 = (ThumbImageView) ViewBindings.a(view, R.id.image4);
                                                if (thumbImageView4 != null) {
                                                    i10 = R.id.image5;
                                                    ThumbImageView thumbImageView5 = (ThumbImageView) ViewBindings.a(view, R.id.image5);
                                                    if (thumbImageView5 != null) {
                                                        i10 = R.id.nickname;
                                                        NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname);
                                                        if (nicknameView != null) {
                                                            i10 = R.id.right_layout;
                                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.right_layout);
                                                            if (frameLayout2 != null) {
                                                                i10 = R.id.sticker_image;
                                                                CommentStickerImageVIew commentStickerImageVIew = (CommentStickerImageVIew) ViewBindings.a(view, R.id.sticker_image);
                                                                if (commentStickerImageVIew != null) {
                                                                    i10 = R.id.vote_count2;
                                                                    AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.vote_count2);
                                                                    if (autoSizingTextView != null) {
                                                                        i10 = R.id.vote_heart2;
                                                                        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.vote_heart2);
                                                                        if (fontAwesomeView != null) {
                                                                            i10 = R.id.vote_progress2;
                                                                            SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.vote_progress2);
                                                                            if (spinningView != null) {
                                                                                return new CommentChildsBinding(view, commentImagesLayout, textView, viewStub, expandTextView, textView2, emojioneView, frameLayout, thumbImageView, thumbImageView2, thumbImageView3, thumbImageView4, thumbImageView5, nicknameView, frameLayout2, commentStickerImageVIew, autoSizingTextView, fontAwesomeView, spinningView);
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
    public static CommentChildsBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.comment_childs, viewGroup);
        return bind(viewGroup);
    }
}
