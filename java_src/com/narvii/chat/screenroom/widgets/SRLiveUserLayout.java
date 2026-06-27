package com.narvii.chat.screenroom.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.screenroom.widgets.SRLiveUserRecyclerView;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatHelperKt;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.util.Utils;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class SRLiveUserLayout extends FrameLayout implements View.OnClickListener {
    private SparseArray<ChannelUserWrapper> audienceList;
    private SignallingChannel curChannel;
    private View gapView;
    private View gapView2;
    HostUpdateListener hostUpdateListener;
    private User hostUserForChatThread;
    private SRPresenterItemView hostView;
    private ChannelUserWrapper hostWrapperForChatThread;
    LinearLayout linearLayout;
    private LinearLayout linearLayout2;
    TextView liveUserCount;
    LinearLayout liveUserCountContainer;
    SRLiveUserRecyclerView liveUserRecyclerView;
    OnUserCountClickListener onUserCountClickListener;
    SRLiveUserRecyclerView.ParticipantItemClickListener participantItemClickListener;
    private SparseArray<ChannelUserWrapper> presenterList;
    private boolean showHostView;

    public interface HostUpdateListener {
        void onHostUpdated(ChannelUserWrapper channelUserWrapper);
    }

    public interface OnUserCountClickListener {
        void onClick(View view);
    }

    public SRLiveUserLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        FrameLayout.inflate(getContext(), R.layout.sr_live_user_container, this);
        this.liveUserRecyclerView = (SRLiveUserRecyclerView) findViewById(R.id.live_user_recycler);
        this.liveUserCountContainer = (LinearLayout) findViewById(R.id.live_user_count_container);
        this.liveUserCountContainer.setOnClickListener(this);
        this.liveUserCount = (TextView) findViewById(R.id.live_user_count);
        this.linearLayout = (LinearLayout) findViewById(R.id.live_user_container_root);
        this.hostView = (SRPresenterItemView) findViewById(R.id.host_view);
        this.gapView = findViewById(R.id.gap_view);
        this.gapView2 = findViewById(R.id.gap_view2);
        this.linearLayout2 = (LinearLayout) findViewById(R.id.live_user_recycler_container);
        this.presenterList = new SparseArray<>();
        this.audienceList = new SparseArray<>();
        SRPresenterItemView sRPresenterItemView = this.hostView;
        sRPresenterItemView.isHostView = true;
        sRPresenterItemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.-$$Lambda$SRLiveUserLayout$DSHtBPQL9EcQyQThYuVbrzVhLAQ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0$SRLiveUserLayout(view);
            }
        });
    }

    public /* synthetic */ void lambda$new$0$SRLiveUserLayout(View view) {
        ChannelUser channelUser;
        if (this.participantItemClickListener == null || this.hostWrapperForChatThread == null) {
            return;
        }
        LogEvent.Builder builderArea = LogEvent.clickBuilder(LogUtils.getPageContext(this), ActSemantic.checkDetail).area("HostIcon");
        ChannelUserWrapper channelUserWrapper = this.hostWrapperForChatThread;
        builderArea.object((channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) ? null : channelUser.userProfile).send();
        this.participantItemClickListener.onParticipantItemClicked(this.hostWrapperForChatThread);
    }

    public void setOnUserCountClickListener(OnUserCountClickListener onUserCountClickListener) {
        this.onUserCountClickListener = onUserCountClickListener;
    }

    public void setHostUpdateListener(HostUpdateListener hostUpdateListener) {
        this.hostUpdateListener = hostUpdateListener;
    }

    private void updateHost() {
        SignallingChannel signallingChannel;
        if (this.hostWrapperForChatThread == null || (signallingChannel = this.curChannel) == null) {
            return;
        }
        this.hostView.setLocalUid(signallingChannel.channelUid);
        ChannelUser channelUser = this.hostWrapperForChatThread.channelUser;
        boolean z = channelUser != null && channelUser.isHost;
        SRPresenterItemView sRPresenterItemView = this.hostView;
        SignallingChannel signallingChannel2 = this.curChannel;
        ChannelUserWrapper channelUserWrapper = this.hostWrapperForChatThread;
        sRPresenterItemView.updateView(signallingChannel2, channelUserWrapper, z, false, this.liveUserRecyclerView.isLocalMuted(channelUserWrapper), getContext().getString(R.string.host));
    }

    public void setLandscape(boolean z) throws Resources.NotFoundException {
        this.linearLayout.setGravity(z ? 1 : 16);
        this.linearLayout2.setGravity(z ? 1 : 16);
        this.liveUserCountContainer.setOrientation(!z ? 1 : 0);
        this.linearLayout.setOrientation(z ? 1 : 0);
        this.linearLayout2.setOrientation(z ? 1 : 0);
        this.liveUserRecyclerView.setLandscape(z);
        View viewFindViewById = this.hostView.findViewById(R.id.user_avatar_container);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams();
        int iDpToPxInt = Utils.dpToPxInt(getContext(), z ? 50.0f : 56.0f);
        marginLayoutParams.width = iDpToPxInt;
        marginLayoutParams.height = iDpToPxInt;
        viewFindViewById.setLayoutParams(marginLayoutParams);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.liveUserCount.getLayoutParams();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_count_margin);
        if (z) {
            if (Utils.isRtl()) {
                layoutParams.setMargins(0, 0, dimensionPixelSize, 0);
            } else {
                layoutParams.setMargins(dimensionPixelSize, 0, 0, 0);
            }
        } else {
            layoutParams.setMargins(0, dimensionPixelSize, 0, 0);
        }
        ViewGroup.LayoutParams layoutParams2 = this.liveUserCountContainer.getLayoutParams();
        if (z) {
            layoutParams2.width = -1;
            layoutParams2.height = getContext().getResources().getDimensionPixelSize(R.dimen.live_user_count_container_height_landscape);
        } else {
            layoutParams2.width = getContext().getResources().getDimensionPixelSize(R.dimen.live_user_count_container_width);
            layoutParams2.height = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_recycler_view_height);
        }
        this.liveUserCountContainer.setLayoutParams(layoutParams2);
        ViewGroup.LayoutParams layoutParams3 = this.liveUserRecyclerView.getLayoutParams();
        if (z) {
            layoutParams3.width = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_recycler_view_height_landscape);
            layoutParams3.height = -1;
        } else {
            layoutParams3.width = -1;
            layoutParams3.height = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_recycler_view_height);
        }
        if (z) {
            int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_recycler_padding_landscape);
            this.liveUserRecyclerView.setPadding(dimensionPixelSize2, 0, dimensionPixelSize2, 0);
        } else {
            int dimensionPixelSize3 = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_recycler_padding);
            this.liveUserRecyclerView.setPadding(0, dimensionPixelSize3, 0, dimensionPixelSize3);
        }
        this.liveUserRecyclerView.setLayoutParams(layoutParams3);
    }

    public void notifyUserWrapperListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray, int i) {
        updateParticipantLayout(signallingChannel, sparseArray);
        this.liveUserCount.setText(String.valueOf(i));
    }

    private void updateParticipantLayout(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
        ChannelUser channelUser;
        if (signallingChannel == null) {
            return;
        }
        this.curChannel = signallingChannel;
        if (sparseArray == null || sparseArray.size() == 0) {
            this.presenterList.clear();
            this.audienceList.clear();
            updateLayout();
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        this.audienceList.clear();
        for (int i = 0; i < sparseArray.size(); i++) {
            ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i);
            if (((signallingChannel.channelUid == channelUserWrapperValueAt.channelUid) && channelUserWrapperValueAt.isPromotingPresenter) || ((channelUser = channelUserWrapperValueAt.channelUser) != null && channelUser.joinRole == 1)) {
                arrayList.add(Integer.valueOf(channelUserWrapperValueAt.channelUid));
                if (this.presenterList.indexOfKey(channelUserWrapperValueAt.channelUid) < 0) {
                    arrayList2.add(Integer.valueOf(channelUserWrapperValueAt.channelUid));
                } else if (!Utils.isEqualsNotNull(this.presenterList.get(channelUserWrapperValueAt.channelUid), channelUserWrapperValueAt)) {
                    this.presenterList.put(channelUserWrapperValueAt.channelUid, channelUserWrapperValueAt.m36clone());
                }
            } else {
                this.audienceList.put(sparseArray.keyAt(i), channelUserWrapperValueAt);
            }
        }
        for (int i2 = 0; i2 < this.presenterList.size(); i2++) {
            ChannelUserWrapper channelUserWrapperValueAt2 = this.presenterList.valueAt(i2);
            if (!arrayList.contains(Integer.valueOf(channelUserWrapperValueAt2.channelUid))) {
                arrayList3.add(Integer.valueOf(channelUserWrapperValueAt2.channelUid));
            }
        }
        for (int i3 = 0; i3 < arrayList3.size(); i3++) {
            this.presenterList.remove(((Integer) arrayList3.get(i3)).intValue());
        }
        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
            this.presenterList.put(((Integer) arrayList2.get(i4)).intValue(), sparseArray.get(((Integer) arrayList2.get(i4)).intValue()).m36clone());
        }
        if (this.hostUserForChatThread != null) {
            refreshHostWrapper();
            updateLayout();
        }
    }

    private void updateHostLayout() {
        HostUpdateListener hostUpdateListener;
        ChannelUserWrapper channelUserWrapperFindHost = findHost();
        if (channelUserWrapperFindHost != null && (hostUpdateListener = this.hostUpdateListener) != null) {
            hostUpdateListener.onHostUpdated(channelUserWrapperFindHost);
        }
        updateHost();
    }

    public void updateLayout() {
        updateHostLayout();
        if (this.showHostView) {
            this.liveUserRecyclerView.updateChannelUserWrapperList(this.curChannel, filterHostForChatThread(this.presenterList), filterHostForChatThread(this.audienceList));
        } else {
            this.liveUserRecyclerView.updateChannelUserWrapperList(this.curChannel, this.presenterList, this.audienceList);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.live_user_count_container) {
            return;
        }
        LogEvent.clickBuilder(LogUtils.getPageContext(this), ActSemantic.listViewEnter).area("CountButton").send();
        OnUserCountClickListener onUserCountClickListener = this.onUserCountClickListener;
        if (onUserCountClickListener != null) {
            onUserCountClickListener.onClick(view);
        }
    }

    public void setItemClickListener(SRLiveUserRecyclerView.ParticipantItemClickListener participantItemClickListener) {
        this.participantItemClickListener = participantItemClickListener;
        this.liveUserRecyclerView.setItemClickListener(participantItemClickListener);
    }

    public void setChatThread(ChatThread chatThread) {
        if (chatThread == null) {
            return;
        }
        this.hostUserForChatThread = chatThread.author;
        this.liveUserRecyclerView.setChatThread(chatThread);
        this.showHostView = !ChatHelperKt.isSingleChat(chatThread);
        this.hostView.setVisibility(this.showHostView ? 0 : 8);
        this.gapView.setVisibility(this.showHostView ? 0 : 8);
        this.gapView2.setVisibility(this.showHostView ? 0 : 8);
        if (this.curChannel != null) {
            refreshHostWrapper();
            updateLayout();
        }
    }

    public void onChannelStatusChanged() {
        this.liveUserRecyclerView.onChannelStatusChanged();
    }

    public void setTextOnly(boolean z) {
        this.liveUserRecyclerView.setTextOnly(z);
    }

    public void updateChannelUserWrapper(ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        HostUpdateListener hostUpdateListener;
        if (channelUserWrapper != null && (channelUser = channelUserWrapper.channelUser) != null) {
            if (channelUser.isHost && (hostUpdateListener = this.hostUpdateListener) != null) {
                hostUpdateListener.onHostUpdated(channelUserWrapper);
            }
            ChannelUserWrapper channelUserWrapper2 = this.hostWrapperForChatThread;
            if (channelUserWrapper2 != null && channelUserWrapper2.channelUser != null && TextUtils.equals(channelUserWrapper.channelUser.uid(), this.hostWrapperForChatThread.channelUser.uid())) {
                this.hostWrapperForChatThread = channelUserWrapper;
                if (this.presenterList.indexOfKey(channelUserWrapper.channelUser.channelUid) >= 0) {
                    this.presenterList.put(channelUserWrapper.channelUser.channelUid, this.hostWrapperForChatThread);
                }
                updateHost();
            }
        }
        this.liveUserRecyclerView.updateChannelUserWrapper(channelUserWrapper);
    }

    public void updateHostItem() {
        ChannelUserWrapper channelUserWrapperFindHost = findHost();
        if (channelUserWrapperFindHost != null) {
            this.liveUserRecyclerView.updateHostItem();
            if (isHostSameAsHostForChatThread(channelUserWrapperFindHost)) {
                refreshHostWrapper();
                updateHostLayout();
            }
        }
    }

    public void updateHostVolume(int i) {
        ChannelUserWrapper channelUserWrapperFindHost = findHost();
        if (channelUserWrapperFindHost != null) {
            this.liveUserRecyclerView.updateHostVolume(i);
            if (isHostSameAsHostForChatThread(channelUserWrapperFindHost)) {
                this.hostView.setHostVolumeLevel(i);
            }
        }
    }

    private ChannelUserWrapper findHost() {
        ChannelUser channelUser;
        for (int i = 0; i < this.presenterList.size(); i++) {
            ChannelUserWrapper channelUserWrapperValueAt = this.presenterList.valueAt(i);
            if (channelUserWrapperValueAt != null && (channelUser = channelUserWrapperValueAt.channelUser) != null && channelUser.isHost) {
                return channelUserWrapperValueAt;
            }
        }
        return null;
    }

    private void refreshHostWrapper() {
        boolean zUpdateHostWrapperInList = updateHostWrapperInList(this.presenterList);
        if (!zUpdateHostWrapperInList) {
            zUpdateHostWrapperInList = updateHostWrapperInList(this.audienceList);
        }
        if (zUpdateHostWrapperInList) {
            return;
        }
        ChannelUser channelUser = new ChannelUser();
        channelUser.userProfile = this.hostUserForChatThread;
        int i = this.curChannel.channelUid;
        channelUser.channelUid = i;
        channelUser.joinRole = 1;
        channelUser.isHost = false;
        channelUser.isOffline = true;
        this.hostWrapperForChatThread = new ChannelUserWrapper(channelUser, i);
    }

    private boolean updateHostWrapperInList(SparseArray<ChannelUserWrapper> sparseArray) {
        for (int i = 0; i < sparseArray.size(); i++) {
            ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i);
            ChannelUser channelUser = channelUserWrapperValueAt.channelUser;
            if (channelUser != null) {
                if (TextUtils.equals(channelUser.uid(), this.hostWrapperForChatThread == null ? null : this.hostUserForChatThread.uid())) {
                    this.hostWrapperForChatThread = channelUserWrapperValueAt;
                    return true;
                }
            }
        }
        return false;
    }

    private SparseArray<ChannelUserWrapper> filterHostForChatThread(SparseArray<ChannelUserWrapper> sparseArray) {
        if (this.hostUserForChatThread == null) {
            return sparseArray;
        }
        SparseArray<ChannelUserWrapper> sparseArray2 = new SparseArray<>();
        for (int i = 0; i < sparseArray.size(); i++) {
            ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i);
            ChannelUser channelUser = channelUserWrapperValueAt.channelUser;
            if (channelUser == null || !TextUtils.equals(channelUser.uid(), this.hostUserForChatThread.uid())) {
                sparseArray2.put(channelUserWrapperValueAt.channelUid, channelUserWrapperValueAt.m36clone());
            }
        }
        return sparseArray2;
    }

    private boolean isHostSameAsHostForChatThread(ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        if (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null || this.hostUserForChatThread == null) {
            return false;
        }
        return TextUtils.equals(channelUser.uid(), this.hostUserForChatThread.uid());
    }
}
