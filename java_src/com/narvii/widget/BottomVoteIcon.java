package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.narvii.amino.R;

/* loaded from: classes3.dex */
public class BottomVoteIcon extends VoteIcon {
    private int normalId;
    private int votedId;

    public BottomVoteIcon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomVoteIcon);
        this.normalId = typedArrayObtainStyledAttributes.getResourceId(0, com.narvii.amino.mastes.R.drawable.ic_feed_bottom_vote);
        this.votedId = typedArrayObtainStyledAttributes.getResourceId(1, com.narvii.amino.mastes.R.drawable.ic_vote_heart);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // com.narvii.widget.VoteIcon
    protected void updateView(int i) {
        setImageResource(getVoteIconRes(i));
        invalidate();
    }

    public void setVoteNormalId(int i) {
        this.normalId = i;
        invalidate();
    }

    public void setVotedId(int i) {
        this.votedId = i;
        invalidate();
    }

    @Override // com.narvii.widget.VoteIcon
    public int getVoteIconRes(int i) {
        if (i == 4) {
            return this.votedId;
        }
        if (i == -1 || i == 1 || i == 2 || i == 3) {
            return super.getVoteIconRes(i);
        }
        return this.normalId;
    }
}
