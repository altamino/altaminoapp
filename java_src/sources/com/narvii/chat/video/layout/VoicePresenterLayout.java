package com.narvii.chat.video.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.PresenterItemClickListener;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Utils;
import com.narvii.video.ui.UserStatusData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
public class VoicePresenterLayout extends FrameLayout implements RtcDataUpdateHandler {
    private static final int DEFAULT_CELL_HEIGHT = 97;
    private static final int DEFAULT_CELL_WIDTH = 119;
    public static final int DISPLAY_MODE_GRID = 0;
    public static final int DISPLAY_MODE_PAIR = 1;
    private static final int GRID_COLUMN_COUNT = 3;
    private static final float GRID_MODE_HEIGHT_RATIO = 0.85f;
    private static final float GRID_MODE_WIDTH_RATIO = 0.316f;
    private static final int GRID_ROW_COUNT = 2;
    private static final int PAIR_CHILD_COUNT = 2;
    private static final float PAIR_MODE_HEIGHT_RATIO = 0.33f;
    private static final float PAIR_MODE_WIDTH_RATIO = 1.0f;
    private ChatThread chatThread;
    CommunityConfigHelper communityConfigHelper;
    private int displayMode;
    private LinearLayout gridModeContainer;
    private List<VoicePresenterItemView> groupVoicePresenterViews;
    PresenterItemClickListener itemClickListener;
    private int localChannelUid;
    Set<String> localMutedUidList;
    private int ndcId;
    NVContext nvContext;
    private int organizerUid;
    private LinearLayout pairModeContainer;
    private List<VoicePresenterItemView> pairVoicePresenterViews;
    private int screenWidth;
    SparseArray<ChannelUserWrapper> userList;

    public VoicePresenterLayout(@NonNull Context context) {
        this(context, null);
    }

    public static int getContentHeight(Context context, ChatThread chatThread) {
        float screenWidth = Utils.getScreenWidth(context) - (context.getResources().getDimensionPixelSize(R.dimen.live_chat_horizontal_padding) * 2);
        int i10 = (int) (GRID_MODE_WIDTH_RATIO * screenWidth * GRID_MODE_HEIGHT_RATIO * 2.0f);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.live_chat_indicator_padding);
        return (chatThread == null || chatThread.type == 0) ? ((int) Math.min(Utils.getScreenHeight(context) * PAIR_MODE_HEIGHT_RATIO, screenWidth * 1.0f)) + dimensionPixelSize : i10 + dimensionPixelSize;
    }

    private void updateViews(List<Integer> list) {
        SparseArray<ChannelUserWrapper> sparseArray;
        Integer num;
        if (list == null || list.size() == 0) {
            return;
        }
        int i10 = this.displayMode;
        int i11 = 0;
        if (i10 == 1) {
            VoicePresenterItemView voicePresenterItemView = this.pairVoicePresenterViews.get(0);
            if (list.size() > 1) {
                sparseArray = this.userList;
                num = list.get(1);
            } else {
                sparseArray = this.userList;
                num = list.get(0);
            }
            updateChildView(voicePresenterItemView, sparseArray.get(num.intValue()));
            voicePresenterItemView.setVisibility(list.size() > 1 ? 0 : 8);
            updateChildView(this.pairVoicePresenterViews.get(1), list.size() > 0 ? this.userList.get(list.get(0).intValue()) : null);
            return;
        }
        if (i10 == 0) {
            ArrayList arrayList = new ArrayList();
            for (Integer num2 : list) {
                if (num2.intValue() != this.organizerUid) {
                    arrayList.add(num2);
                }
            }
            while (i11 < 6) {
                updateChildView(this.groupVoicePresenterViews.get(i11), arrayList.size() > i11 ? this.userList.get(((Integer) arrayList.get(i11)).intValue()) : null);
                i11++;
            }
        }
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserDataListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
    }

    public void setChatThread(ChatThread chatThread) {
        this.chatThread = chatThread;
    }

    public void setPresenterItemClickListener(PresenterItemClickListener presenterItemClickListener) {
        this.itemClickListener = presenterItemClickListener;
    }

    public VoicePresenterLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.localChannelUid = -1;
        this.organizerUid = -1;
        this.groupVoicePresenterViews = new ArrayList();
        this.pairVoicePresenterViews = new ArrayList();
        this.screenWidth = Utils.getScreenWidth(context);
        this.userList = new SparseArray<>();
        initGridModeLayout(context);
        initPairModeLayout(context);
        NVContext nVContext = Utils.getNVContext(getContext());
        this.nvContext = nVContext;
        this.communityConfigHelper = new CommunityConfigHelper(nVContext);
        setKeepScreenOn(true);
    }

    private void configListener(final VoicePresenterItemView voicePresenterItemView) {
        if (voicePresenterItemView == null) {
            return;
        }
        voicePresenterItemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.layout.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2139a.lambda$configListener$0(voicePresenterItemView, view);
            }
        });
    }

    private int getGridModeCellHeight() {
        if (this.screenWidth == 0) {
            return 97;
        }
        return (int) (getGridModeCellWidth() * GRID_MODE_HEIGHT_RATIO);
    }

    private int getGridModeCellWidth() {
        int dimensionPixelSize = this.screenWidth - (getContext().getResources().getDimensionPixelSize(R.dimen.live_chat_horizontal_padding) * 2);
        if (this.screenWidth == 0) {
            return 119;
        }
        return (int) (dimensionPixelSize * GRID_MODE_WIDTH_RATIO);
    }

    private void initGridModeLayout(Context context) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.gridModeContainer = linearLayout;
        linearLayout.setOrientation(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 49;
        this.gridModeContainer.setClipChildren(false);
        addView(this.gridModeContainer, layoutParams);
        for (int i10 = 0; i10 < 2; i10++) {
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setClipChildren(false);
            linearLayout2.setOrientation(0);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 17;
            this.gridModeContainer.addView(linearLayout2, layoutParams2);
            for (int i11 = 0; i11 < 3; i11++) {
                VoicePresenterItemView voicePresenterItemView = new VoicePresenterItemView(getContext());
                linearLayout2.addView(voicePresenterItemView, new LinearLayout.LayoutParams(getGridModeCellWidth(), getGridModeCellHeight()));
                this.groupVoicePresenterViews.add(voicePresenterItemView);
                configListener(voicePresenterItemView);
            }
        }
    }

    private void initPairModeLayout(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        this.pairModeContainer = linearLayout;
        linearLayout.setOrientation(0);
        for (int i10 = 0; i10 < 2; i10++) {
            VoicePresenterItemView voicePresenterItemView = new VoicePresenterItemView(getContext(), true);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.screenWidth / 2, (int) Math.min(Utils.getScreenHeight(getContext()) * PAIR_MODE_HEIGHT_RATIO, this.screenWidth * 1.0f));
            configListener(voicePresenterItemView);
            this.pairModeContainer.addView(voicePresenterItemView, layoutParams);
            this.pairVoicePresenterViews.add(voicePresenterItemView);
        }
        this.pairModeContainer.setGravity(17);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 17;
        this.pairModeContainer.setVisibility(8);
        addView(this.pairModeContainer, layoutParams2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    public /* synthetic */ void lambda$configListener$0(VoicePresenterItemView voicePresenterItemView, View view) {
        boolean z6;
        ChannelUserWrapper channelUserWrapper = this.userList.get(voicePresenterItemView.channelUid);
        SignallingChannel mainSigChannel = ((RtcService) this.nvContext.getService("rtc")).getMainSigChannel();
        if (mainSigChannel != null) {
            z6 = mainSigChannel.joinRole == 1;
        }
        PresenterItemClickListener presenterItemClickListener = this.itemClickListener;
        if (presenterItemClickListener != null) {
            presenterItemClickListener.onPresenterItemClicked(voicePresenterItemView, channelUserWrapper, z6, 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001e  */
    /* JADX WARN: Code duplicated, block: B:41:0x005b  */
    private void updateChildView(VoicePresenterItemView voicePresenterItemView, ChannelUserWrapper channelUserWrapper) {
        boolean z6;
        boolean z10;
        CommunityConfigHelper communityConfigHelper;
        ChannelUser channelUser;
        ChannelUser channelUser2;
        if (voicePresenterItemView != null) {
            Set<String> set = this.localMutedUidList;
            if (set == null) {
                z6 = false;
            } else {
                if (set.contains((channelUserWrapper == null || (channelUser2 = channelUserWrapper.channelUser) == null) ? null : channelUser2.uid())) {
                    z6 = true;
                } else {
                    z6 = false;
                }
            }
            User user = (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) ? null : channelUser.userProfile;
            boolean z11 = user != null && user.isSubscribeMemberShip() && (communityConfigHelper = this.communityConfigHelper) != null && communityConfigHelper.isPremiumFeatureEnabled();
            ChatThread chatThread = this.chatThread;
            if (chatThread == null || chatThread.type != 2) {
                z10 = false;
            } else {
                if (Utils.isEqualsNotNull(chatThread.uid(), user != null ? user.uid() : null)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            voicePresenterItemView.updatePresenter(channelUserWrapper, channelUserWrapper != null && channelUserWrapper.channelUid == this.localChannelUid, z11, z6, z10);
        }
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyLocalMuteUserListChanged(Set<String> set) {
        this.localMutedUidList = new HashSet(set);
        updateViews();
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserDataChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        if (channelUserWrapper == null) {
            return;
        }
        VoicePresenterItemView voicePresenterItemView = null;
        if (this.displayMode != 1) {
            for (VoicePresenterItemView voicePresenterItemView2 : this.groupVoicePresenterViews) {
                if (voicePresenterItemView2.channelUid == channelUserWrapper.channelUid) {
                    voicePresenterItemView = voicePresenterItemView2;
                    break;
                }
            }
        } else {
            for (VoicePresenterItemView voicePresenterItemView3 : this.pairVoicePresenterViews) {
                if (voicePresenterItemView3.channelUid == channelUserWrapper.channelUid) {
                    voicePresenterItemView = voicePresenterItemView3;
                    break;
                }
            }
        }
        updateChildView(voicePresenterItemView, channelUserWrapper);
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserWrapperListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
        UserStatusData userStatusData;
        int i10;
        int i11;
        if (sparseArray == null || signallingChannel == null || !SignallingChannel.isLegalChannelType(signallingChannel.channelType)) {
            return;
        }
        if (this.localChannelUid == -1 && (i11 = signallingChannel.channelUid) != 0) {
            this.localChannelUid = i11;
        }
        if (this.ndcId == 0 && (i10 = signallingChannel.ndcId) != 0) {
            this.ndcId = i10;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList<Integer> arrayList3 = new ArrayList();
        for (int i12 = 0; i12 < this.userList.size(); i12++) {
            arrayList3.add(Integer.valueOf(this.userList.keyAt(i12)));
        }
        int i13 = 0;
        while (true) {
            if (i13 >= sparseArray.size()) {
                break;
            }
            ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i13);
            ChannelUser channelUser = channelUserWrapperValueAt.channelUser;
            if (channelUser != null && channelUser.joinRole == 1) {
                ChatThread chatThread = this.chatThread;
                if (Utils.isEqualsNotNull(chatThread != null ? chatThread.uid() : null, channelUserWrapperValueAt.channelUser.uid())) {
                    this.organizerUid = channelUserWrapperValueAt.channelUid;
                }
                if (this.userList.indexOfKey(channelUserWrapperValueAt.channelUid) < 0) {
                    arrayList.add(Integer.valueOf(channelUserWrapperValueAt.channelUid));
                    arrayList3.add(Integer.valueOf(channelUserWrapperValueAt.channelUid));
                } else if (!Utils.isEqualsNotNull(this.userList.get(channelUserWrapperValueAt.channelUid), channelUserWrapperValueAt)) {
                    this.userList.put(channelUserWrapperValueAt.channelUid, channelUserWrapperValueAt.m1315clone());
                }
            }
            i13++;
        }
        for (int i14 = 0; i14 < this.userList.size(); i14++) {
            ChannelUserWrapper channelUserWrapperValueAt2 = this.userList.valueAt(i14);
            boolean z6 = (sparseArray.get(channelUserWrapperValueAt2.channelUid) == null || sparseArray.get(channelUserWrapperValueAt2.channelUid).channelUser == null || sparseArray.get(channelUserWrapperValueAt2.channelUid).channelUser.joinRole == 1) ? false : true;
            if (sparseArray.indexOfKey(channelUserWrapperValueAt2.channelUid) < 0 || z6) {
                arrayList2.add(Integer.valueOf(channelUserWrapperValueAt2.channelUid));
                arrayList3.remove(Integer.valueOf(channelUserWrapperValueAt2.channelUid));
            }
        }
        for (int i15 = 0; i15 < arrayList2.size(); i15++) {
            this.userList.remove(((Integer) arrayList2.get(i15)).intValue());
        }
        for (int i16 = 0; i16 < arrayList.size(); i16++) {
            this.userList.put(((Integer) arrayList.get(i16)).intValue(), sparseArray.get(((Integer) arrayList.get(i16)).intValue()).m1315clone());
        }
        if (arrayList3.size() >= 6) {
            ArrayList arrayList4 = new ArrayList();
            for (int size = arrayList3.size() - 1; size > 0; size--) {
                ChannelUserWrapper channelUserWrapper = this.userList.get(((Integer) arrayList3.get(size)).intValue());
                if (channelUserWrapper != null) {
                    ChannelUser channelUser2 = channelUserWrapper.channelUser;
                    if (channelUserWrapper.channelUid != signallingChannel.channelUid) {
                        String strUid = channelUser2.uid();
                        ChatThread chatThread2 = this.chatThread;
                        if (!Utils.isEqualsNotNull(strUid, chatThread2 == null ? null : chatThread2.uid()) && ((userStatusData = channelUserWrapper.userStatus) == null || userStatusData.mVolume == 0)) {
                            arrayList4.add(Integer.valueOf(size));
                        }
                    }
                }
            }
            int size2 = arrayList4.size();
            if (size2 > 0) {
                ArrayList arrayList5 = new ArrayList();
                for (int i17 = 6; i17 < arrayList3.size(); i17++) {
                    UserStatusData userStatusData2 = this.userList.get(((Integer) arrayList3.get(i17)).intValue()).userStatus;
                    if (userStatusData2 != null && userStatusData2.mVolume != 0) {
                        arrayList5.add(Integer.valueOf(i17));
                        size2--;
                    }
                    if (size2 == 0) {
                        break;
                    }
                }
                for (int i18 = 0; i18 < arrayList5.size(); i18++) {
                    Collections.swap(arrayList3, ((Integer) arrayList5.get(i18)).intValue(), ((Integer) arrayList4.get(i18)).intValue());
                }
            }
        }
        ArrayList arrayList6 = new ArrayList();
        for (Integer num : arrayList3) {
            String strUid2 = (this.userList.get(num.intValue()) == null || this.userList.get(num.intValue()).channelUser == null) ? null : this.userList.get(num.intValue()).channelUser.uid();
            if (num.intValue() != signallingChannel.channelUid) {
                ChatThread chatThread3 = this.chatThread;
                if (!Utils.isEqualsNotNull(chatThread3 == null ? null : chatThread3.uid(), strUid2)) {
                    arrayList6.add(num);
                }
            }
            arrayList6.add(0, num);
        }
        updateViews(arrayList6);
    }

    public void setDisplayMode(int i10) {
        if (i10 != this.displayMode) {
            this.gridModeContainer.setVisibility(i10 == 0 ? 0 : 8);
            this.pairModeContainer.setVisibility(i10 == 1 ? 0 : 8);
        }
        this.displayMode = i10;
    }

    private int getPairModeCellHeight(Context context) {
        return (int) Math.min(Utils.getScreenHeight(getContext()) * PAIR_MODE_HEIGHT_RATIO, this.screenWidth * 1.0f);
    }

    public int getContentHeight() {
        int pairModeCellHeight;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.live_chat_indicator_padding);
        if (this.displayMode == 0) {
            pairModeCellHeight = getGridModeCellHeight() * 2;
        } else {
            pairModeCellHeight = getPairModeCellHeight(getContext());
        }
        return dimensionPixelSize + pairModeCellHeight;
    }

    private void updateViews() {
        if (this.displayMode == 1) {
            for (VoicePresenterItemView voicePresenterItemView : this.pairVoicePresenterViews) {
                int i10 = voicePresenterItemView.channelUid;
                if (i10 != -1) {
                    updateChildView(voicePresenterItemView, this.userList.get(i10));
                }
            }
            return;
        }
        for (VoicePresenterItemView voicePresenterItemView2 : this.groupVoicePresenterViews) {
            int i11 = voicePresenterItemView2.channelUid;
            if (i11 != -1) {
                updateChildView(voicePresenterItemView2, this.userList.get(i11));
            }
        }
    }
}
