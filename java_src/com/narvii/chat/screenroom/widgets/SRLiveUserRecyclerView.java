package com.narvii.chat.screenroom.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.signalling.SignallingUtils;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatHelperKt;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Utils;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.SpaceItemDecoration;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class SRLiveUserRecyclerView extends HorizontalRecyclerView {
    public static Object DIVIDER = new Object();
    public static Object INVITE = new Object();
    public static final int TYPE_AUDIENCE = 2;
    public static final int TYPE_DIVIDER = 3;
    public static final int TYPE_INVITE = 4;
    public static final int TYPE_PRESENTER = 1;
    SparseArray<ChannelUserWrapper> audienceSparseArray;
    List<ChannelUserWrapper> audienceUserList;
    ChatHelper chatHelper;
    ChatThread chatThread;
    int hostItemPosition;
    private int hostVolumeLevel;
    private boolean isLandscape;
    ParticipantItemClickListener itemClickListener;
    List<Object> itemList;
    private LiveUserAdapter liveUserAdapter;
    View.OnClickListener onClickListenerWrapper;
    SparseArray<ChannelUserWrapper> presenterSparseArray;
    List<ChannelUserWrapper> presenterUserList;
    RtcService rtcService;
    SignallingChannel signallingChannel;
    SpaceItemDecoration spaceItemDecoration;
    private boolean textOnly;

    public interface ParticipantItemClickListener {
        void onInviteButtonClicked();

        void onParticipantItemClicked(ChannelUserWrapper channelUserWrapper);
    }

    public void setItemClickListener(ParticipantItemClickListener participantItemClickListener) {
        this.itemClickListener = participantItemClickListener;
    }

    public SRLiveUserRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.itemList = new ArrayList();
        this.hostItemPosition = -1;
        this.onClickListenerWrapper = new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.SRLiveUserRecyclerView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ParticipantItemClickListener participantItemClickListener;
                ChannelUser channelUser;
                Object tag = view.getTag();
                User user = null;
                ChannelUserWrapper channelUserWrapper = tag != null ? (ChannelUserWrapper) tag : null;
                LogEvent.Builder builderArea = LogEvent.clickBuilder(LogUtils.getPageContext(SRLiveUserRecyclerView.this), ActSemantic.checkDetail).area("LiveParticipants");
                if (channelUserWrapper != null && (channelUser = channelUserWrapper.channelUser) != null) {
                    user = channelUser.userProfile;
                }
                builderArea.object(user).send();
                if (channelUserWrapper == null || (participantItemClickListener = SRLiveUserRecyclerView.this.itemClickListener) == null) {
                    return;
                }
                participantItemClickListener.onParticipantItemClicked(channelUserWrapper);
            }
        };
        this.rtcService = (RtcService) Utils.getNVContext(context).getService("rtc");
        setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        this.liveUserAdapter = new LiveUserAdapter();
        setAdapter(this.liveUserAdapter);
        this.spaceItemDecoration = new SpaceItemDecoration(Utils.dpToPxInt(getContext(), 12.0f));
        addItemDecoration(this.spaceItemDecoration);
        setItemAnimator(null);
        this.chatHelper = new ChatHelper(context);
    }

    public void setTextOnly(boolean z) {
        this.textOnly = z;
        refreshViews(false);
    }

    public void setLandscape(boolean z) {
        this.isLandscape = z;
        setLayoutManager(new LinearLayoutManager(getContext(), z ? 1 : 0, false));
        SpaceItemDecoration spaceItemDecoration = this.spaceItemDecoration;
        if (spaceItemDecoration != null) {
            spaceItemDecoration.setLandscape(z);
            notifyDataSetChanged();
        }
    }

    public void updateChannelUserWrapperList(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray, SparseArray<ChannelUserWrapper> sparseArray2) {
        this.signallingChannel = signallingChannel;
        this.presenterSparseArray = sparseArray;
        this.audienceSparseArray = sparseArray2;
        refreshViews();
    }

    public void setChatThread(ChatThread chatThread) {
        this.chatThread = chatThread;
        refreshViews(false);
    }

    public void updateChannelUserWrapper(ChannelUserWrapper channelUserWrapper) {
        if (channelUserWrapper == null || this.itemList == null || this.presenterUserList == null) {
            return;
        }
        for (int i = 0; i < this.presenterUserList.size() && i < this.itemList.size(); i++) {
            Object obj = this.itemList.get(i);
            if ((obj instanceof ChannelUserWrapper) && ((ChannelUserWrapper) obj).channelUid == channelUserWrapper.channelUid) {
                this.itemList.set(i, channelUserWrapper);
                LiveUserAdapter liveUserAdapter = this.liveUserAdapter;
                if (liveUserAdapter != null) {
                    liveUserAdapter.notifyItemChanged(i);
                    return;
                }
                return;
            }
        }
    }

    public void notifyDataSetChanged() {
        LiveUserAdapter liveUserAdapter = this.liveUserAdapter;
        if (liveUserAdapter != null) {
            liveUserAdapter.notifyDataSetChanged();
        }
    }

    public void onChannelStatusChanged() {
        refreshViews(false);
    }

    private void refreshViews() {
        refreshViews(true);
    }

    private void refreshViews(boolean z) {
        ChannelUser channelUser;
        this.itemList.clear();
        if (z) {
            this.presenterUserList = getList(this.presenterSparseArray, true);
            this.audienceUserList = getList(this.audienceSparseArray, false);
            List<ChannelUserWrapper> list = this.audienceUserList;
            if (list != null) {
                SignallingUtils.sortChannelUserWrapper(list);
                Collections.reverse(this.audienceUserList);
            }
            this.hostItemPosition = -1;
            if (this.presenterUserList != null) {
                for (int i = 0; i < this.presenterUserList.size(); i++) {
                    ChannelUserWrapper channelUserWrapper = this.presenterUserList.get(i);
                    if (channelUserWrapper != null && (channelUser = channelUserWrapper.channelUser) != null && channelUser.isHost) {
                        this.hostItemPosition = i;
                    }
                }
            }
        }
        List<ChannelUserWrapper> list2 = this.presenterUserList;
        if (list2 != null) {
            this.itemList.addAll(list2);
        }
        if (!CollectionUtils.isEmpty(this.audienceUserList) && !CollectionUtils.isEmpty(this.presenterUserList) && !this.textOnly) {
            this.itemList.add(DIVIDER);
        }
        List<ChannelUserWrapper> list3 = this.audienceUserList;
        if (list3 != null) {
            this.itemList.addAll(list3);
        }
        if (shouldShowInviteButton()) {
            this.itemList.add(INVITE);
        }
        notifyDataSetChanged();
    }

    class LiveUserAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        LiveUserAdapter() {
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 1) {
                View viewInflate = LayoutInflater.from(SRLiveUserRecyclerView.this.getContext()).inflate(R.layout.sr_recycler_presenter_item, viewGroup, false);
                viewInflate.setOnClickListener(SRLiveUserRecyclerView.this.onClickListenerWrapper);
                return SRLiveUserRecyclerView.this.new PresenterHolder(viewInflate);
            }
            if (i == 2) {
                View viewInflate2 = LayoutInflater.from(SRLiveUserRecyclerView.this.getContext()).inflate(R.layout.sr_recycler_audience_item, viewGroup, false);
                viewInflate2.setOnClickListener(SRLiveUserRecyclerView.this.onClickListenerWrapper);
                return SRLiveUserRecyclerView.this.new AudienceHolder(viewInflate2);
            }
            if (i == 3) {
                return SRLiveUserRecyclerView.this.new DividerHolder(LayoutInflater.from(SRLiveUserRecyclerView.this.getContext()).inflate(R.layout.sr_recycler_divider_item, viewGroup, false));
            }
            if (i != 4) {
                return null;
            }
            View viewInflate3 = LayoutInflater.from(SRLiveUserRecyclerView.this.getContext()).inflate(R.layout.sr_recycler_invite_item, viewGroup, false);
            viewInflate3.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.SRLiveUserRecyclerView.LiveUserAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LogEvent.clickBuilder(SRLiveUserRecyclerView.this, ActSemantic.listViewEnter).area("InviteButton").send();
                    ParticipantItemClickListener participantItemClickListener = SRLiveUserRecyclerView.this.itemClickListener;
                    if (participantItemClickListener != null) {
                        participantItemClickListener.onInviteButtonClicked();
                    }
                }
            });
            return SRLiveUserRecyclerView.this.new InviteHolder(viewInflate3);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) throws Resources.NotFoundException {
            ChannelUser channelUser;
            ChannelUser channelUser2;
            if (viewHolder instanceof PresenterHolder) {
                PresenterHolder presenterHolder = (PresenterHolder) viewHolder;
                Object obj = SRLiveUserRecyclerView.this.itemList.get(i);
                if (obj instanceof ChannelUserWrapper) {
                    ChannelUserWrapper channelUserWrapper = (ChannelUserWrapper) obj;
                    Set<String> localMutedUserList = SRLiveUserRecyclerView.this.rtcService.getLocalMutedUserList();
                    boolean z = (localMutedUserList == null || channelUserWrapper == null || (channelUser2 = channelUserWrapper.channelUser) == null || channelUser2.uid() == null || !localMutedUserList.contains(channelUserWrapper.channelUser.uid())) ? false : true;
                    boolean z2 = (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null || !channelUser.isHost) ? false : true;
                    presenterHolder.presenterItemView.setHostVolumeLevel(SRLiveUserRecyclerView.this.hostVolumeLevel);
                    presenterHolder.presenterItemView.setLocalUid(SRLiveUserRecyclerView.this.signallingChannel.channelUid);
                    presenterHolder.presenterItemView.setTextOnly(SRLiveUserRecyclerView.this.textOnly);
                    boolean zIsSingleChat = ChatHelperKt.isSingleChat(SRLiveUserRecyclerView.this.chatThread);
                    SRLiveUserRecyclerView sRLiveUserRecyclerView = SRLiveUserRecyclerView.this;
                    ChatHelper chatHelper = sRLiveUserRecyclerView.chatHelper;
                    ChatThread chatThread = sRLiveUserRecyclerView.chatThread;
                    ChannelUser channelUser3 = channelUserWrapper.channelUser;
                    presenterHolder.presenterItemView.updateView(SRLiveUserRecyclerView.this.signallingChannel, channelUserWrapper, z2, false, z, (zIsSingleChat || !chatHelper.isHost(chatThread, channelUser3 == null ? null : channelUser3.uid())) ? null : SRLiveUserRecyclerView.this.getResources().getString(R.string.host));
                    presenterHolder.itemView.setTag(channelUserWrapper);
                    return;
                }
                return;
            }
            if (viewHolder instanceof AudienceHolder) {
                AudienceHolder audienceHolder = (AudienceHolder) viewHolder;
                Object obj2 = SRLiveUserRecyclerView.this.itemList.get(i);
                if (obj2 instanceof ChannelUserWrapper) {
                    audienceHolder.itemView.setTag(obj2);
                    audienceHolder.userAvatarLayout.setUser(((ChannelUserWrapper) obj2).channelUser.userProfile);
                    return;
                }
                return;
            }
            if (viewHolder instanceof DividerHolder) {
                ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
                if (layoutParams != null) {
                    int dimensionPixelSize = SRLiveUserRecyclerView.this.getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_divider_line_width);
                    int dimensionPixelSize2 = SRLiveUserRecyclerView.this.getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_recycler_item_height);
                    if (SRLiveUserRecyclerView.this.isLandscape) {
                        layoutParams.width = dimensionPixelSize2;
                        layoutParams.height = dimensionPixelSize;
                    } else {
                        layoutParams.width = dimensionPixelSize;
                        layoutParams.height = dimensionPixelSize2;
                    }
                }
                ViewGroup.LayoutParams layoutParams2 = ((DividerHolder) viewHolder).line.getLayoutParams();
                if (layoutParams2 != null) {
                    int dimensionPixelSize3 = SRLiveUserRecyclerView.this.getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_divider_line_width);
                    int dimensionPixelSize4 = SRLiveUserRecyclerView.this.getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_divider_line_height);
                    if (SRLiveUserRecyclerView.this.isLandscape) {
                        layoutParams2.width = dimensionPixelSize4;
                        layoutParams2.height = dimensionPixelSize3;
                    } else {
                        layoutParams2.width = dimensionPixelSize3;
                        layoutParams2.height = dimensionPixelSize4;
                    }
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            Object obj = SRLiveUserRecyclerView.this.itemList.get(i);
            if (obj instanceof ChannelUserWrapper) {
                return ((ChannelUserWrapper) obj).channelUser.joinRole == 1 ? 1 : 2;
            }
            if (obj == SRLiveUserRecyclerView.DIVIDER) {
                return 3;
            }
            if (obj == SRLiveUserRecyclerView.INVITE) {
                return 4;
            }
            return super.getItemViewType(i);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SRLiveUserRecyclerView.this.itemList.size();
        }
    }

    public boolean shouldShowInviteButton() {
        ChatThread chatThread = this.chatThread;
        return (chatThread == null || chatThread.type == 0) ? false : true;
    }

    public static List<ChannelUserWrapper> getList(SparseArray<ChannelUserWrapper> sparseArray, boolean z) {
        if (sparseArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < sparseArray.size(); i++) {
            ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i);
            ChannelUser channelUser = channelUserWrapperValueAt.channelUser;
            if (channelUser != null && channelUser.userProfile != null) {
                if (z && channelUser.isHost) {
                    arrayList.add(0, channelUserWrapperValueAt);
                } else {
                    arrayList.add(channelUserWrapperValueAt);
                }
            }
        }
        return arrayList;
    }

    private class PresenterHolder extends RecyclerView.ViewHolder {
        SRPresenterItemView presenterItemView;

        public PresenterHolder(View view) {
            super(view);
            this.presenterItemView = (SRPresenterItemView) view;
        }
    }

    private class AudienceHolder extends RecyclerView.ViewHolder {
        UserAvatarLayout userAvatarLayout;

        public AudienceHolder(View view) {
            super(view);
            this.userAvatarLayout = (UserAvatarLayout) view.findViewById(R.id.user_avatar_layout);
        }
    }

    private class DividerHolder extends RecyclerView.ViewHolder {
        public View line;

        public DividerHolder(View view) {
            super(view);
            this.line = view.findViewById(R.id.divider_line);
        }
    }

    private class InviteHolder extends RecyclerView.ViewHolder {
        View invite;

        public InviteHolder(View view) {
            super(view);
            this.invite = view.findViewById(R.id.invite);
        }
    }

    public void updateHostVolume(int i) {
        this.hostVolumeLevel = i;
        updateHostItem();
    }

    public void updateHostItem() {
        LiveUserAdapter liveUserAdapter;
        List<Object> list = this.itemList;
        if (list == null || this.hostItemPosition == -1) {
            return;
        }
        int size = list.size();
        int i = this.hostItemPosition;
        if (size <= i || (liveUserAdapter = this.liveUserAdapter) == null) {
            return;
        }
        liveUserAdapter.notifyItemChanged(i);
    }

    public boolean isLocalMuted(ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        Set<String> localMutedUserList = this.rtcService.getLocalMutedUserList();
        return (localMutedUserList == null || channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null || channelUser.uid() == null || !localMutedUserList.contains(channelUserWrapper.channelUser.uid())) ? false : true;
    }
}
