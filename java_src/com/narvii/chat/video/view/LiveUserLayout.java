package com.narvii.chat.video.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingUtils;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public class LiveUserLayout extends FrameLayout implements View.OnClickListener {
    ClickListener clickListener;
    View invite;
    TextView liveUserCount;
    LiveUserRecyclerView recyclerView;
    View root;
    protected List<ChannelUser> users;
    VVChatHelper vvChatHelper;

    public interface ClickListener {
        void onClickInviteButton();

        void onClickWholeLayout();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ClickListener clickListener;
        int id = view.getId();
        if (id != R.id.invite) {
            if (id == R.id.live_user_layout_root && (clickListener = this.clickListener) != null) {
                clickListener.onClickWholeLayout();
                return;
            }
            return;
        }
        ClickListener clickListener2 = this.clickListener;
        if (clickListener2 != null) {
            clickListener2.onClickInviteButton();
        }
    }

    public void setClickListener(final ClickListener clickListener) {
        this.clickListener = clickListener;
        LiveUserRecyclerView liveUserRecyclerView = this.recyclerView;
        if (liveUserRecyclerView != null) {
            liveUserRecyclerView.setOnItemClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.view.LiveUserLayout.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ClickListener clickListener2 = clickListener;
                    if (clickListener2 != null) {
                        clickListener2.onClickWholeLayout();
                    }
                }
            });
        }
    }

    public LiveUserLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.users = new ArrayList();
        FrameLayout.inflate(context, R.layout.vv_chat_live_user, this);
        this.liveUserCount = (TextView) findViewById(R.id.live_user_count);
        this.recyclerView = (LiveUserRecyclerView) findViewById(R.id.live_user_recycler);
        this.root = findViewById(R.id.live_user_layout_root);
        this.root.setOnClickListener(this);
        this.root.setVisibility(4);
        this.invite = findViewById(R.id.invite);
        this.invite.setOnClickListener(this);
        this.vvChatHelper = new VVChatHelper(Utils.getNVContext(context));
    }

    public void notifyUserChanged(List<ChannelUser> list) {
        if (list == null) {
            return;
        }
        this.users.clear();
        this.users.addAll(list);
        SignallingUtils.sortChannelUser(this.users);
        Collections.reverse(this.users);
        this.recyclerView.notifyUserChanged(this.users);
        int size = CollectionUtils.getSize(this.users);
        this.root.setVisibility(size == 0 ? 4 : 0);
        this.liveUserCount.setText(String.valueOf(size));
    }
}
