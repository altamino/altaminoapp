package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.narvii.amino.R;

/* JADX INFO: loaded from: classes8.dex */
public class BottomVoteIcon extends VoteIcon {
    private int normalId;
    private int votedId;

    @Override // com.narvii.widget.VoteIcon
    public int getVoteIconRes(int i10) {
        if (i10 == 4) {
            return this.votedId;
        }
        return (i10 == -1 || i10 == 1 || i10 == 2 || i10 == 3) ? super.getVoteIconRes(i10) : this.normalId;
    }

    public void setVoteNormalId(int i10) {
        this.normalId = i10;
        invalidate();
    }

    public void setVotedId(int i10) {
        this.votedId = i10;
        invalidate();
    }

    public BottomVoteIcon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomVoteIcon);
        this.normalId = typedArrayObtainStyledAttributes.getResourceId(0, com.narvii.amino.master.R.drawable.ic_feed_bottom_vote);
        this.votedId = typedArrayObtainStyledAttributes.getResourceId(1, com.narvii.amino.master.R.drawable.ic_vote_heart);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // com.narvii.widget.VoteIcon
    protected void updateView(int i10) {
        setImageResource(getVoteIconRes(i10));
        invalidate();
    }
}
