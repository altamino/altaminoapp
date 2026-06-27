package com.narvii.chat.video.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.model.ChatThread;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.List;

/* loaded from: classes2.dex */
public class JoinChannelBanner extends LinearLayout {
    UserAvatarLayout avatar;
    NVImageView indicator;
    private int liveMemberCount;
    TextView memberCount;

    public JoinChannelBanner(Context context) {
        this(context, null);
    }

    public JoinChannelBanner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LinearLayout.inflate(context, R.layout.rtc_preview_banner, this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.indicator = (NVImageView) findViewById(R.id.indicator);
        this.memberCount = (TextView) findViewById(R.id.count);
        this.avatar = (UserAvatarLayout) findViewById(R.id.avatar);
    }

    public void notifyUserChanged(SignallingChannel signallingChannel, ChatThread chatThread) {
        if (signallingChannel == null) {
            setVisibility(4);
            return;
        }
        List<ChannelUser> list = signallingChannel.userList;
        if (list == null || list.size() == 0) {
            setVisibility(4);
            return;
        }
        setVisibility(0);
        this.liveMemberCount = signallingChannel.userList.size();
        this.indicator.setImageUrl("assets://video_white.webp");
        this.memberCount.setText(TextUtils.getCountText(getContext(), this.liveMemberCount, R.string.rtc_member, R.string.rtc_members));
        if (chatThread.owner() != null) {
            this.avatar.setUser(chatThread.owner());
        } else {
            List<ChannelUser> list2 = signallingChannel.userList;
            this.avatar.setUser((list2 == null || list2.size() <= 0) ? null : signallingChannel.userList.get(0).userProfile);
        }
    }
}
