package com.narvii.chat.video.layout;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.PresenterItemClickListener;
import com.narvii.model.ChatThread;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Utils;
import com.narvii.video.ui.UserStatusData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
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

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserDataListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
    }

    public void setPresenterItemClickListener(PresenterItemClickListener presenterItemClickListener) {
        this.itemClickListener = presenterItemClickListener;
    }

    public VoicePresenterLayout(Context context) {
        this(context, null);
    }

    public VoicePresenterLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.localChannelUid = -1;
        this.organizerUid = -1;
        this.groupVoicePresenterViews = new ArrayList();
        this.pairVoicePresenterViews = new ArrayList();
        this.screenWidth = Utils.getScreenWidth(context);
        this.userList = new SparseArray<>();
        initGridModeLayout(context);
        initPairModeLayout(context);
        this.nvContext = Utils.getNVContext(getContext());
        this.communityConfigHelper = new CommunityConfigHelper(this.nvContext);
        setKeepScreenOn(true);
    }

    private void initGridModeLayout(Context context) {
        this.gridModeContainer = new LinearLayout(getContext());
        this.gridModeContainer.setOrientation(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 49;
        this.gridModeContainer.setClipChildren(false);
        addView(this.gridModeContainer, layoutParams);
        for (int i = 0; i < 2; i++) {
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setClipChildren(false);
            linearLayout.setOrientation(0);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 17;
            this.gridModeContainer.addView(linearLayout, layoutParams2);
            for (int i2 = 0; i2 < 3; i2++) {
                VoicePresenterItemView voicePresenterItemView = new VoicePresenterItemView(getContext());
                linearLayout.addView(voicePresenterItemView, new LinearLayout.LayoutParams(getGridModeCellWidth(), getGridModeCellHeight()));
                this.groupVoicePresenterViews.add(voicePresenterItemView);
                configListener(voicePresenterItemView);
            }
        }
    }

    private int getGridModeCellWidth() {
        int dimensionPixelSize = this.screenWidth - (getContext().getResources().getDimensionPixelSize(R.dimen.live_chat_horizontal_padding) * 2);
        if (this.screenWidth == 0) {
            return 119;
        }
        return (int) (dimensionPixelSize * GRID_MODE_WIDTH_RATIO);
    }

    private int getGridModeCellHeight() {
        if (this.screenWidth == 0) {
            return 97;
        }
        return (int) (getGridModeCellWidth() * GRID_MODE_HEIGHT_RATIO);
    }

    private int getPairModeCellHeight(Context context) {
        return (int) Math.min(Utils.getScreenHeight(getContext()) * PAIR_MODE_HEIGHT_RATIO, this.screenWidth * 1.0f);
    }

    private void initPairModeLayout(Context context) {
        this.pairModeContainer = new LinearLayout(context);
        this.pairModeContainer.setOrientation(0);
        for (int i = 0; i < 2; i++) {
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

    private void configListener(final VoicePresenterItemView voicePresenterItemView) {
        if (voicePresenterItemView == null) {
            return;
        }
        voicePresenterItemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.layout.-$$Lambda$VoicePresenterLayout$nJq8uFrSfOSh662-G5raDrcL3JI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$configListener$0$VoicePresenterLayout(voicePresenterItemView, view);
            }
        });
    }

    public /* synthetic */ void lambda$configListener$0$VoicePresenterLayout(VoicePresenterItemView voicePresenterItemView, View view) {
        ChannelUserWrapper channelUserWrapper = this.userList.get(voicePresenterItemView.channelUid);
        SignallingChannel mainSigChannel = ((RtcService) this.nvContext.getService("rtc")).getMainSigChannel();
        boolean z = mainSigChannel != null && mainSigChannel.joinRole == 1;
        PresenterItemClickListener presenterItemClickListener = this.itemClickListener;
        if (presenterItemClickListener != null) {
            presenterItemClickListener.onPresenterItemClicked(voicePresenterItemView, channelUserWrapper, z, 0);
        }
    }

    public void setDisplayMode(int i) {
        if (i != this.displayMode) {
            this.gridModeContainer.setVisibility(i == 0 ? 0 : 8);
            this.pairModeContainer.setVisibility(i != 1 ? 8 : 0);
        }
        this.displayMode = i;
    }

    public void setChatThread(ChatThread chatThread) {
        this.chatThread = chatThread;
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserWrapperListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
        UserStatusData userStatusData;
        int i;
        int i2;
        if (sparseArray == null || signallingChannel == null || !SignallingChannel.isLegalChannelType(signallingChannel.channelType)) {
            return;
        }
        if (this.localChannelUid == -1 && (i2 = signallingChannel.channelUid) != 0) {
            this.localChannelUid = i2;
        }
        if (this.ndcId == 0 && (i = signallingChannel.ndcId) != 0) {
            this.ndcId = i;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i3 = 0; i3 < this.userList.size(); i3++) {
            arrayList3.add(Integer.valueOf(this.userList.keyAt(i3)));
        }
        int i4 = 0;
        while (true) {
            if (i4 >= sparseArray.size()) {
                break;
            }
            ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i4);
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
                    this.userList.put(channelUserWrapperValueAt.channelUid, channelUserWrapperValueAt.m36clone());
                }
            }
            i4++;
        }
        for (int i5 = 0; i5 < this.userList.size(); i5++) {
            ChannelUserWrapper channelUserWrapperValueAt2 = this.userList.valueAt(i5);
            boolean z = (sparseArray.get(channelUserWrapperValueAt2.channelUid) == null || sparseArray.get(channelUserWrapperValueAt2.channelUid).channelUser == null || sparseArray.get(channelUserWrapperValueAt2.channelUid).channelUser.joinRole == 1) ? false : true;
            if (sparseArray.indexOfKey(channelUserWrapperValueAt2.channelUid) < 0 || z) {
                arrayList2.add(Integer.valueOf(channelUserWrapperValueAt2.channelUid));
                arrayList3.remove(Integer.valueOf(channelUserWrapperValueAt2.channelUid));
            }
        }
        for (int i6 = 0; i6 < arrayList2.size(); i6++) {
            this.userList.remove(((Integer) arrayList2.get(i6)).intValue());
        }
        for (int i7 = 0; i7 < arrayList.size(); i7++) {
            this.userList.put(((Integer) arrayList.get(i7)).intValue(), sparseArray.get(((Integer) arrayList.get(i7)).intValue()).m36clone());
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
                for (int i8 = 6; i8 < arrayList3.size(); i8++) {
                    UserStatusData userStatusData2 = this.userList.get(((Integer) arrayList3.get(i8)).intValue()).userStatus;
                    if (userStatusData2 != null && userStatusData2.mVolume != 0) {
                        arrayList5.add(Integer.valueOf(i8));
                        size2--;
                    }
                    if (size2 == 0) {
                        break;
                    }
                }
                for (int i9 = 0; i9 < arrayList5.size(); i9++) {
                    Collections.swap(arrayList3, ((Integer) arrayList5.get(i9)).intValue(), ((Integer) arrayList4.get(i9)).intValue());
                }
            }
        }
        ArrayList arrayList6 = new ArrayList();
        Iterator it = arrayList3.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
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

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserDataChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        if (channelUserWrapper == null) {
            return;
        }
        VoicePresenterItemView voicePresenterItemView = null;
        if (this.displayMode == 1) {
            for (VoicePresenterItemView voicePresenterItemView2 : this.pairVoicePresenterViews) {
                if (voicePresenterItemView2.channelUid == channelUserWrapper.channelUid) {
                    voicePresenterItemView = voicePresenterItemView2;
                    break;
                }
            }
        } else {
            for (VoicePresenterItemView voicePresenterItemView22 : this.groupVoicePresenterViews) {
                if (voicePresenterItemView22.channelUid == channelUserWrapper.channelUid) {
                    voicePresenterItemView = voicePresenterItemView22;
                    break;
                }
            }
        }
        updateChildView(voicePresenterItemView, channelUserWrapper);
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyLocalMuteUserListChanged(Set<String> set) {
        this.localMutedUidList = new HashSet(set);
        updateViews();
    }

    private void updateViews(List<Integer> list) {
        SparseArray<ChannelUserWrapper> sparseArray;
        Integer num;
        if (list == null || list.size() == 0) {
            return;
        }
        int i = this.displayMode;
        int i2 = 0;
        if (i == 1) {
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
        if (i == 0) {
            ArrayList arrayList = new ArrayList();
            for (Integer num2 : list) {
                if (num2.intValue() != this.organizerUid) {
                    arrayList.add(num2);
                }
            }
            while (i2 < 6) {
                updateChildView(this.groupVoicePresenterViews.get(i2), arrayList.size() > i2 ? this.userList.get(((Integer) arrayList.get(i2)).intValue()) : null);
                i2++;
            }
        }
    }

    private void updateViews() {
        if (this.displayMode == 1) {
            for (VoicePresenterItemView voicePresenterItemView : this.pairVoicePresenterViews) {
                int i = voicePresenterItemView.channelUid;
                if (i != -1) {
                    updateChildView(voicePresenterItemView, this.userList.get(i));
                }
            }
            return;
        }
        for (VoicePresenterItemView voicePresenterItemView2 : this.groupVoicePresenterViews) {
            int i2 = voicePresenterItemView2.channelUid;
            if (i2 != -1) {
                updateChildView(voicePresenterItemView2, this.userList.get(i2));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateChildView(com.narvii.chat.video.layout.VoicePresenterItemView r11, com.narvii.chat.rtc.ChannelUserWrapper r12) {
        /*
            r10 = this;
            if (r11 == 0) goto L6c
            java.util.Set<java.lang.String> r0 = r10.localMutedUidList
            r1 = 0
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L1e
            if (r12 == 0) goto L15
            com.narvii.chat.signalling.ChannelUser r4 = r12.channelUser
            if (r4 != 0) goto L10
            goto L15
        L10:
            java.lang.String r4 = r4.uid()
            goto L16
        L15:
            r4 = r1
        L16:
            boolean r0 = r0.contains(r4)
            if (r0 == 0) goto L1e
            r8 = 1
            goto L1f
        L1e:
            r8 = 0
        L1f:
            if (r12 == 0) goto L29
            com.narvii.chat.signalling.ChannelUser r0 = r12.channelUser
            if (r0 != 0) goto L26
            goto L29
        L26:
            com.narvii.model.User r0 = r0.userProfile
            goto L2a
        L29:
            r0 = r1
        L2a:
            if (r0 == 0) goto L3e
            boolean r4 = r0.isSubscribeMemberShip()
            if (r4 == 0) goto L3e
            com.narvii.modulization.CommunityConfigHelper r4 = r10.communityConfigHelper
            if (r4 == 0) goto L3e
            boolean r4 = r4.isPremiumFeatureEnabled()
            if (r4 == 0) goto L3e
            r7 = 1
            goto L3f
        L3e:
            r7 = 0
        L3f:
            com.narvii.model.ChatThread r4 = r10.chatThread
            if (r4 == 0) goto L5b
            int r5 = r4.type
            r6 = 2
            if (r5 != r6) goto L5b
            java.lang.String r4 = r4.uid()
            if (r0 != 0) goto L4f
            goto L53
        L4f:
            java.lang.String r1 = r0.uid()
        L53:
            boolean r0 = com.narvii.util.Utils.isEqualsNotNull(r4, r1)
            if (r0 == 0) goto L5b
            r9 = 1
            goto L5c
        L5b:
            r9 = 0
        L5c:
            if (r12 == 0) goto L66
            int r0 = r12.channelUid
            int r1 = r10.localChannelUid
            if (r0 != r1) goto L66
            r6 = 1
            goto L67
        L66:
            r6 = 0
        L67:
            r4 = r11
            r5 = r12
            r4.updatePresenter(r5, r6, r7, r8, r9)
        L6c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.video.layout.VoicePresenterLayout.updateChildView(com.narvii.chat.video.layout.VoicePresenterItemView, com.narvii.chat.rtc.ChannelUserWrapper):void");
    }

    public static int getContentHeight(Context context, ChatThread chatThread) throws Resources.NotFoundException {
        float screenWidth = Utils.getScreenWidth(context) - (context.getResources().getDimensionPixelSize(R.dimen.live_chat_horizontal_padding) * 2);
        int i = (int) (GRID_MODE_WIDTH_RATIO * screenWidth * GRID_MODE_HEIGHT_RATIO * 2.0f);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.live_chat_indicator_padding);
        return (chatThread == null || chatThread.type == 0) ? ((int) Math.min(Utils.getScreenHeight(context) * PAIR_MODE_HEIGHT_RATIO, screenWidth * 1.0f)) + dimensionPixelSize : i + dimensionPixelSize;
    }

    public int getContentHeight() throws Resources.NotFoundException {
        int pairModeCellHeight;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.live_chat_indicator_padding);
        if (this.displayMode == 0) {
            pairModeCellHeight = getGridModeCellHeight() * 2;
        } else {
            pairModeCellHeight = getPairModeCellHeight(getContext());
        }
        return dimensionPixelSize + pairModeCellHeight;
    }
}
