package com.narvii.amino.speeddial;

import android.animation.LayoutTransition;
import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.amino.speeddial.mode.LiveCategory;
import com.narvii.amino.speeddial.mode.SpeedDialResponse;
import com.narvii.app.NVContext;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.config.ConfigService;
import com.narvii.model.ChatThread;
import com.narvii.model.PlayList;
import com.narvii.model.PlayListItem;
import com.narvii.model.User;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.widget.headercollapse.HeaderCollapsibleLayout;
import com.narvii.widget.headercollapse.OnHeaderStatusChangedListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class SpeedDialLayout extends LinearLayout implements OnHeaderStatusChangedListener, ViewTreeObserver.OnGlobalLayoutListener {
    private static final String TYPE_NORMAL = "live_type_normal";
    private static final String TYPE_SR = "live_type_sr";
    private static final String TYPE_VV = "live_type_vv";
    private boolean isParentBound;
    private SpeedDialItemClickListener listener;
    private List<ChatThread> liveChatThreadList;
    private List<LiveCategory> normalLiveCategoryList;
    private NVContext nvContext;
    private List<LiveCategoryItemView> scrappedNormalItemsViews;
    private List<LiveSRItemView> scrappedSRItemsViews;
    private List<LiveVVChatItemView> scrappedVVItemsViews;
    private SpeedDialResponse speedDialResponse;
    LayoutTransition.TransitionListener transitionListener;
    private HashMap<String, List<User>> userProfileListInThreadList;
    public HashMap<String, YoutubeWebpTask> webpTasks;
    public HashMap<String, String> webpThumbUrl;

    public interface SpeedDialItemClickListener {
        void onLiveItemClicked(View view, ChatThread chatThread);

        void onNormalItemClicked(View view, LiveCategory liveCategory);
    }

    class YoutubeWebpTask extends AsyncTask<Void, Void, String> {
        String yVid;

        public YoutubeWebpTask(String str) {
            this.yVid = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(Void... voidArr) {
            try {
                return YoutubeUtils.extractAnimatedWebpUrl(this.yVid);
            } catch (Exception e) {
                Log.w("unable to extract webp " + this.yVid, e);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if (SpeedDialLayout.this.webpThumbUrl.containsKey(this.yVid)) {
                return;
            }
            SpeedDialLayout.this.webpTasks.remove(this.yVid);
            SpeedDialLayout.this.webpThumbUrl.put(this.yVid, str);
            SpeedDialLayout speedDialLayout = SpeedDialLayout.this;
            speedDialLayout.updateSpeedDial(speedDialLayout.speedDialResponse);
        }
    }

    public SpeedDialLayout(Context context) {
        this(context, null);
    }

    private boolean containNormalTopic(Object obj, List<LiveCategory> list) {
        if (list != null && list.size() != 0) {
            Iterator<LiveCategory> it = list.iterator();
            while (it.hasNext()) {
                if (Utils.isEqualsNotNull(it.next().topic, obj)) {
                    return true;
                }
            }
        }
        return false;
    }

    private String getCurThreadPlayingYoutubeUrl(ChatThread chatThread) {
        SpeedDialResponse speedDialResponse;
        HashMap<String, PlayList> map;
        PlayList playList;
        PlayListItem currentPlayItem;
        String youtubeVideoIdFromUrl;
        if (chatThread == null || (speedDialResponse = this.speedDialResponse) == null || (map = speedDialResponse.playlistInThreadList) == null || map.get(chatThread.id()) == null || (playList = this.speedDialResponse.playlistInThreadList.get(chatThread.id())) == null || (currentPlayItem = playList.getCurrentPlayItem()) == null || (youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(currentPlayItem.url)) == null) {
            return null;
        }
        return getYoutubeWebpUrl(youtubeVideoIdFromUrl);
    }

    private String getLiveItemType(int i10) {
        if (i10 == 5) {
            return TYPE_SR;
        }
        if (i10 == 4 || i10 == 3 || i10 == 1) {
            return TYPE_VV;
        }
        return null;
    }

    private ChatThread getMappedChatThread(List<ChatThread> list, String str) {
        if (str != null && list != null) {
            for (ChatThread chatThread : list) {
                if (Utils.isEqualsNotNull(chatThread.threadId, str)) {
                    return chatThread;
                }
            }
        }
        return null;
    }

    private int getMappedLiveIndex(ChatThread chatThread) {
        if (chatThread == null) {
            return -1;
        }
        String str = chatThread.getRTCType() == 5 ? TYPE_SR : (chatThread.getRTCType() == 4 || chatThread.getRTCType() == 3 || chatThread.getRTCType() == 1) ? TYPE_VV : null;
        if (str == null) {
            return -1;
        }
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (Utils.isEqualsNotNull(childAt.getTag(R.id.speed_dial_item_type), str) && Utils.isEqualsNotNull(childAt.getTag(R.id.speed_dial_item_threadid), chatThread.id())) {
                return i10;
            }
        }
        return -1;
    }

    private int getMapppedNormalIndex(LiveCategory liveCategory) {
        if (liveCategory == null) {
            return -1;
        }
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (Utils.isEqualsNotNull(childAt.getTag(R.id.speed_dial_item_type), TYPE_NORMAL) && Utils.isEqualsNotNull(childAt.getTag(R.id.spped_dial_item_normal_topic), liveCategory.topic)) {
                return i10;
            }
        }
        return -1;
    }

    private void updateLiveItemViews() {
        LiveVVChatItemView liveVVChatItemView;
        LiveSRItemView liveSRItemView;
        int i10 = 0;
        while (true) {
            if (i10 >= getChildCount()) {
                break;
            }
            View childAt = getChildAt(i10);
            Object tag = childAt.getTag(R.id.speed_dial_item_type);
            Object tag2 = childAt.getTag(R.id.speed_dial_item_threadid);
            if ((isSRType(tag) || isVVType(tag)) && (tag2 instanceof String)) {
                ChatThread mappedChatThread = getMappedChatThread(this.liveChatThreadList, (String) tag2);
                String liveItemType = mappedChatThread != null ? getLiveItemType(mappedChatThread.getRTCType()) : null;
                if (mappedChatThread == null || !Utils.isEqualsNotNull(tag, liveItemType)) {
                    if (childAt instanceof LiveSRItemView) {
                        this.scrappedSRItemsViews.add((LiveSRItemView) childAt);
                    } else if (childAt instanceof LiveVVChatItemView) {
                        this.scrappedVVItemsViews.add((LiveVVChatItemView) childAt);
                    }
                }
            }
            i10++;
        }
        Iterator<LiveSRItemView> it = this.scrappedSRItemsViews.iterator();
        while (it.hasNext()) {
            removeView(it.next());
        }
        Iterator<LiveVVChatItemView> it2 = this.scrappedVVItemsViews.iterator();
        while (it2.hasNext()) {
            removeView(it2.next());
        }
        int i11 = 0;
        while (i11 < this.liveChatThreadList.size()) {
            final ChatThread chatThread = this.liveChatThreadList.get(i11);
            int mappedLiveIndex = getMappedLiveIndex(chatThread);
            if (mappedLiveIndex == -1) {
                String liveItemType2 = getLiveItemType(chatThread.getRTCType());
                if (liveItemType2 != null) {
                    if (liveItemType2 == TYPE_SR) {
                        List<LiveSRItemView> list = this.scrappedSRItemsViews;
                        if (list == null || list.size() <= 0) {
                            liveSRItemView = new LiveSRItemView(getContext());
                        } else {
                            liveSRItemView = this.scrappedSRItemsViews.get(0);
                            this.scrappedSRItemsViews.remove(0);
                        }
                        liveSRItemView.setTag(R.id.speed_dial_item_type, TYPE_SR);
                        liveSRItemView.setTag(R.id.speed_dial_item_threadid, chatThread.id());
                        liveSRItemView.updateViews(chatThread, getCurThreadPlayingYoutubeUrl(chatThread));
                        liveSRItemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.speeddial.SpeedDialLayout.3
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                if (SpeedDialLayout.this.listener != null) {
                                    SpeedDialLayout.this.listener.onLiveItemClicked(view, chatThread);
                                }
                            }
                        });
                        addView(liveSRItemView, i11 < getChildCount() ? i11 : -1);
                    } else if (liveItemType2 == TYPE_VV) {
                        List<LiveVVChatItemView> list2 = this.scrappedVVItemsViews;
                        if (list2 == null || list2.size() <= 0) {
                            liveVVChatItemView = new LiveVVChatItemView(getContext());
                        } else {
                            liveVVChatItemView = this.scrappedVVItemsViews.get(0);
                            this.scrappedVVItemsViews.remove(0);
                        }
                        liveVVChatItemView.setTag(R.id.speed_dial_item_type, TYPE_VV);
                        liveVVChatItemView.setTag(R.id.speed_dial_item_threadid, chatThread.id());
                        HashMap<String, List<User>> map = this.userProfileListInThreadList;
                        liveVVChatItemView.updateViews(chatThread, map == null ? null : map.get(chatThread.id()));
                        liveVVChatItemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.speeddial.SpeedDialLayout.4
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                if (SpeedDialLayout.this.listener != null) {
                                    SpeedDialLayout.this.listener.onLiveItemClicked(view, chatThread);
                                }
                            }
                        });
                        addView(liveVVChatItemView, i11 < getChildCount() ? i11 : -1);
                    }
                }
            } else {
                View childAt2 = getChildAt(mappedLiveIndex);
                if (childAt2 != null) {
                    childAt2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.speeddial.SpeedDialLayout.5
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (SpeedDialLayout.this.listener != null) {
                                SpeedDialLayout.this.listener.onLiveItemClicked(view, chatThread);
                            }
                        }
                    });
                }
                if (mappedLiveIndex != i11) {
                    removeView(childAt2);
                    addView(childAt2, i11 < getChildCount() ? i11 : -1);
                }
                if (childAt2 instanceof LiveVVChatItemView) {
                    LiveVVChatItemView liveVVChatItemView2 = (LiveVVChatItemView) childAt2;
                    HashMap<String, List<User>> map2 = this.userProfileListInThreadList;
                    liveVVChatItemView2.updateViews(chatThread, map2 == null ? null : map2.get(chatThread.id()));
                } else if (childAt2 instanceof LiveSRItemView) {
                    ((LiveSRItemView) childAt2).updateViews(chatThread, getCurThreadPlayingYoutubeUrl(chatThread));
                }
            }
            i11++;
        }
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderStartCollapsing() {
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderStartExpanding() {
    }

    public void setSpeedDialItemClickListener(SpeedDialItemClickListener speedDialItemClickListener) {
        this.listener = speedDialItemClickListener;
    }

    public SpeedDialLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.normalLiveCategoryList = new ArrayList();
        this.liveChatThreadList = new ArrayList();
        this.userProfileListInThreadList = new HashMap<>();
        this.scrappedSRItemsViews = new ArrayList();
        this.scrappedVVItemsViews = new ArrayList();
        this.scrappedNormalItemsViews = new ArrayList();
        this.transitionListener = new LayoutTransition.TransitionListener() { // from class: com.narvii.amino.speeddial.SpeedDialLayout.1
            @Override // android.animation.LayoutTransition.TransitionListener
            public void startTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i10) {
            }

            @Override // android.animation.LayoutTransition.TransitionListener
            public void endTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i10) {
                SpeedDialLayout.this.getLayoutTransition().removeTransitionListener(this);
                if (SpeedDialLayout.this.getParent() instanceof HorizontalScrollView) {
                    ((HorizontalScrollView) SpeedDialLayout.this.getParent()).fullScroll(66);
                }
            }
        };
        this.webpTasks = new HashMap<>();
        this.webpThumbUrl = new HashMap<>();
        setOrientation(0);
        this.nvContext = Utils.getNVContext(context);
        configNormalItemViews();
    }

    private void bindWithParent() {
        if (this.isParentBound) {
            return;
        }
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof HeaderCollapsibleLayout) {
                ((HeaderCollapsibleLayout) parent).addOnHeaderStatusChangedListener(this);
                this.isParentBound = true;
                return;
            }
        }
    }

    private void configNormalItemViews() {
        for (String str : LiveCategory.getSupoortedLiveCategoryList(this.nvContext)) {
            LiveCategory liveCategory = new LiveCategory();
            String str2 = "ndtopic:x" + ((ConfigService) this.nvContext.getService("config")).getCommunityId() + ":" + str;
            liveCategory.topic = str2;
            LiveCategoryItemView liveCategoryItemView = new LiveCategoryItemView(getContext());
            liveCategoryItemView.setTag(R.id.speed_dial_item_type, TYPE_NORMAL);
            liveCategoryItemView.setTag(R.id.spped_dial_item_normal_topic, str2);
            liveCategoryItemView.updateLiveCategory(liveCategory);
            addView(liveCategoryItemView);
        }
    }

    private boolean isSRType(Object obj) {
        return (obj instanceof String) && Utils.isEqualsNotNull(TYPE_SR, obj);
    }

    private boolean isVVType(Object obj) {
        return (obj instanceof String) && Utils.isEqualsNotNull(TYPE_VV, obj);
    }

    private void updateNormalItemViews() {
        LiveCategoryItemView liveCategoryItemView;
        if (this.normalLiveCategoryList == null) {
            return;
        }
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            Object tag = childAt.getTag(R.id.speed_dial_item_type);
            Object tag2 = childAt.getTag(R.id.spped_dial_item_normal_topic);
            if (Utils.isEqualsNotNull(tag, TYPE_NORMAL) && !containNormalTopic(tag2, this.normalLiveCategoryList)) {
                this.scrappedNormalItemsViews.add((LiveCategoryItemView) childAt);
            }
        }
        Iterator<LiveCategoryItemView> it = this.scrappedNormalItemsViews.iterator();
        while (it.hasNext()) {
            removeView(it.next());
        }
        for (int i11 = 0; i11 < this.normalLiveCategoryList.size(); i11++) {
            int size = this.liveChatThreadList.size() + i11;
            final LiveCategory liveCategory = this.normalLiveCategoryList.get(i11);
            int mapppedNormalIndex = getMapppedNormalIndex(liveCategory);
            View childAt2 = getChildAt(mapppedNormalIndex);
            if (mapppedNormalIndex == -1) {
                List<LiveCategoryItemView> list = this.scrappedNormalItemsViews;
                if (list == null || list.size() <= 0) {
                    liveCategoryItemView = new LiveCategoryItemView(getContext());
                } else {
                    liveCategoryItemView = this.scrappedNormalItemsViews.get(0);
                    this.scrappedNormalItemsViews.remove(0);
                }
                liveCategoryItemView.updateLiveCategory(liveCategory);
                liveCategoryItemView.setTag(R.id.speed_dial_item_type, TYPE_NORMAL);
                liveCategoryItemView.setTag(R.id.spped_dial_item_normal_topic, liveCategory.topic);
                liveCategoryItemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.speeddial.SpeedDialLayout.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (SpeedDialLayout.this.listener != null) {
                            SpeedDialLayout.this.listener.onNormalItemClicked(view, liveCategory);
                        }
                    }
                });
                if (size >= getChildCount()) {
                    size = -1;
                }
                addView(liveCategoryItemView, size);
            } else {
                if (mapppedNormalIndex == size && (childAt2 instanceof LiveCategoryItemView)) {
                    ((LiveCategoryItemView) childAt2).updateLiveCategory(liveCategory);
                } else {
                    removeView(childAt2);
                    if (size >= getChildCount()) {
                        size = -1;
                    }
                    addView(childAt2, size);
                }
                if (childAt2 != null) {
                    childAt2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.amino.speeddial.SpeedDialLayout.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (SpeedDialLayout.this.listener != null) {
                                SpeedDialLayout.this.listener.onNormalItemClicked(view, liveCategory);
                            }
                        }
                    });
                }
            }
        }
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderExpanded() {
        setAlpha(1.0f);
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderOffsetChanged(int i10, int i11, float f, boolean z6) {
        float f6 = f * 2.0f;
        setAlpha(f6 >= 1.0f ? 0.01f : 1.0f - f6);
        if (getParent() instanceof HorizontalScrollView) {
            ((HorizontalScrollView) getParent()).setAlpha(f6 < 1.0f ? 1.0f - f6 : 0.01f);
        }
    }

    public void reConfigNormalItemViews() {
        if (this.speedDialResponse == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        List<LiveCategory> list = this.speedDialResponse.liveLayerList;
        if (list != null) {
            for (LiveCategory liveCategory : list) {
                if (LiveCategory.isValidTopicInList(LiveCategory.getSupoortedLiveCategoryList(this.nvContext), liveCategory.topic)) {
                    arrayList.add(liveCategory);
                }
            }
        }
        this.normalLiveCategoryList.clear();
        this.normalLiveCategoryList.addAll(arrayList);
        updateNormalItemViews();
    }

    public void updateSpeedDial(SpeedDialResponse speedDialResponse) {
        if (speedDialResponse == null) {
            return;
        }
        this.speedDialResponse = speedDialResponse;
        ArrayList arrayList = new ArrayList();
        List<ChatThread> list = speedDialResponse.threadList;
        if (list != null) {
            for (ChatThread chatThread : list) {
                if (SignallingChannel.isLegalChannelType(chatThread.getRTCType()) && chatThread.status != 9) {
                    if (chatThread.getRTCType() != 5) {
                        HashMap<String, List<User>> map = speedDialResponse.userProfileListInThreadList;
                        if (map != null && map.containsKey(chatThread.id())) {
                            arrayList.add(chatThread);
                        }
                    } else {
                        arrayList.add(chatThread);
                    }
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        List<LiveCategory> list2 = speedDialResponse.liveLayerList;
        if (list2 != null) {
            for (LiveCategory liveCategory : list2) {
                if (LiveCategory.isValidTopicInList(LiveCategory.getSupoortedLiveCategoryList(this.nvContext), liveCategory.topic)) {
                    arrayList2.add(liveCategory);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            for (String str : LiveCategory.getSupoortedLiveCategoryList(this.nvContext)) {
                LiveCategory liveCategory2 = new LiveCategory();
                liveCategory2.topic = "ndtopic:x" + ((ConfigService) this.nvContext.getService("config")).getCommunityId() + ":" + str;
                arrayList2.add(liveCategory2);
            }
        }
        this.liveChatThreadList.clear();
        this.liveChatThreadList.addAll(arrayList);
        this.normalLiveCategoryList.clear();
        this.normalLiveCategoryList.addAll(arrayList2);
        if (speedDialResponse.userProfileListInThreadList != null) {
            this.userProfileListInThreadList.clear();
            this.userProfileListInThreadList.putAll(speedDialResponse.userProfileListInThreadList);
        }
        updateViews();
        if (Utils.isRtl()) {
            getLayoutTransition().addTransitionListener(this.transitionListener);
        }
    }

    private void updateViews() {
        updateLiveItemViews();
        updateNormalItemViews();
        if (Utils.isRtl() && (getParent() instanceof HorizontalScrollView)) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.amino.speeddial.SpeedDialLayout.2
                @Override // java.lang.Runnable
                public void run() {
                    ((HorizontalScrollView) SpeedDialLayout.this.getParent()).scrollTo(SpeedDialLayout.this.getWidth(), 0);
                }
            }, 100L);
        }
    }

    public String getYoutubeWebpUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.webpThumbUrl.containsKey(str)) {
            return this.webpThumbUrl.get(str);
        }
        if (this.webpTasks.containsKey(str)) {
            return null;
        }
        YoutubeWebpTask youtubeWebpTask = new YoutubeWebpTask(str);
        this.webpTasks.put(str, youtubeWebpTask);
        youtubeWebpTask.execute(new Void[0]);
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getViewTreeObserver().isAlive()) {
            getViewTreeObserver().addOnGlobalLayoutListener(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (getViewTreeObserver().isAlive()) {
            getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        bindWithParent();
    }

    @Override // com.narvii.widget.headercollapse.OnHeaderStatusChangedListener
    public void onHeaderCollapsed() {
        setAlpha(0.01f);
    }
}
