package com.narvii.chat.video.view;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.util.CollectionUtils;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.List;

/* loaded from: classes2.dex */
public class LiveUserRecyclerView extends HorizontalRecyclerView {
    private LiveUserAdapter liveUserAdapter;
    View.OnClickListener onItemClickListener;
    List<ChannelUser> userList;

    public LiveUserRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        this.liveUserAdapter = new LiveUserAdapter();
        setAdapter(this.liveUserAdapter);
    }

    public void setOnItemClickListener(View.OnClickListener onClickListener) {
        this.onItemClickListener = onClickListener;
    }

    public void notifyUserChanged(List<ChannelUser> list) {
        this.userList = list;
        LiveUserAdapter liveUserAdapter = this.liveUserAdapter;
        if (liveUserAdapter != null) {
            liveUserAdapter.notifyDataSetChanged();
        }
    }

    class LiveUserAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        LiveUserAdapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View viewInflate = LayoutInflater.from(LiveUserRecyclerView.this.getContext()).inflate(R.layout.vv_chat_recycler_live_user_item, viewGroup, false);
            viewInflate.setOnClickListener(LiveUserRecyclerView.this.onItemClickListener);
            return LiveUserRecyclerView.this.new AudienceHolder(viewInflate);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder instanceof AudienceHolder) {
                ChannelUser channelUser = LiveUserRecyclerView.this.userList.get(i);
                ((AudienceHolder) viewHolder).userAvatarLayout.setUser(channelUser == null ? null : channelUser.userProfile);
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return CollectionUtils.getSize(LiveUserRecyclerView.this.userList);
        }
    }

    private class AudienceHolder extends RecyclerView.ViewHolder {
        NVImageView avatar;
        UserAvatarLayout userAvatarLayout;

        public AudienceHolder(View view) {
            super(view);
            this.userAvatarLayout = (UserAvatarLayout) view.findViewById(R.id.user_avatar_layout);
            this.avatar = (NVImageView) view.findViewById(R.id.avatar);
            this.userAvatarLayout.setAvatarStroke(1.5f, false);
            this.userAvatarLayout.setMembershipStrokeRatio(1.5f);
            this.avatar.setFixStroke(true);
        }
    }
}
