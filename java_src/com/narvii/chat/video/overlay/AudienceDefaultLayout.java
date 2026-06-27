package com.narvii.chat.video.overlay;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingUtils;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public class AudienceDefaultLayout extends AudienceLayout {
    TextView audienceCount;
    UserAvatarLayout avatar1;
    UserAvatarLayout avatar2;
    UserAvatarLayout avatar3;
    UserAvatarLayout avatar4;
    protected List<ChannelUser> users;

    public AudienceDefaultLayout(Context context) {
        this(context, null);
    }

    public AudienceDefaultLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LinearLayout.inflate(context, R.layout.item_audience_layout, this);
        this.users = new ArrayList();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.audienceCount = (TextView) findViewById(R.id.audience_count);
        this.avatar1 = (UserAvatarLayout) findViewById(R.id.avatar1);
        this.avatar2 = (UserAvatarLayout) findViewById(R.id.avatar2);
        this.avatar3 = (UserAvatarLayout) findViewById(R.id.avatar3);
        this.avatar4 = (UserAvatarLayout) findViewById(R.id.avatar4);
    }

    @Override // com.narvii.chat.video.overlay.AudienceLayout
    public void notifyUserChanged(List<ChannelUser> list) {
        if (list == null) {
            return;
        }
        setVisibility(0);
        this.users.clear();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).joinRole != 3) {
                this.users.add(list.get(i));
            }
        }
        SignallingUtils.sortChannelUser(this.users);
        Collections.reverse(this.users);
        updateViews();
    }

    protected void updateViews() {
        int size = this.users.size();
        if (size == 0) {
            setVisibility(8);
            return;
        }
        this.audienceCount.setText(String.valueOf(size));
        this.avatar1.setVisibility(size >= 1 ? 0 : 8);
        this.avatar2.setVisibility(size >= 2 ? 0 : 8);
        this.avatar3.setVisibility(size >= 3 ? 0 : 8);
        this.avatar4.setVisibility(size >= 4 ? 0 : 8);
        if (size >= 4) {
            this.avatar4.setUser(this.users.get(3).userProfile);
        }
        if (size >= 3) {
            this.avatar3.setUser(this.users.get(2).userProfile);
        }
        if (size >= 2) {
            this.avatar2.setUser(this.users.get(1).userProfile);
        }
        if (size >= 1) {
            this.avatar1.setUser(this.users.get(0).userProfile);
        }
        boolean z = size > 4;
        findViewById(R.id.overlay).setVisibility(z ? 0 : 8);
        findViewById(R.id.more).setVisibility(z ? 0 : 8);
        findViewById(R.id.last_avatar_layout).setVisibility(this.avatar4.getVisibility());
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }
}
