package com.narvii.chat.video.layout;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.LinearLayout;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.PresenterItemClickListener;
import com.narvii.chat.video.layout.VideoPresenterItemView;
import com.narvii.model.ChatThread;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class VideoPresenterLayout extends LinearLayout implements RtcDataUpdateHandler {
    private static final int BOTTOM_CHILD_COUNT = 4;
    public static final int DISPLAY_MODE_GROUP = 0;
    public static final int DISPLAY_MODE_PAIR = 1;
    private static final int GROUP_ROW_COUNT = 2;
    private static final int PAIR_CHILD_COUNT = 2;
    private static final float PAIR_MODE_HEIGHT_RATIO = 0.5f;
    private static final float PAIR_MODE_WIDTH_RATIO = 1.0f;
    public static final float PUBLIC_MODE_HEIGHT_SCREEN_RATIO = 0.22f;
    public static final float PUBLIC_MODE_HEIGHT_WIDTH_RATIO = 1.17f;
    private static final int TOP_CHILD_COUNT = 3;
    private static final int VIDEO_PRESENTER_LIMIT = 7;
    private ChatThread chatThread;
    private CommunityConfigHelper communityConfigHelper;
    private int displayMode;
    private LinearLayout groupContainer;
    private List<VideoPresenterItemView> groupVideoPresenterViews;
    private boolean isLauncher;
    private PresenterItemClickListener itemClickListener;
    private int localChannelUid;
    private Set<String> localMutedUidList;
    private int ndcId;
    private NVContext nvContext;
    private int organizerUid;
    private LinearLayout pairContainer;
    private List<VideoPresenterItemView> pairVideoPresenterViews;
    private List<LinearLayout> rowViews;
    private SparseArray<ChannelUserWrapper> userList;

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserDataListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
    }

    public void setPresenterItemClickListener(PresenterItemClickListener presenterItemClickListener) {
        this.itemClickListener = presenterItemClickListener;
    }

    public VideoPresenterLayout(Context context) {
        this(context, null);
    }

    public VideoPresenterLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.rowViews = new ArrayList();
        this.groupVideoPresenterViews = new ArrayList();
        this.pairVideoPresenterViews = new ArrayList();
        this.localChannelUid = -1;
        this.organizerUid = -1;
        this.userList = new SparseArray<>();
        this.localMutedUidList = new HashSet();
        initGroupViews();
        initPairViews();
        this.nvContext = Utils.getNVContext(getContext());
        this.communityConfigHelper = new CommunityConfigHelper(this.nvContext);
        setKeepScreenOn(true);
    }

    public void setLauncher(boolean z) {
        this.isLauncher = z;
    }

    private void initGroupViews() {
        this.groupContainer = new LinearLayout(getContext());
        this.groupContainer.setOrientation(1);
        addView(this.groupContainer, new LinearLayout.LayoutParams(-1, ((int) Math.min(Utils.getScreenHeight(getContext()) * 0.22f, ((Utils.getScreenWidth(getContext()) - (getContext().getResources().getDimensionPixelSize(R.dimen.live_chat_horizontal_padding) * 2)) / 3) * 1.17f)) * 2));
        int i = 0;
        while (i < 2) {
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setOrientation(0);
            int i2 = i == 1 ? 4 : 3;
            for (int i3 = 0; i3 < i2; i3++) {
                VideoPresenterItemView videoPresenterItemView = new VideoPresenterItemView(getContext());
                linearLayout.addView(videoPresenterItemView, new LinearLayout.LayoutParams(0, -1, 1.0f));
                this.groupVideoPresenterViews.add(videoPresenterItemView);
                if (i == 1 && i3 == i2 - 1) {
                    videoPresenterItemView.setVisibility(8);
                }
                configListener(videoPresenterItemView);
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
            this.rowViews.add(linearLayout);
            this.groupContainer.addView(linearLayout, layoutParams);
            i++;
        }
    }

    private void initPairViews() {
        this.pairContainer = new LinearLayout(getContext());
        this.pairContainer.setOrientation(0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        this.pairContainer.setVisibility(8);
        addView(this.pairContainer, layoutParams);
        int iMin = (int) Math.min(Utils.getScreenHeight(getContext()) * 0.5f, Utils.getScreenWidth(getContext()) * 1.0f);
        for (int i = 0; i < 2; i++) {
            VideoPresenterItemView videoPresenterItemView = new VideoPresenterItemView(getContext());
            if (i == 1) {
                videoPresenterItemView.setVisibility(8);
            }
            this.pairContainer.addView(videoPresenterItemView, new LinearLayout.LayoutParams(0, iMin, 1.0f));
            this.pairVideoPresenterViews.add(videoPresenterItemView);
            configListener(videoPresenterItemView);
        }
    }

    private void configListener(final VideoPresenterItemView videoPresenterItemView) {
        if (videoPresenterItemView == null) {
            return;
        }
        videoPresenterItemView.subViewClickListener = new VideoPresenterItemView.SubViewClickListener() { // from class: com.narvii.chat.video.layout.-$$Lambda$VideoPresenterLayout$k7JRy2K65-sADV3QwprH6MmlftI
            @Override // com.narvii.chat.video.layout.VideoPresenterItemView.SubViewClickListener
            public final void onSubViewCliekedd(View view) {
                this.f$0.lambda$configListener$0$VideoPresenterLayout(videoPresenterItemView, view);
            }
        };
    }

    public /* synthetic */ void lambda$configListener$0$VideoPresenterLayout(VideoPresenterItemView videoPresenterItemView, View view) {
        ChannelUser channelUser;
        if (this.itemClickListener == null) {
            return;
        }
        ChannelUserWrapper channelUserWrapper = this.userList.get(videoPresenterItemView.channelUid);
        ChannelUserWrapper channelUserWrapper2 = this.userList.get(this.localChannelUid);
        int i = 0;
        boolean z = (channelUserWrapper2 == null || (channelUser = channelUserWrapper2.channelUser) == null || channelUser.joinRole != 1) ? false : true;
        if (view.getId() == R.id.camera_mute_overlay) {
            i = 1;
        } else if (view.getId() == R.id.camera_flip_overlay) {
            i = 2;
        }
        this.itemClickListener.onPresenterItemClicked(videoPresenterItemView, channelUserWrapper, z, i);
    }

    public void setDisplayMode(int i) {
        if (i != this.displayMode) {
            this.groupContainer.setVisibility(i == 0 ? 0 : 8);
            this.pairContainer.setVisibility(i != 1 ? 8 : 0);
        }
        this.displayMode = i;
    }

    public void setChatThread(ChatThread chatThread) {
        this.chatThread = chatThread;
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserWrapperListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
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
        for (int i4 = 0; i4 < sparseArray.size(); i4++) {
            ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i4);
            ChannelUser channelUser = channelUserWrapperValueAt.channelUser;
            if (channelUser != null && channelUser.joinRole == 1) {
                ChatThread chatThread = this.chatThread;
                if (Utils.isEqualsNotNull((chatThread == null || chatThread.type != 2) ? null : chatThread.uid(), channelUserWrapperValueAt.channelUser.uid())) {
                    this.organizerUid = channelUserWrapperValueAt.channelUid;
                }
                if (this.userList.indexOfKey(channelUserWrapperValueAt.channelUid) < 0) {
                    arrayList.add(Integer.valueOf(channelUserWrapperValueAt.channelUid));
                    arrayList3.add(Integer.valueOf(channelUserWrapperValueAt.channelUid));
                } else if (!Utils.isEqualsNotNull(this.userList.get(channelUserWrapperValueAt.channelUid), channelUserWrapperValueAt)) {
                    this.userList.put(channelUserWrapperValueAt.channelUid, channelUserWrapperValueAt.m36clone());
                }
            }
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
        updateViews(arrayList3);
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserDataChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        if (channelUserWrapper == null) {
            return;
        }
        VideoPresenterItemView videoPresenterItemView = null;
        if (this.displayMode == 1) {
            for (VideoPresenterItemView videoPresenterItemView2 : this.pairVideoPresenterViews) {
                if (videoPresenterItemView2.channelUid == channelUserWrapper.channelUid) {
                    videoPresenterItemView = videoPresenterItemView2;
                    break;
                }
            }
        } else {
            for (VideoPresenterItemView videoPresenterItemView22 : this.groupVideoPresenterViews) {
                if (videoPresenterItemView22.channelUid == channelUserWrapper.channelUid) {
                    videoPresenterItemView = videoPresenterItemView22;
                    break;
                }
            }
        }
        updateChildView(videoPresenterItemView, channelUserWrapper);
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyLocalMuteUserListChanged(Set<String> set) {
        this.localMutedUidList = new HashSet(set);
        updateViews();
    }

    private void updateViews(List<Integer> list) {
        if (this.displayMode == 1) {
            int i = 0;
            while (i < 2) {
                VideoPresenterItemView videoPresenterItemView = this.pairVideoPresenterViews.get(i);
                updateChildView(videoPresenterItemView, list.size() > i ? this.userList.get(list.get(i).intValue()) : null);
                if (i == 1) {
                    videoPresenterItemView.setVisibility(list.size() >= 2 ? 0 : 8);
                }
                i++;
            }
            return;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.userList.size(); i3++) {
            ChannelUser channelUser = this.userList.valueAt(i3).channelUser;
            if (channelUser != null && channelUser.joinRole == 1) {
                i2++;
            }
        }
        int i4 = 0;
        while (i4 < 7) {
            VideoPresenterItemView videoPresenterItemView2 = this.groupVideoPresenterViews.get(i4);
            updateChildView(videoPresenterItemView2, list.size() > i4 ? this.userList.get(list.get(i4).intValue()) : null);
            if (i2 == 0) {
                videoPresenterItemView2.setVisibility(8);
            } else if (i2 == 1) {
                videoPresenterItemView2.setVisibility(i4 == 0 ? 0 : 8);
            } else if (i2 == 2) {
                videoPresenterItemView2.setVisibility((i4 == 0 || i4 == 1) ? 0 : 8);
            } else if (i2 <= 6) {
                videoPresenterItemView2.setVisibility(i4 == 6 ? 8 : 0);
            } else {
                videoPresenterItemView2.setVisibility(0);
            }
            i4++;
        }
        if (this.rowViews.size() > 1) {
            List<LinearLayout> list2 = this.rowViews;
            list2.get(list2.size() - 1).setVisibility(i2 >= 3 ? 0 : 8);
        }
    }

    private void updateViews() {
        if (this.displayMode == 1) {
            for (VideoPresenterItemView videoPresenterItemView : this.pairVideoPresenterViews) {
                int i = videoPresenterItemView.channelUid;
                if (i != -1) {
                    updateChildView(videoPresenterItemView, this.userList.get(i));
                }
            }
            return;
        }
        for (VideoPresenterItemView videoPresenterItemView2 : this.groupVideoPresenterViews) {
            int i2 = videoPresenterItemView2.channelUid;
            if (i2 != -1) {
                updateChildView(videoPresenterItemView2, this.userList.get(i2));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateChildView(com.narvii.chat.video.layout.VideoPresenterItemView r13, com.narvii.chat.rtc.ChannelUserWrapper r14) {
        /*
            r12 = this;
            if (r13 == 0) goto L81
            java.util.Set<java.lang.String> r0 = r12.localMutedUidList
            r1 = 0
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L1e
            if (r14 == 0) goto L15
            com.narvii.chat.signalling.ChannelUser r4 = r14.channelUser
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
            r9 = 1
            goto L1f
        L1e:
            r9 = 0
        L1f:
            if (r14 == 0) goto L29
            com.narvii.chat.signalling.ChannelUser r0 = r14.channelUser
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
            com.narvii.modulization.CommunityConfigHelper r4 = r12.communityConfigHelper
            if (r4 == 0) goto L3e
            boolean r4 = r4.isPremiumFeatureEnabled()
            if (r4 == 0) goto L3e
            r8 = 1
            goto L3f
        L3e:
            r8 = 0
        L3f:
            com.narvii.model.ChatThread r4 = r12.chatThread
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
            r10 = 1
            goto L5c
        L5b:
            r10 = 0
        L5c:
            android.util.SparseArray<com.narvii.chat.rtc.ChannelUserWrapper> r0 = r12.userList
            int r0 = r0.size()
            if (r0 != r3) goto L6e
            com.narvii.model.ChatThread r0 = r12.chatThread
            if (r0 == 0) goto L6e
            int r0 = r0.type
            if (r0 != 0) goto L6e
            r11 = 1
            goto L6f
        L6e:
            r11 = 0
        L6f:
            if (r14 == 0) goto L79
            int r0 = r14.channelUid
            int r1 = r12.localChannelUid
            if (r0 != r1) goto L79
            r6 = 1
            goto L7a
        L79:
            r6 = 0
        L7a:
            boolean r7 = r12.isLauncher
            r4 = r13
            r5 = r14
            r4.updatePresenter(r5, r6, r7, r8, r9, r10, r11)
        L81:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.video.layout.VideoPresenterLayout.updateChildView(com.narvii.chat.video.layout.VideoPresenterItemView, com.narvii.chat.rtc.ChannelUserWrapper):void");
    }

    public static int getContentHeight(Context context, ChatThread chatThread) throws Resources.NotFoundException {
        int iMin = (int) Math.min(Utils.getScreenHeight(context) * 0.5f, Utils.getScreenWidth(context) * 1.0f);
        int iMin2 = ((int) Math.min(Utils.getScreenHeight(context) * 0.22f, (int) Math.min(Utils.getScreenHeight(context) * 0.22f, ((Utils.getScreenWidth(context) - (context.getResources().getDimensionPixelSize(R.dimen.live_chat_horizontal_padding) * 2)) / 3) * 1.17f))) * 2;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.live_chat_indicator_padding);
        return (chatThread == null || chatThread.type == 0) ? iMin + dimensionPixelSize : iMin2 + dimensionPixelSize;
    }

    public int getContentHeight() throws Resources.NotFoundException {
        int iMin;
        int screenWidth = Utils.getScreenWidth(getContext());
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.live_chat_indicator_padding);
        if (this.displayMode == 0) {
            iMin = ((int) Math.min(Utils.getScreenHeight(getContext()) * 0.22f, (int) Math.min(Utils.getScreenHeight(getContext()) * 0.22f, ((Utils.getScreenWidth(getContext()) - (getContext().getResources().getDimensionPixelSize(R.dimen.live_chat_horizontal_padding) * 2)) / 3) * 1.17f))) * 2;
        } else {
            iMin = (int) Math.min(Utils.getScreenHeight(getContext()) * 0.5f, screenWidth * 1.0f);
        }
        return dimensionPixelSize + iMin;
    }
}
