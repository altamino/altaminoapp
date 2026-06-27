package com.narvii.story.detail;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.amino.mastes.R;
import com.narvii.widget.VoteIcon;

/* loaded from: classes3.dex */
public class StoryVoteIcon extends VoteIcon {
    @Override // com.narvii.widget.VoteIcon
    public int getVoteIconRes(int i) {
        return (i == -1 || i == 1 || i == 2 || i == 3 || i == 4) ? R.drawable.ic_vote_heart_story : R.drawable.ic_vote_none_story;
    }

    public StoryVoteIcon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
