package com.narvii.chat.video.floating;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.video.ui.floating.FloatingWindowBaseLayout;
import com.narvii.widget.NVImageView;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ThreadFloatingLayout extends FloatingWindowBaseLayout {
    NVImageView avatar;

    public ThreadFloatingLayout(Context context) {
        super(context);
    }

    @Override // com.narvii.video.ui.floating.FloatingWindowBaseLayout, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.avatar = (NVImageView) findViewById(R.id.avatar);
    }

    public ThreadFloatingLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setThread(CommunityThread communityThread) {
        ChatThread chatThread = communityThread.chatThread;
        user = null;
        User user = null;
        if (chatThread.type == 0) {
            String userId = ((AccountService) Utils.getNVContext(getContext()).getService("account")).getUserId();
            List<User> list = chatThread.membersSummary;
            if (list != null) {
                Iterator<User> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    User next = it.next();
                    if (!Utils.isEqualsNotNull(next.uid, userId)) {
                        user = next;
                        break;
                    }
                }
            }
            if (user != null) {
                this.avatar.setImageUrl(user.icon());
                return;
            }
            return;
        }
        User userOwner = chatThread.author;
        if (userOwner == null) {
            userOwner = chatThread.owner();
        }
        this.avatar.setImageUrl(userOwner != null ? userOwner.icon() : null);
    }
}
