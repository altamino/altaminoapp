package com.narvii.chat.video.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingUtils;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
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

    public LiveUserLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.users = new ArrayList();
        View.inflate(context, R.layout.vv_chat_live_user, this);
        this.liveUserCount = (TextView) findViewById(R.id.live_user_count);
        this.recyclerView = (LiveUserRecyclerView) findViewById(R.id.live_user_recycler);
        View viewFindViewById = findViewById(R.id.live_user_layout_root);
        this.root = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        this.root.setVisibility(4);
        View viewFindViewById2 = findViewById(R.id.invite);
        this.invite = viewFindViewById2;
        viewFindViewById2.setOnClickListener(this);
        this.vvChatHelper = new VVChatHelper(Utils.getNVContext(context));
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
}
