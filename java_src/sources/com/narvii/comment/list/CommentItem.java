package com.narvii.comment.list;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.model.Comment;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.StringUtils;
import com.narvii.util.ViewUtils;
import com.narvii.util.text.NVText;
import com.narvii.util.text.OnTagClickListener;
import com.narvii.widget.EmojioneView;
import com.narvii.widget.ExpandTextView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.UserAvatarLayout;

/* JADX INFO: loaded from: classes7.dex */
public class CommentItem extends RelativeLayout {
    static int likeColorNormal;
    static int likeColorVote;
    static int voteColorDark;
    static int voteColorGray;
    static int voteColorGreen;
    static int voteColorRed;
    int backgroundColor;
    Comment comment;
    TextView commentReply;
    ExpandTextView content;
    boolean darkTheme;
    TextView datetime;
    EmojioneView emojioneView;
    DateTimeFormatter formatter;
    GestureDetector gd;
    boolean hasVotes;
    CommentImagesLayout images;
    NicknameView nickname;
    int nicknameMarginRight;
    StickerImageView stickerImageView;
    private UserAvatarLayout userAvatarLayout;
    public Callback<CommentItem> voteCallback;
    TextView voteCount;
    boolean voteDisabled;
    TextView voteHeart;
    SpinningView voteProgress;

    public CommentItem(Context context) {
        this(context, null);
    }

    public void disableVote() {
        this.voteDisabled = true;
        ViewUtils.show(this, R.id.right_layout, false);
    }

    public Comment getComment() {
        return this.comment;
    }

    public boolean hasVotes() {
        return this.hasVotes;
    }

    public void setIsMine(boolean z6) {
    }

    public CommentItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.voteDisabled = false;
        this.backgroundColor = 0;
        this.formatter = DateTimeFormatter.getInstance(context);
        if (voteColorDark == 0) {
            Resources resources = context.getResources();
            likeColorNormal = resources.getColor(R.color.datetime);
            likeColorVote = resources.getColor(R.color.feed_toolbar_like);
            voteColorDark = resources.getColor(R.color.vote_dark);
            voteColorGray = resources.getColor(R.color.vote_gray);
            voteColorGreen = resources.getColor(R.color.vote_green);
            voteColorRed = resources.getColor(R.color.vote_red);
        }
        this.gd = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.comment.list.CommentItem.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                CommentItem commentItem = CommentItem.this;
                Callback<CommentItem> callback = commentItem.voteCallback;
                if (callback == null) {
                    return true;
                }
                callback.call(commentItem);
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                CommentItem.this.performClick();
                return true;
            }
        });
    }

    private void updateViews() {
        this.nickname.setTextColor(ContextCompat.getColor(getContext(), this.darkTheme ? R.color.text_clickable_white : R.color.text_clickable));
        this.nickname.setDarkTheme(this.darkTheme);
        this.content.setTextColor(this.darkTheme ? -1 : -11184811);
        this.datetime.setTextColor(this.darkTheme ? -2130706433 : -5592406);
        this.voteProgress.setSpinColor(this.darkTheme ? -2130706433 : -5592406);
        this.userAvatarLayout.setDarkTheme(this.darkTheme, this.backgroundColor, true);
        this.voteCount.setTextColor(this.darkTheme ? -1 : -5592406);
        this.commentReply.setTextColor(this.darkTheme ? -1 : -5592406);
        CommentImagesLayout commentImagesLayout = this.images;
        if (commentImagesLayout != null) {
            commentImagesLayout.setDarkTheme(this.darkTheme);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.gd.onTouchEvent(motionEvent);
        return true;
    }

    public void setComment(Comment comment, OnTagClickListener onTagClickListener) {
        int i10;
        int i11;
        int i12;
        this.comment = comment;
        int i13 = 0;
        boolean z6 = comment.type == 3 && comment.getCommentSticker() == null;
        this.userAvatarLayout.setUser(comment.author);
        this.nickname.setUser(comment.author);
        this.datetime.setText(this.formatter.format(comment.modifiedTime));
        this.voteHeart.setText(getContext().getString(comment.votedValue > 0 ? R.string.fa_heart : R.string.fa_heart_o));
        this.voteHeart.setTextColor(comment.votedValue > 0 ? likeColorVote : likeColorNormal);
        TextView textView = this.voteCount;
        String str = "";
        if (comment.votesSum > 0) {
            str = comment.votesSum + "";
        }
        textView.setText(str);
        NVText nVText = new NVText(z6 ? getResources().getString(R.string.comment_not_available) : comment.content);
        nVText.setDarkTheme(this.darkTheme);
        nVText.markSimpleEntries(onTagClickListener);
        this.content.setText(!comment.isLegal() ? getContext().getString(R.string.upgrad_version_see_comment) : nVText);
        this.content.setVisibility((comment.isLegal() && TextUtils.isEmpty(nVText)) ? 8 : 0);
        this.images.setImages(comment.mediaList);
        Sticker commentSticker = comment.getCommentSticker();
        if (commentSticker == null || !comment.isLegal()) {
            this.stickerImageView.setVisibility(8);
            this.emojioneView.setVisibility(8);
        } else if (commentSticker.isLocalMood()) {
            this.emojioneView.setVisibility(0);
            this.stickerImageView.setVisibility(8);
            String str2 = commentSticker.icon;
            this.emojioneView.setEmoji(new String(StringUtils.hex2bytes(str2 == null ? null : str2.substring(15))));
        } else {
            this.stickerImageView.setVisibility(0);
            this.emojioneView.setVisibility(8);
            this.stickerImageView.setSticker(commentSticker);
        }
        if (this.hasVotes) {
            TextView textView2 = (TextView) findViewById(R.id.vote_up);
            if (comment.votedValue > 0) {
                i10 = voteColorGreen;
            } else {
                i10 = this.darkTheme ? -1 : voteColorGray;
            }
            textView2.setTextColor(i10);
            TextView textView3 = (TextView) findViewById(R.id.vote_down);
            if (comment.votedValue < 0) {
                i11 = voteColorRed;
            } else {
                i11 = this.darkTheme ? -1 : voteColorGray;
            }
            textView3.setTextColor(i11);
            TextView textView4 = (TextView) findViewById(R.id.vote_count);
            if (comment.votesSum < 0) {
                i12 = voteColorRed;
            } else {
                i12 = this.darkTheme ? -1 : voteColorDark;
            }
            textView4.setTextColor(i12);
            textView4.setText(String.valueOf(comment.votesSum));
            SpinningView spinningView = (SpinningView) findViewById(R.id.vote_progress);
            if (spinningView != null) {
                spinningView.setSpinColor(this.darkTheme ? -1 : -7829368);
            }
        }
        if (comment.votedValue <= 0) {
            this.voteHeart.setTextColor(this.darkTheme ? -1996488705 : -5592406);
            this.voteHeart.setAlpha(this.darkTheme ? 0.5f : 1.0f);
        } else {
            this.voteHeart.setAlpha(1.0f);
        }
        if (z6 && !this.darkTheme) {
            i13 = -1118482;
        }
        setBackgroundDrawable(new ColorDrawable(i13));
    }

    public void setDarkTheme(boolean z6, int i10) {
        if (this.darkTheme == z6 && this.backgroundColor == i10) {
            this.userAvatarLayout.setDarkTheme(z6, i10, true);
            return;
        }
        this.darkTheme = z6;
        this.backgroundColor = i10;
        updateViews();
    }

    public void setExpand(boolean z6) {
        this.content.setExpand(z6);
    }

    public void setHasVotes(boolean z6) {
        int dimensionPixelSize;
        this.hasVotes = z6;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.nickname.getLayoutParams();
        int i10 = this.nicknameMarginRight;
        if (this.voteDisabled) {
            dimensionPixelSize = 0;
        } else {
            dimensionPixelSize = getResources().getDimensionPixelSize(z6 ? R.dimen.comment_votes_width : R.dimen.comment_like_width);
        }
        int i11 = i10 + dimensionPixelSize;
        if (marginLayoutParams.getMarginEnd() != i11) {
            marginLayoutParams.setMarginEnd(i11);
            this.nickname.setLayoutParams(marginLayoutParams);
        }
        if (this.voteDisabled) {
            return;
        }
        findViewById(R.id.comment_votes).setVisibility(z6 ? 0 : 8);
        this.voteHeart.setVisibility(z6 ? 8 : 0);
        this.voteCount.setVisibility(z6 ? 8 : 0);
        this.voteProgress.setVisibility(z6 ? 8 : 0);
    }

    public void setIsOwner(boolean z6) {
        this.nickname.setRole2(z6 ? getResources().getString(R.string.comment_owner) : null, User.ROLE_COLOR_AUTHOR);
    }

    public void setVoting(boolean z6) {
        if (this.voteDisabled) {
            return;
        }
        if (this.hasVotes) {
            findViewById(R.id.vote_count).setVisibility(z6 ? 8 : 0);
            findViewById(R.id.vote_progress).setVisibility(z6 ? 0 : 8);
        } else {
            this.voteHeart.setVisibility(z6 ? 4 : 0);
            this.voteProgress.setVisibility(z6 ? 0 : 4);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.userAvatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.nickname = (NicknameView) findViewById(R.id.nickname);
        this.datetime = (TextView) findViewById(R.id.datetime);
        this.voteHeart = (TextView) findViewById(R.id.vote_heart2);
        this.voteCount = (TextView) findViewById(R.id.vote_count2);
        TextView textView = (TextView) findViewById(R.id.comment_reply);
        this.commentReply = textView;
        textView.setText(getContext().getString(R.string.reply));
        this.voteProgress = (SpinningView) findViewById(R.id.vote_progress2);
        this.content = (ExpandTextView) findViewById(R.id.content);
        this.images = (CommentImagesLayout) findViewById(R.id.comment_images);
        this.nicknameMarginRight = ((ViewGroup.MarginLayoutParams) this.nickname.getLayoutParams()).rightMargin;
        this.stickerImageView = (StickerImageView) findViewById(R.id.sticker_image);
        this.emojioneView = (EmojioneView) findViewById(R.id.emoji_sticker);
        updateViews();
    }
}
