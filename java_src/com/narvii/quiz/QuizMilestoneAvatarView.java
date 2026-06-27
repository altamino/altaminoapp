package com.narvii.quiz;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.model.User;
import com.narvii.widget.TintButton;
import com.narvii.widget.UserAvatarLayout;

/* loaded from: classes3.dex */
public class QuizMilestoneAvatarView extends FrameLayout {
    UserAvatarLayout avatar;
    TintButton milestone;

    public QuizMilestoneAvatarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        FrameLayout.inflate(getContext(), R.layout.quiz_milestone_avatar, this);
        this.milestone = (TintButton) findViewById(R.id.milestone);
        this.avatar = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
    }

    public void setUser(User user) {
        this.avatar.setUser(user);
    }

    public void setMileStoneColor(int i) {
        this.milestone.setTintColor(i);
    }
}
