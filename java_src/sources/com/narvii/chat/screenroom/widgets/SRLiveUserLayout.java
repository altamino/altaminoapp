package com.narvii.chat.screenroom.widgets;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.chat.rtc.ChannelUserWrapper;
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

/* JADX INFO: loaded from: classes8.dex */
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

    private ChannelUserWrapper findHost() {
        ChannelUser channelUser;
        for (int i10 = 0; i10 < this.presenterList.size(); i10++) {
            ChannelUserWrapper channelUserWrapperValueAt = this.presenterList.valueAt(i10);
            if (channelUserWrapperValueAt != null && (channelUser = channelUserWrapperValueAt.channelUser) != null && channelUser.isHost) {
                return channelUserWrapperValueAt;
            }
        }
        return null;
    }

    private boolean updateHostWrapperInList(SparseArray<ChannelUserWrapper> sparseArray) {
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i10);
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

    public void setHostUpdateListener(HostUpdateListener hostUpdateListener) {
        this.hostUpdateListener = hostUpdateListener;
    }

    public void setOnUserCountClickListener(OnUserCountClickListener onUserCountClickListener) {
        this.onUserCountClickListener = onUserCountClickListener;
    }

    private SparseArray<ChannelUserWrapper> filterHostForChatThread(SparseArray<ChannelUserWrapper> sparseArray) {
        if (this.hostUserForChatThread == null) {
            return sparseArray;
        }
        SparseArray<ChannelUserWrapper> sparseArray2 = new SparseArray<>();
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i10);
            ChannelUser channelUser = channelUserWrapperValueAt.channelUser;
            if (channelUser == null || !TextUtils.equals(channelUser.uid(), this.hostUserForChatThread.uid())) {
                sparseArray2.put(channelUserWrapperValueAt.channelUid, channelUserWrapperValueAt.m1315clone());
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        ChannelUser channelUser;
        if (this.participantItemClickListener == null || this.hostWrapperForChatThread == null) {
            return;
        }
        LogEvent.Builder builderArea = LogEvent.clickBuilder(LogUtils.getPageContext(this), ActSemantic.checkDetail).area("HostIcon");
        ChannelUserWrapper channelUserWrapper = this.hostWrapperForChatThread;
        builderArea.object((channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) ? null : channelUser.userProfile).send();
        this.participantItemClickListener.onParticipantItemClicked(this.hostWrapperForChatThread);
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
        int i10 = this.curChannel.channelUid;
        channelUser.channelUid = i10;
        channelUser.joinRole = 1;
        channelUser.isHost = false;
        channelUser.isOffline = true;
        this.hostWrapperForChatThread = new ChannelUserWrapper(channelUser, i10);
    }

    private void updateHost() {
        SignallingChannel signallingChannel;
        if (this.hostWrapperForChatThread == null || (signallingChannel = this.curChannel) == null) {
            return;
        }
        this.hostView.setLocalUid(signallingChannel.channelUid);
        ChannelUserWrapper channelUserWrapper = this.hostWrapperForChatThread;
        ChannelUser channelUser = channelUserWrapper.channelUser;
        this.hostView.updateView(this.curChannel, channelUserWrapper, channelUser != null && channelUser.isHost, false, this.liveUserRecyclerView.isLocalMuted(channelUserWrapper), getContext().getString(R.string.host));
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
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i10);
            int i11 = signallingChannel.channelUid;
            int i12 = channelUserWrapperValueAt.channelUid;
            if (!(i11 == i12 && channelUserWrapperValueAt.isPromotingPresenter) && ((channelUser = channelUserWrapperValueAt.channelUser) == null || channelUser.joinRole != 1)) {
                this.audienceList.put(sparseArray.keyAt(i10), channelUserWrapperValueAt);
            } else {
                arrayList.add(Integer.valueOf(i12));
                if (this.presenterList.indexOfKey(channelUserWrapperValueAt.channelUid) < 0) {
                    arrayList2.add(Integer.valueOf(channelUserWrapperValueAt.channelUid));
                } else if (!Utils.isEqualsNotNull(this.presenterList.get(channelUserWrapperValueAt.channelUid), channelUserWrapperValueAt)) {
                    this.presenterList.put(channelUserWrapperValueAt.channelUid, channelUserWrapperValueAt.m1315clone());
                }
            }
        }
        for (int i13 = 0; i13 < this.presenterList.size(); i13++) {
            ChannelUserWrapper channelUserWrapperValueAt2 = this.presenterList.valueAt(i13);
            if (!arrayList.contains(Integer.valueOf(channelUserWrapperValueAt2.channelUid))) {
                arrayList3.add(Integer.valueOf(channelUserWrapperValueAt2.channelUid));
            }
        }
        for (int i14 = 0; i14 < arrayList3.size(); i14++) {
            this.presenterList.remove(((Integer) arrayList3.get(i14)).intValue());
        }
        for (int i15 = 0; i15 < arrayList2.size(); i15++) {
            this.presenterList.put(((Integer) arrayList2.get(i15)).intValue(), sparseArray.get(((Integer) arrayList2.get(i15)).intValue()).m1315clone());
        }
        if (this.hostUserForChatThread != null) {
            refreshHostWrapper();
            updateLayout();
        }
    }

    public void onChannelStatusChanged() {
        this.liveUserRecyclerView.onChannelStatusChanged();
    }

    public void setChatThread(ChatThread chatThread) {
        if (chatThread == null) {
            return;
        }
        this.hostUserForChatThread = chatThread.author;
        this.liveUserRecyclerView.setChatThread(chatThread);
        boolean z6 = !ChatHelperKt.isSingleChat(chatThread);
        this.showHostView = z6;
        this.hostView.setVisibility(z6 ? 0 : 8);
        this.gapView.setVisibility(this.showHostView ? 0 : 8);
        this.gapView2.setVisibility(this.showHostView ? 0 : 8);
        if (this.curChannel != null) {
            refreshHostWrapper();
            updateLayout();
        }
    }

    public void setItemClickListener(SRLiveUserRecyclerView.ParticipantItemClickListener participantItemClickListener) {
        this.participantItemClickListener = participantItemClickListener;
        this.liveUserRecyclerView.setItemClickListener(participantItemClickListener);
    }

    public void setLandscape(boolean z6) {
        this.linearLayout.setGravity(z6 ? 1 : 16);
        this.linearLayout2.setGravity(z6 ? 1 : 16);
        this.liveUserCountContainer.setOrientation(!z6 ? 1 : 0);
        this.linearLayout.setOrientation(z6 ? 1 : 0);
        this.linearLayout2.setOrientation(z6 ? 1 : 0);
        this.liveUserRecyclerView.setLandscape(z6);
        View viewFindViewById = this.hostView.findViewById(R.id.user_avatar_container);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams();
        int iDpToPxInt = Utils.dpToPxInt(getContext(), z6 ? 50.0f : 56.0f);
        marginLayoutParams.width = iDpToPxInt;
        marginLayoutParams.height = iDpToPxInt;
        viewFindViewById.setLayoutParams(marginLayoutParams);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.liveUserCount.getLayoutParams();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_count_margin);
        if (!z6) {
            layoutParams.setMargins(0, dimensionPixelSize, 0, 0);
        } else if (Utils.isRtl()) {
            layoutParams.setMargins(0, 0, dimensionPixelSize, 0);
        } else {
            layoutParams.setMargins(dimensionPixelSize, 0, 0, 0);
        }
        ViewGroup.LayoutParams layoutParams2 = this.liveUserCountContainer.getLayoutParams();
        if (z6) {
            layoutParams2.width = -1;
            layoutParams2.height = getContext().getResources().getDimensionPixelSize(R.dimen.live_user_count_container_height_landscape);
        } else {
            layoutParams2.width = getContext().getResources().getDimensionPixelSize(R.dimen.live_user_count_container_width);
            layoutParams2.height = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_recycler_view_height);
        }
        this.liveUserCountContainer.setLayoutParams(layoutParams2);
        ViewGroup.LayoutParams layoutParams3 = this.liveUserRecyclerView.getLayoutParams();
        if (z6) {
            layoutParams3.width = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_recycler_view_height_landscape);
            layoutParams3.height = -1;
        } else {
            layoutParams3.width = -1;
            layoutParams3.height = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_container_recycler_view_height);
        }
        if (z6) {
            int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_recycler_padding_landscape);
            this.liveUserRecyclerView.setPadding(dimensionPixelSize2, 0, dimensionPixelSize2, 0);
        } else {
            int dimensionPixelSize3 = getContext().getResources().getDimensionPixelSize(R.dimen.sr_live_user_recycler_padding);
            this.liveUserRecyclerView.setPadding(0, dimensionPixelSize3, 0, dimensionPixelSize3);
        }
        this.liveUserRecyclerView.setLayoutParams(layoutParams3);
    }

    public void setTextOnly(boolean z6) {
        this.liveUserRecyclerView.setTextOnly(z6);
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

    public SRLiveUserLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(getContext(), R.layout.sr_live_user_container, this);
        this.liveUserRecyclerView = (SRLiveUserRecyclerView) findViewById(R.id.live_user_recycler);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.live_user_count_container);
        this.liveUserCountContainer = linearLayout;
        linearLayout.setOnClickListener(this);
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
        sRPresenterItemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2042a.lambda$new$0(view);
            }
        });
    }

    private void updateHostLayout() {
        HostUpdateListener hostUpdateListener;
        ChannelUserWrapper channelUserWrapperFindHost = findHost();
        if (channelUserWrapperFindHost != null && (hostUpdateListener = this.hostUpdateListener) != null) {
            hostUpdateListener.onHostUpdated(channelUserWrapperFindHost);
        }
        updateHost();
    }

    public void notifyUserWrapperListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray, int i10) {
        updateParticipantLayout(signallingChannel, sparseArray);
        this.liveUserCount.setText(String.valueOf(i10));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.live_user_count_container) {
            LogEvent.clickBuilder(LogUtils.getPageContext(this), ActSemantic.listViewEnter).area("CountButton").send();
            OnUserCountClickListener onUserCountClickListener = this.onUserCountClickListener;
            if (onUserCountClickListener != null) {
                onUserCountClickListener.onClick(view);
            }
        }
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

    public void updateHostVolume(int i10) {
        ChannelUserWrapper channelUserWrapperFindHost = findHost();
        if (channelUserWrapperFindHost != null) {
            this.liveUserRecyclerView.updateHostVolume(i10);
            if (isHostSameAsHostForChatThread(channelUserWrapperFindHost)) {
                this.hostView.setHostVolumeLevel(i10);
            }
        }
    }

    public void updateLayout() {
        updateHostLayout();
        if (this.showHostView) {
            this.liveUserRecyclerView.updateChannelUserWrapperList(this.curChannel, filterHostForChatThread(this.presenterList), filterHostForChatThread(this.audienceList));
        } else {
            this.liveUserRecyclerView.updateChannelUserWrapperList(this.curChannel, this.presenterList, this.audienceList);
        }
    }
}
