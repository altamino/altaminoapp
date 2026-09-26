package com.narvii.quiz;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.master.R;
import com.narvii.model.User;
import com.narvii.widget.TintButton;
import com.narvii.widget.UserAvatarLayout;

/* JADX INFO: loaded from: classes4.dex */
public class QuizMilestoneAvatarView extends FrameLayout {
    UserAvatarLayout avatar;
    TintButton milestone;

    public void setMileStoneColor(int i10) {
        this.milestone.setTintColor(i10);
    }

    public void setUser(User user) {
        this.avatar.setUser(user);
    }

    public QuizMilestoneAvatarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(getContext(), R.layout.quiz_milestone_avatar, this);
        this.milestone = (TintButton) findViewById(R.id.milestone);
        this.avatar = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
    }
}
