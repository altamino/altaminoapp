package com.narvii.comment.list;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
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

/* loaded from: classes2.dex */
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

    public void setIsMine(boolean z) {
    }

    public CommentItem(Context context) {
        this(context, null);
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
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                CommentItem.this.performClick();
                return true;
            }

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
        });
    }

    public void setDarkTheme(boolean z, int i) {
        if (this.darkTheme == z && this.backgroundColor == i) {
            this.userAvatarLayout.setDarkTheme(z, i, true);
            return;
        }
        this.darkTheme = z;
        this.backgroundColor = i;
        updateViews();
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
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.userAvatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.nickname = (NicknameView) findViewById(R.id.nickname);
        this.datetime = (TextView) findViewById(R.id.datetime);
        this.voteHeart = (TextView) findViewById(R.id.vote_heart2);
        this.voteCount = (TextView) findViewById(R.id.vote_count2);
        this.commentReply = (TextView) findViewById(R.id.comment_reply);
        this.commentReply.setText(getContext().getString(R.string.reply));
        this.voteProgress = (SpinningView) findViewById(R.id.vote_progress2);
        this.content = (ExpandTextView) findViewById(R.id.content);
        this.images = (CommentImagesLayout) findViewById(R.id.comment_images);
        this.nicknameMarginRight = ((ViewGroup.MarginLayoutParams) this.nickname.getLayoutParams()).rightMargin;
        this.stickerImageView = (StickerImageView) findViewById(R.id.sticker_image);
        this.emojioneView = (EmojioneView) findViewById(R.id.emoji_sticker);
        updateViews();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.gd.onTouchEvent(motionEvent);
        return true;
    }

    public boolean hasVotes() {
        return this.hasVotes;
    }

    public void setHasVotes(boolean z) throws Resources.NotFoundException {
        int dimensionPixelSize;
        this.hasVotes = z;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.nickname.getLayoutParams();
        int i = this.nicknameMarginRight;
        if (this.voteDisabled) {
            dimensionPixelSize = 0;
        } else {
            dimensionPixelSize = getResources().getDimensionPixelSize(z ? R.dimen.comment_votes_width : R.dimen.comment_like_width);
        }
        int i2 = i + dimensionPixelSize;
        if (Build.VERSION.SDK_INT < 17) {
            if (marginLayoutParams.rightMargin != i2) {
                marginLayoutParams.rightMargin = i2;
                this.nickname.setLayoutParams(marginLayoutParams);
            }
        } else if (marginLayoutParams.getMarginEnd() != i2) {
            marginLayoutParams.setMarginEnd(i2);
            this.nickname.setLayoutParams(marginLayoutParams);
        }
        if (this.voteDisabled) {
            return;
        }
        findViewById(R.id.comment_votes).setVisibility(z ? 0 : 8);
        this.voteHeart.setVisibility(z ? 8 : 0);
        this.voteCount.setVisibility(z ? 8 : 0);
        this.voteProgress.setVisibility(z ? 8 : 0);
    }

    public void disableVote() {
        this.voteDisabled = true;
        ViewUtils.show(this, R.id.right_layout, false);
    }

    public Comment getComment() {
        return this.comment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setComment(Comment comment, OnTagClickListener onTagClickListener) {
        this.comment = comment;
        int i = 0;
        boolean z = comment.type == 3 && comment.getCommentSticker() == null;
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
        NVText nVText = new NVText(z ? getResources().getString(R.string.comment_not_available) : comment.content);
        nVText.setDarkTheme(this.darkTheme);
        nVText.markSimpleEntries(onTagClickListener);
        this.content.setText(!comment.isLegal() ? getContext().getString(R.string.upgrad_version_see_comment) : nVText);
        this.content.setVisibility((comment.isLegal() && TextUtils.isEmpty(nVText)) ? 8 : 0);
        this.images.setImages(comment.mediaList);
        Sticker commentSticker = comment.getCommentSticker();
        if (commentSticker != null && comment.isLegal()) {
            if (commentSticker.isLocalMood()) {
                this.emojioneView.setVisibility(0);
                this.stickerImageView.setVisibility(8);
                String str2 = commentSticker.icon;
                this.emojioneView.setEmoji(new String(StringUtils.hex2bytes(str2 == null ? null : str2.substring(15))));
            } else {
                this.stickerImageView.setVisibility(0);
                this.emojioneView.setVisibility(8);
                this.stickerImageView.setSticker(commentSticker);
            }
        } else {
            this.stickerImageView.setVisibility(8);
            this.emojioneView.setVisibility(8);
        }
        if (this.hasVotes) {
            ((TextView) findViewById(R.id.vote_up)).setTextColor(comment.votedValue > 0 ? voteColorGreen : this.darkTheme ? -1 : voteColorGray);
            ((TextView) findViewById(R.id.vote_down)).setTextColor(comment.votedValue < 0 ? voteColorRed : this.darkTheme ? -1 : voteColorGray);
            TextView textView2 = (TextView) findViewById(R.id.vote_count);
            textView2.setTextColor(comment.votesSum < 0 ? voteColorRed : this.darkTheme ? -1 : voteColorDark);
            textView2.setText(String.valueOf(comment.votesSum));
            SpinningView spinningView = (SpinningView) findViewById(R.id.vote_progress);
            if (spinningView != null) {
                spinningView.setSpinColor(this.darkTheme ? -1 : -7829368);
            }
        }
        if (comment != null) {
            if (comment.votedValue <= 0) {
                this.voteHeart.setTextColor(this.darkTheme ? -1996488705 : -5592406);
                this.voteHeart.setAlpha(this.darkTheme ? 0.5f : 1.0f);
            } else {
                this.voteHeart.setAlpha(1.0f);
            }
        }
        if (z && !this.darkTheme) {
            i = -1118482;
        }
        setBackgroundDrawable(new ColorDrawable(i));
    }

    public void setIsOwner(boolean z) {
        this.nickname.setRole2(z ? getResources().getString(R.string.comment_owner) : null, User.ROLE_COLOR_AUTHOR);
    }

    public void setExpand(boolean z) {
        this.content.setExpand(z);
    }

    public void setVoting(boolean z) {
        if (this.voteDisabled) {
            return;
        }
        if (this.hasVotes) {
            findViewById(R.id.vote_count).setVisibility(z ? 8 : 0);
            findViewById(R.id.vote_progress).setVisibility(z ? 0 : 8);
        } else {
            this.voteHeart.setVisibility(z ? 4 : 0);
            this.voteProgress.setVisibility(z ? 0 : 4);
        }
    }
}
