package com.narvii.chat.screenroom.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
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

/* JADX INFO: loaded from: classes.dex */
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

    class LiveUserAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            if (i10 == 1) {
                View viewInflate = LayoutInflater.from(SRLiveUserRecyclerView.this.getContext()).inflate(R.layout.sr_recycler_presenter_item, viewGroup, false);
                viewInflate.setOnClickListener(SRLiveUserRecyclerView.this.onClickListenerWrapper);
                return SRLiveUserRecyclerView.this.new PresenterHolder(viewInflate);
            }
            if (i10 == 2) {
                View viewInflate2 = LayoutInflater.from(SRLiveUserRecyclerView.this.getContext()).inflate(R.layout.sr_recycler_audience_item, viewGroup, false);
                viewInflate2.setOnClickListener(SRLiveUserRecyclerView.this.onClickListenerWrapper);
                return SRLiveUserRecyclerView.this.new AudienceHolder(viewInflate2);
            }
            if (i10 == 3) {
                return SRLiveUserRecyclerView.this.new DividerHolder(LayoutInflater.from(SRLiveUserRecyclerView.this.getContext()).inflate(R.layout.sr_recycler_divider_item, viewGroup, false));
            }
            if (i10 != 4) {
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

        LiveUserAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SRLiveUserRecyclerView.this.itemList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            Object obj = SRLiveUserRecyclerView.this.itemList.get(i10);
            if (obj instanceof ChannelUserWrapper) {
                return ((ChannelUserWrapper) obj).channelUser.joinRole == 1 ? 1 : 2;
            }
            if (obj == SRLiveUserRecyclerView.DIVIDER) {
                return 3;
            }
            if (obj == SRLiveUserRecyclerView.INVITE) {
                return 4;
            }
            return super.getItemViewType(i10);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
            ChannelUser channelUser;
            ChannelUser channelUser2;
            if (viewHolder instanceof PresenterHolder) {
                PresenterHolder presenterHolder = (PresenterHolder) viewHolder;
                Object obj = SRLiveUserRecyclerView.this.itemList.get(i10);
                if (obj instanceof ChannelUserWrapper) {
                    ChannelUserWrapper channelUserWrapper = (ChannelUserWrapper) obj;
                    Set<String> localMutedUserList = SRLiveUserRecyclerView.this.rtcService.getLocalMutedUserList();
                    boolean z6 = (localMutedUserList == null || channelUserWrapper == null || (channelUser2 = channelUserWrapper.channelUser) == null || channelUser2.uid() == null || !localMutedUserList.contains(channelUserWrapper.channelUser.uid())) ? false : true;
                    boolean z10 = (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null || !channelUser.isHost) ? false : true;
                    presenterHolder.presenterItemView.setHostVolumeLevel(SRLiveUserRecyclerView.this.hostVolumeLevel);
                    presenterHolder.presenterItemView.setLocalUid(SRLiveUserRecyclerView.this.signallingChannel.channelUid);
                    presenterHolder.presenterItemView.setTextOnly(SRLiveUserRecyclerView.this.textOnly);
                    boolean zIsSingleChat = ChatHelperKt.isSingleChat(SRLiveUserRecyclerView.this.chatThread);
                    SRLiveUserRecyclerView sRLiveUserRecyclerView = SRLiveUserRecyclerView.this;
                    ChatHelper chatHelper = sRLiveUserRecyclerView.chatHelper;
                    ChatThread chatThread = sRLiveUserRecyclerView.chatThread;
                    ChannelUser channelUser3 = channelUserWrapper.channelUser;
                    presenterHolder.presenterItemView.updateView(SRLiveUserRecyclerView.this.signallingChannel, channelUserWrapper, z10, false, z6, (zIsSingleChat || !chatHelper.isHost(chatThread, channelUser3 == null ? null : channelUser3.uid())) ? null : SRLiveUserRecyclerView.this.getResources().getString(R.string.host));
                    presenterHolder.itemView.setTag(channelUserWrapper);
                    return;
                }
                return;
            }
            if (viewHolder instanceof AudienceHolder) {
                AudienceHolder audienceHolder = (AudienceHolder) viewHolder;
                Object obj2 = SRLiveUserRecyclerView.this.itemList.get(i10);
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
    }

    public interface ParticipantItemClickListener {
        void onInviteButtonClicked();

        void onParticipantItemClicked(ChannelUserWrapper channelUserWrapper);
    }

    private class PresenterHolder extends RecyclerView.ViewHolder {
        SRPresenterItemView presenterItemView;

        public PresenterHolder(View view) {
            super(view);
            this.presenterItemView = (SRPresenterItemView) view;
        }
    }

    private void refreshViews() {
        refreshViews(true);
    }

    public void onChannelStatusChanged() {
        refreshViews(false);
    }

    public void setItemClickListener(ParticipantItemClickListener participantItemClickListener) {
        this.itemClickListener = participantItemClickListener;
    }

    public static List<ChannelUserWrapper> getList(SparseArray<ChannelUserWrapper> sparseArray, boolean z6) {
        if (sparseArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i10);
            ChannelUser channelUser = channelUserWrapperValueAt.channelUser;
            if (channelUser != null && channelUser.userProfile != null) {
                if (z6 && channelUser.isHost) {
                    arrayList.add(0, channelUserWrapperValueAt);
                } else {
                    arrayList.add(channelUserWrapperValueAt);
                }
            }
        }
        return arrayList;
    }

    private void refreshViews(boolean z6) {
        ChannelUser channelUser;
        this.itemList.clear();
        if (z6) {
            this.presenterUserList = getList(this.presenterSparseArray, true);
            List<ChannelUserWrapper> list = getList(this.audienceSparseArray, false);
            this.audienceUserList = list;
            if (list != null) {
                SignallingUtils.sortChannelUserWrapper(list);
                Collections.reverse(this.audienceUserList);
            }
            this.hostItemPosition = -1;
            if (this.presenterUserList != null) {
                for (int i10 = 0; i10 < this.presenterUserList.size(); i10++) {
                    ChannelUserWrapper channelUserWrapper = this.presenterUserList.get(i10);
                    if (channelUserWrapper != null && (channelUser = channelUserWrapper.channelUser) != null && channelUser.isHost) {
                        this.hostItemPosition = i10;
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

    public boolean isLocalMuted(ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        Set<String> localMutedUserList = this.rtcService.getLocalMutedUserList();
        return (localMutedUserList == null || channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null || channelUser.uid() == null || !localMutedUserList.contains(channelUserWrapper.channelUser.uid())) ? false : true;
    }

    public void notifyDataSetChanged() {
        LiveUserAdapter liveUserAdapter = this.liveUserAdapter;
        if (liveUserAdapter != null) {
            liveUserAdapter.notifyDataSetChanged();
        }
    }

    public void setChatThread(ChatThread chatThread) {
        this.chatThread = chatThread;
        refreshViews(false);
    }

    public void setLandscape(boolean z6) {
        this.isLandscape = z6;
        setLayoutManager(new LinearLayoutManager(getContext(), z6 ? 1 : 0, false));
        SpaceItemDecoration spaceItemDecoration = this.spaceItemDecoration;
        if (spaceItemDecoration != null) {
            spaceItemDecoration.setLandscape(z6);
            notifyDataSetChanged();
        }
    }

    public void setTextOnly(boolean z6) {
        this.textOnly = z6;
        refreshViews(false);
    }

    public boolean shouldShowInviteButton() {
        ChatThread chatThread = this.chatThread;
        return (chatThread == null || chatThread.type == 0) ? false : true;
    }

    public void updateChannelUserWrapper(ChannelUserWrapper channelUserWrapper) {
        if (channelUserWrapper == null || this.itemList == null || this.presenterUserList == null) {
            return;
        }
        for (int i10 = 0; i10 < this.presenterUserList.size() && i10 < this.itemList.size(); i10++) {
            Object obj = this.itemList.get(i10);
            if ((obj instanceof ChannelUserWrapper) && ((ChannelUserWrapper) obj).channelUid == channelUserWrapper.channelUid) {
                this.itemList.set(i10, channelUserWrapper);
                LiveUserAdapter liveUserAdapter = this.liveUserAdapter;
                if (liveUserAdapter != null) {
                    liveUserAdapter.notifyItemChanged(i10);
                    return;
                }
                return;
            }
        }
    }

    public void updateChannelUserWrapperList(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray, SparseArray<ChannelUserWrapper> sparseArray2) {
        this.signallingChannel = signallingChannel;
        this.presenterSparseArray = sparseArray;
        this.audienceSparseArray = sparseArray2;
        refreshViews();
    }

    public void updateHostItem() {
        LiveUserAdapter liveUserAdapter;
        List<Object> list = this.itemList;
        if (list == null || this.hostItemPosition == -1) {
            return;
        }
        int size = list.size();
        int i10 = this.hostItemPosition;
        if (size <= i10 || (liveUserAdapter = this.liveUserAdapter) == null) {
            return;
        }
        liveUserAdapter.notifyItemChanged(i10);
    }

    public void updateHostVolume(int i10) {
        this.hostVolumeLevel = i10;
        updateHostItem();
    }

    public SRLiveUserRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.itemList = new ArrayList();
        this.hostItemPosition = -1;
        this.onClickListenerWrapper = new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.SRLiveUserRecyclerView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChannelUserWrapper channelUserWrapper;
                ParticipantItemClickListener participantItemClickListener;
                ChannelUser channelUser;
                Object tag = view.getTag();
                User user = null;
                if (tag != null) {
                    channelUserWrapper = (ChannelUserWrapper) tag;
                } else {
                    channelUserWrapper = null;
                }
                LogEvent.Builder builderArea = LogEvent.clickBuilder(LogUtils.getPageContext(SRLiveUserRecyclerView.this), ActSemantic.checkDetail).area("LiveParticipants");
                if (channelUserWrapper != null && (channelUser = channelUserWrapper.channelUser) != null) {
                    user = channelUser.userProfile;
                }
                builderArea.object(user).send();
                if (channelUserWrapper != null && (participantItemClickListener = SRLiveUserRecyclerView.this.itemClickListener) != null) {
                    participantItemClickListener.onParticipantItemClicked(channelUserWrapper);
                }
            }
        };
        this.rtcService = (RtcService) Utils.getNVContext(context).getService("rtc");
        setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        LiveUserAdapter liveUserAdapter = new LiveUserAdapter();
        this.liveUserAdapter = liveUserAdapter;
        setAdapter(liveUserAdapter);
        SpaceItemDecoration spaceItemDecoration = new SpaceItemDecoration(Utils.dpToPxInt(getContext(), 12.0f));
        this.spaceItemDecoration = spaceItemDecoration;
        addItemDecoration(spaceItemDecoration);
        setItemAnimator(null);
        this.chatHelper = new ChatHelper(context);
    }
}
