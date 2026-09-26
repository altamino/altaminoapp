package com.narvii.chat.video.overlay;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingUtils;
import com.narvii.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class AudienceAnimatedLayout extends AudienceLayout {
    TextView audienceCount;
    private AudienceAnimatedMemberBar memberBar;
    private List<ChannelUser> users;

    public AudienceAnimatedLayout(Context context) {
        this(context, null);
    }

    public AudienceAnimatedLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.users = new ArrayList();
        View.inflate(context, R.layout.item_audience_animated_layout, this);
    }

    @Override // com.narvii.chat.video.overlay.AudienceLayout
    public void notifyUserChanged(List<ChannelUser> list) {
        if (CollectionUtils.isEmpty(list)) {
            setVisibility(8);
            return;
        }
        this.users.clear();
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (list.get(i10).joinRole != 3) {
                this.users.add(list.get(i10));
            }
        }
        if (this.users.isEmpty()) {
            setVisibility(8);
            return;
        }
        setVisibility(0);
        SignallingUtils.sortChannelUser(this.users);
        Collections.reverse(this.users);
        this.audienceCount.setText(String.valueOf(this.users.size()));
        this.memberBar.notifyUserChanged(this.users);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.audienceCount = (TextView) findViewById(R.id.audience_count);
        this.memberBar = (AudienceAnimatedMemberBar) findViewById(R.id.audience_member_bar);
    }
}
