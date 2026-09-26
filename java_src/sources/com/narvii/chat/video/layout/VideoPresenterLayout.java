package com.narvii.chat.video.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.PresenterItemClickListener;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
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

    public VideoPresenterLayout(Context context) {
        this(context, null);
    }

    public static int getContentHeight(Context context, ChatThread chatThread) {
        int iMin = (int) Math.min(Utils.getScreenHeight(context) * 0.5f, Utils.getScreenWidth(context) * 1.0f);
        int iMin2 = ((int) Math.min(Utils.getScreenHeight(context) * 0.22f, (int) Math.min(Utils.getScreenHeight(context) * 0.22f, ((Utils.getScreenWidth(context) - (context.getResources().getDimensionPixelSize(R.dimen.live_chat_horizontal_padding) * 2)) / 3) * 1.17f))) * 2;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.live_chat_indicator_padding);
        return (chatThread == null || chatThread.type == 0) ? iMin + dimensionPixelSize : iMin2 + dimensionPixelSize;
    }

    private void updateViews(List<Integer> list) {
        if (this.displayMode == 1) {
            int i10 = 0;
            while (i10 < 2) {
                VideoPresenterItemView videoPresenterItemView = this.pairVideoPresenterViews.get(i10);
                updateChildView(videoPresenterItemView, list.size() > i10 ? this.userList.get(list.get(i10).intValue()) : null);
                if (i10 == 1) {
                    videoPresenterItemView.setVisibility(list.size() >= 2 ? 0 : 8);
                }
                i10++;
            }
            return;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.userList.size(); i12++) {
            ChannelUser channelUser = this.userList.valueAt(i12).channelUser;
            if (channelUser != null && channelUser.joinRole == 1) {
                i11++;
            }
        }
        int i13 = 0;
        while (i13 < 7) {
            VideoPresenterItemView videoPresenterItemView2 = this.groupVideoPresenterViews.get(i13);
            updateChildView(videoPresenterItemView2, list.size() > i13 ? this.userList.get(list.get(i13).intValue()) : null);
            if (i11 == 0) {
                videoPresenterItemView2.setVisibility(8);
            } else if (i11 == 1) {
                videoPresenterItemView2.setVisibility(i13 == 0 ? 0 : 8);
            } else if (i11 == 2) {
                videoPresenterItemView2.setVisibility((i13 == 0 || i13 == 1) ? 0 : 8);
            } else if (i11 <= 6) {
                videoPresenterItemView2.setVisibility(i13 == 6 ? 8 : 0);
            } else {
                videoPresenterItemView2.setVisibility(0);
            }
            i13++;
        }
        if (this.rowViews.size() > 1) {
            List<LinearLayout> list2 = this.rowViews;
            list2.get(list2.size() - 1).setVisibility(i11 >= 3 ? 0 : 8);
        }
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserDataListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
    }

    public void setChatThread(ChatThread chatThread) {
        this.chatThread = chatThread;
    }

    public void setLauncher(boolean z6) {
        this.isLauncher = z6;
    }

    public void setPresenterItemClickListener(PresenterItemClickListener presenterItemClickListener) {
        this.itemClickListener = presenterItemClickListener;
    }

    public VideoPresenterLayout(Context context, @Nullable AttributeSet attributeSet) {
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
        NVContext nVContext = Utils.getNVContext(getContext());
        this.nvContext = nVContext;
        this.communityConfigHelper = new CommunityConfigHelper(nVContext);
        setKeepScreenOn(true);
    }

    private void configListener(final VideoPresenterItemView videoPresenterItemView) {
        if (videoPresenterItemView == null) {
            return;
        }
        videoPresenterItemView.subViewClickListener = new VideoPresenterItemView.SubViewClickListener() { // from class: com.narvii.chat.video.layout.e
            @Override // com.narvii.chat.video.layout.VideoPresenterItemView.SubViewClickListener
            public final void onSubViewCliekedd(View view) {
                this.f2137a.lambda$configListener$0(videoPresenterItemView, view);
            }
        };
    }

    private void initGroupViews() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.groupContainer = linearLayout;
        linearLayout.setOrientation(1);
        addView(this.groupContainer, new LinearLayout.LayoutParams(-1, ((int) Math.min(Utils.getScreenHeight(getContext()) * 0.22f, ((Utils.getScreenWidth(getContext()) - (getContext().getResources().getDimensionPixelSize(R.dimen.live_chat_horizontal_padding) * 2)) / 3) * 1.17f)) * 2));
        int i10 = 0;
        while (i10 < 2) {
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setOrientation(0);
            int i11 = i10 == 1 ? 4 : 3;
            for (int i12 = 0; i12 < i11; i12++) {
                VideoPresenterItemView videoPresenterItemView = new VideoPresenterItemView(getContext());
                linearLayout2.addView(videoPresenterItemView, new LinearLayout.LayoutParams(0, -1, 1.0f));
                this.groupVideoPresenterViews.add(videoPresenterItemView);
                if (i10 == 1 && i12 == i11 - 1) {
                    videoPresenterItemView.setVisibility(8);
                }
                configListener(videoPresenterItemView);
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
            this.rowViews.add(linearLayout2);
            this.groupContainer.addView(linearLayout2, layoutParams);
            i10++;
        }
    }

    private void initPairViews() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.pairContainer = linearLayout;
        linearLayout.setOrientation(0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        this.pairContainer.setVisibility(8);
        addView(this.pairContainer, layoutParams);
        int iMin = (int) Math.min(Utils.getScreenHeight(getContext()) * 0.5f, Utils.getScreenWidth(getContext()) * 1.0f);
        for (int i10 = 0; i10 < 2; i10++) {
            VideoPresenterItemView videoPresenterItemView = new VideoPresenterItemView(getContext());
            if (i10 == 1) {
                videoPresenterItemView.setVisibility(8);
            }
            this.pairContainer.addView(videoPresenterItemView, new LinearLayout.LayoutParams(0, iMin, 1.0f));
            this.pairVideoPresenterViews.add(videoPresenterItemView);
            configListener(videoPresenterItemView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$configListener$0(VideoPresenterItemView videoPresenterItemView, View view) {
        ChannelUser channelUser;
        if (this.itemClickListener == null) {
            return;
        }
        ChannelUserWrapper channelUserWrapper = this.userList.get(videoPresenterItemView.channelUid);
        ChannelUserWrapper channelUserWrapper2 = this.userList.get(this.localChannelUid);
        int i10 = 0;
        boolean z6 = (channelUserWrapper2 == null || (channelUser = channelUserWrapper2.channelUser) == null || channelUser.joinRole != 1) ? false : true;
        if (view.getId() == R.id.camera_mute_overlay) {
            i10 = 1;
        } else if (view.getId() == R.id.camera_flip_overlay) {
            i10 = 2;
        }
        this.itemClickListener.onPresenterItemClicked(videoPresenterItemView, channelUserWrapper, z6, i10);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001e  */
    /* JADX WARN: Code duplicated, block: B:41:0x005b  */
    private void updateChildView(VideoPresenterItemView videoPresenterItemView, ChannelUserWrapper channelUserWrapper) {
        boolean z6;
        boolean z10;
        ChatThread chatThread;
        CommunityConfigHelper communityConfigHelper;
        ChannelUser channelUser;
        ChannelUser channelUser2;
        if (videoPresenterItemView != null) {
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
            ChatThread chatThread2 = this.chatThread;
            if (chatThread2 == null || chatThread2.type != 2) {
                z10 = false;
            } else {
                if (Utils.isEqualsNotNull(chatThread2.uid(), user != null ? user.uid() : null)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            videoPresenterItemView.updatePresenter(channelUserWrapper, channelUserWrapper != null && channelUserWrapper.channelUid == this.localChannelUid, this.isLauncher, z11, z6, z10, this.userList.size() == 1 && (chatThread = this.chatThread) != null && chatThread.type == 0);
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
        VideoPresenterItemView videoPresenterItemView = null;
        if (this.displayMode != 1) {
            for (VideoPresenterItemView videoPresenterItemView2 : this.groupVideoPresenterViews) {
                if (videoPresenterItemView2.channelUid == channelUserWrapper.channelUid) {
                    videoPresenterItemView = videoPresenterItemView2;
                    break;
                }
            }
        } else {
            for (VideoPresenterItemView videoPresenterItemView3 : this.pairVideoPresenterViews) {
                if (videoPresenterItemView3.channelUid == channelUserWrapper.channelUid) {
                    videoPresenterItemView = videoPresenterItemView3;
                    break;
                }
            }
        }
        updateChildView(videoPresenterItemView, channelUserWrapper);
    }

    @Override // com.narvii.chat.video.layout.RtcDataUpdateHandler
    public void notifyUserWrapperListChanged(SignallingChannel signallingChannel, SparseArray<ChannelUserWrapper> sparseArray) {
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
        ArrayList arrayList3 = new ArrayList();
        for (int i12 = 0; i12 < this.userList.size(); i12++) {
            arrayList3.add(Integer.valueOf(this.userList.keyAt(i12)));
        }
        for (int i13 = 0; i13 < sparseArray.size(); i13++) {
            ChannelUserWrapper channelUserWrapperValueAt = sparseArray.valueAt(i13);
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
                    this.userList.put(channelUserWrapperValueAt.channelUid, channelUserWrapperValueAt.m1315clone());
                }
            }
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
        updateViews(arrayList3);
    }

    public void setDisplayMode(int i10) {
        if (i10 != this.displayMode) {
            this.groupContainer.setVisibility(i10 == 0 ? 0 : 8);
            this.pairContainer.setVisibility(i10 == 1 ? 0 : 8);
        }
        this.displayMode = i10;
    }

    public int getContentHeight() {
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

    private void updateViews() {
        if (this.displayMode == 1) {
            for (VideoPresenterItemView videoPresenterItemView : this.pairVideoPresenterViews) {
                int i10 = videoPresenterItemView.channelUid;
                if (i10 != -1) {
                    updateChildView(videoPresenterItemView, this.userList.get(i10));
                }
            }
            return;
        }
        for (VideoPresenterItemView videoPresenterItemView2 : this.groupVideoPresenterViews) {
            int i11 = videoPresenterItemView2.channelUid;
            if (i11 != -1) {
                updateChildView(videoPresenterItemView2, this.userList.get(i11));
            }
        }
    }
}
