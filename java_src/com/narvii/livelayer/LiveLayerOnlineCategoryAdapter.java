package com.narvii.livelayer;

import android.animation.ValueAnimator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.list.NVAdapter;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.livelayer.category.OnlineCategory;
import com.narvii.livelayer.category.OnlineCategoryConfig;
import com.narvii.livelayer.category.OnlineCategoryListResponse;
import com.narvii.livelayer.category.OnlineCategoryManager;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment;
import com.narvii.livelayer.ws.LiveLayerEventListener;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.GradientView;
import com.narvii.widget.NVImageSwitcher;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class LiveLayerOnlineCategoryAdapter extends NVAdapter {
    public static final int USER_LIST_MAX_SIZE = 30;
    HashSet<String> animatedCategoryTopic;
    HashMap<String, OnlineCategory> cacheCategoryMap;
    List<OnlineCategory> cachedList;
    HashMap<String, OnlineCategoryConfig> configHashMap;
    boolean contentEmpty;
    HashMap<String, LiveLayerEventListener> dispatchHashMap;
    String err;
    HashMap<String, LiveLayerEventListener> eventListenerHashMap;
    private ViewSwitcher.ViewFactory imageSwitchFactory;
    private boolean isLoaing;
    List<OnlineCategory> liveLayerList;
    LiveLayerService liveLayerService;
    Runnable requestRunnable;
    public Animation textIn;
    public Animation textOut;

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "OnlineCategoryList";
    }

    protected void gotoFragment(Class<? extends LiveLayerDetailBaseFragment> cls) {
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    public LiveLayerOnlineCategoryAdapter(NVContext nVContext) {
        super(nVContext);
        this.liveLayerList = new ArrayList();
        this.animatedCategoryTopic = new HashSet<>();
        this.contentEmpty = true;
        this.configHashMap = new HashMap<>();
        this.eventListenerHashMap = new HashMap<>();
        this.dispatchHashMap = new HashMap<>();
        this.requestRunnable = new Runnable() { // from class: com.narvii.livelayer.LiveLayerOnlineCategoryAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                LiveLayerOnlineCategoryAdapter.this.sendRequest();
                Utils.handler.postDelayed(this, LiveLayerService.REFRESH_INTERVAL);
            }
        };
        this.imageSwitchFactory = new ViewSwitcher.ViewFactory() { // from class: com.narvii.livelayer.LiveLayerOnlineCategoryAdapter.2
            @Override // android.widget.ViewSwitcher.ViewFactory
            public View makeView() {
                View viewInflate = LayoutInflater.from(LiveLayerOnlineCategoryAdapter.this.getContext()).inflate(R.layout.live_layer_online_category_bg, (ViewGroup) null, false);
                viewInflate.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                ((NVImageView) viewInflate.findViewById(R.id.image)).cornerMask = Utils.isRtl() ? 9 : 6;
                return viewInflate;
            }
        };
        this.liveLayerService = (LiveLayerService) nVContext.getService("liveLayer");
    }

    public void setCachedListData(List<OnlineCategory> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.cachedList = new ArrayList(list);
        this.cacheCategoryMap = new HashMap<>();
        for (OnlineCategory onlineCategory : this.cachedList) {
            this.cacheCategoryMap.put(onlineCategory.topic, onlineCategory);
        }
        this.liveLayerList = new ArrayList(list);
        this.isLoaing = false;
        this.contentEmpty = CollectionUtils.isEmpty(this.liveLayerList);
        notifyDataSetChanged();
    }

    public List<OnlineCategory> getLiveLayerList() {
        return this.liveLayerList;
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        ((ConfigService) getService("config")).getCommunityId();
        for (OnlineCategoryConfig onlineCategoryConfig : OnlineCategoryManager.configList) {
            this.configHashMap.put(this.liveLayerService.getNdtopic(onlineCategoryConfig.topicName()), onlineCategoryConfig);
        }
        this.requestRunnable.run();
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        refreshMonitorStart(i, callback);
        sendRequest();
        refreshMonitorEnd();
    }

    public boolean contentEmpty() {
        return this.contentEmpty;
    }

    public boolean isLoading() {
        return this.isLoaing;
    }

    @Override // com.narvii.list.NVAdapter
    public String errorMessage() {
        return this.err;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRequest() {
        this.isLoaing = true;
        this.err = null;
        notifyDataSetChanged();
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("live-layer/homepage").param("v", 2).build(), new ApiResponseListener<OnlineCategoryListResponse>(OnlineCategoryListResponse.class) { // from class: com.narvii.livelayer.LiveLayerOnlineCategoryAdapter.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, OnlineCategoryListResponse onlineCategoryListResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) onlineCategoryListResponse);
                LiveLayerOnlineCategoryAdapter.this.isLoaing = false;
                LiveLayerOnlineCategoryAdapter.this.liveLayerList.clear();
                List<OnlineCategory> list = onlineCategoryListResponse.liveLayerList;
                if (list != null) {
                    for (OnlineCategory onlineCategory : list) {
                        if (LiveLayerOnlineCategoryAdapter.this.configHashMap.containsKey(onlineCategory.topic)) {
                            LiveLayerOnlineCategoryAdapter.this.liveLayerList.add(onlineCategory);
                        }
                    }
                }
                Iterator<OnlineCategory> it = LiveLayerOnlineCategoryAdapter.this.liveLayerList.iterator();
                int i = 0;
                while (it.hasNext()) {
                    i += it.next().userProfileCount;
                }
                LiveLayerOnlineCategoryAdapter.this.contentEmpty = i == 0;
                LiveLayerOnlineCategoryAdapter.this.unsubscribeLiveLayer();
                for (final OnlineCategory onlineCategory2 : LiveLayerOnlineCategoryAdapter.this.liveLayerList) {
                    OnlineCategoryConfig onlineCategoryConfig = LiveLayerOnlineCategoryAdapter.this.configHashMap.get(onlineCategory2.topic);
                    LiveLayerEventListener liveLayerEventListener = new LiveLayerEventListener() { // from class: com.narvii.livelayer.LiveLayerOnlineCategoryAdapter.3.1
                        @Override // com.narvii.livelayer.ws.LiveLayerEventListener
                        public void onUserLeft(String str, List<User> list2, int i2) {
                        }

                        @Override // com.narvii.livelayer.ws.LiveLayerEventListener
                        public void onUserJoined(String str, List<User> list2, int i2) {
                            LiveLayerEventListener liveLayerEventListener2;
                            OnlineCategory onlineCategory3 = onlineCategory2;
                            onlineCategory3.userProfileCount = i2;
                            if (onlineCategory3.userProfileList == null) {
                                onlineCategory3.userProfileList = new LinkedList<>();
                            }
                            LinkedList linkedList = new LinkedList(onlineCategory2.userProfileList);
                            for (User user : list2) {
                                if (!Utils.containsId(linkedList, user.id())) {
                                    onlineCategory2.userProfileList.addFirst(user);
                                    if (onlineCategory2.userProfileList.size() > 30) {
                                        onlineCategory2.userProfileList.removeLast();
                                    }
                                }
                            }
                            if (!LiveLayerOnlineCategoryAdapter.this.dispatchHashMap.containsKey(str) || (liveLayerEventListener2 = LiveLayerOnlineCategoryAdapter.this.dispatchHashMap.get(str)) == null) {
                                return;
                            }
                            liveLayerEventListener2.onUserJoined(str, list2, i2);
                        }
                    };
                    LiveLayerOnlineCategoryAdapter.this.eventListenerHashMap.put(onlineCategoryConfig.topicName(), liveLayerEventListener);
                    LiveLayerOnlineCategoryAdapter.this.liveLayerService.subscribe(onlineCategoryConfig.topicName(), liveLayerEventListener);
                }
                LiveLayerOnlineCategoryAdapter.this.notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                LiveLayerOnlineCategoryAdapter.this.isLoaing = false;
                LiveLayerOnlineCategoryAdapter liveLayerOnlineCategoryAdapter = LiveLayerOnlineCategoryAdapter.this;
                if (liveLayerOnlineCategoryAdapter.contentEmpty) {
                    liveLayerOnlineCategoryAdapter.err = str;
                }
                LiveLayerOnlineCategoryAdapter.this.notifyDataSetChanged();
            }
        });
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return CollectionUtils.getSize(this.liveLayerList);
    }

    @Override // android.widget.Adapter
    public OnlineCategory getItem(int i) {
        return this.liveLayerList.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return getItem(i).hashCode();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        float[] fArr;
        OnlineCategory onlineCategory;
        final View viewCreateView = createView(R.layout.live_layer_online_category, viewGroup, view);
        final OnlineCategory item = getItem(i);
        OnlineCategoryConfig onlineCategoryConfig = this.configHashMap.get(item.topic);
        ((ImageView) viewCreateView.findViewById(R.id.icon)).setImageResource(onlineCategoryConfig.iconId());
        if (this.textIn == null) {
            this.textIn = AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_top);
            this.textOut = AnimationUtils.loadAnimation(getContext(), R.anim.slide_out_bottom);
        }
        final TextView textView = (TextView) viewCreateView.findViewById(R.id.online_member_count);
        ValueAnimator valueAnimator = (ValueAnimator) textView.getTag(R.id.animator);
        String str = (String) textView.getTag(R.id.topic);
        if (valueAnimator != null && !Utils.isEqualsNotNull(str, item.topic)) {
            valueAnimator.cancel();
        }
        textView.setText(String.valueOf(item.userProfileCount));
        textView.setTag(R.id.topic, item.topic);
        if (!this.animatedCategoryTopic.contains(item.topic) && !this.isLoaing) {
            textView.setText("");
            this.animatedCategoryTopic.add(item.topic);
            HashMap<String, OnlineCategory> map = this.cacheCategoryMap;
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt((map == null || (onlineCategory = map.get(item.topic)) == null) ? 1 : onlineCategory.userProfileCount, item.userProfileCount);
            valueAnimatorOfInt.setDuration(Math.min(800, Math.abs(item.userProfileCount - r6) * 100));
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.livelayer.LiveLayerOnlineCategoryAdapter.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    textView.setText(String.valueOf(((Integer) valueAnimator2.getAnimatedValue()).intValue()));
                }
            });
            textView.setTag(R.id.animator, valueAnimatorOfInt);
            valueAnimatorOfInt.start();
        } else if (valueAnimator == null || !valueAnimator.isRunning()) {
            textView.setText(String.valueOf(item.userProfileCount));
        }
        NVImageSwitcher nVImageSwitcher = (NVImageSwitcher) viewCreateView.findViewById(R.id.image_switcher);
        nVImageSwitcher.removeAllViews();
        nVImageSwitcher.setFactory(this.imageSwitchFactory);
        nVImageSwitcher.startSwitch(item.mediaList, i * 50, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        ((TextView) viewCreateView.findViewById(R.id.title)).setText(onlineCategoryConfig.titleId());
        final LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) viewCreateView.findViewById(R.id.online_bar);
        liveLayerOnlineBar.setUserList(item.userProfileList, item.userProfileCount);
        liveLayerOnlineBar.setTag(R.id.topic, item.topic);
        this.dispatchHashMap.put(item.topic, new LiveLayerEventListener() { // from class: com.narvii.livelayer.LiveLayerOnlineCategoryAdapter.5
            @Override // com.narvii.livelayer.ws.LiveLayerEventListener
            public void onUserLeft(String str2, List<User> list, int i2) {
            }

            @Override // com.narvii.livelayer.ws.LiveLayerEventListener
            public void onUserJoined(String str2, List<User> list, int i2) {
                if (Utils.isEqualsNotNull(liveLayerOnlineBar.getTag(R.id.topic), str2)) {
                    liveLayerOnlineBar.dataSource.liveLayerEventListener.onUserJoined(str2, list, i2);
                } else {
                    LiveLayerOnlineCategoryAdapter.this.dispatchHashMap.remove(item.topic);
                }
            }
        });
        liveLayerOnlineBar.setOnMemberCountChangedListener(new LiveLayerOnlineBar.OnMemberCountChangedListener() { // from class: com.narvii.livelayer.LiveLayerOnlineCategoryAdapter.6
            ValueAnimator animator;

            @Override // com.narvii.livelayer.LiveLayerOnlineBar.OnMemberCountChangedListener
            public void onMemberCountChanged(int i2) {
                if (!(LiveLayerOnlineCategoryAdapter.this.getParentContext() instanceof NVFragment) || ((NVFragment) LiveLayerOnlineCategoryAdapter.this.getParentContext()).isAdded()) {
                    if (i2 > 0) {
                        LiveLayerOnlineCategoryAdapter liveLayerOnlineCategoryAdapter = LiveLayerOnlineCategoryAdapter.this;
                        if (liveLayerOnlineCategoryAdapter.contentEmpty) {
                            liveLayerOnlineCategoryAdapter.notifyDataSetChanged();
                        }
                        LiveLayerOnlineCategoryAdapter.this.contentEmpty = false;
                    }
                    LiveLayerOnlineCategoryAdapter.this.resetCellHeight(viewCreateView, i2);
                    textView.setText(String.valueOf(i2));
                }
            }
        });
        GradientView gradientView = (GradientView) viewCreateView.findViewById(R.id.gradient);
        int iDpToPx = (int) Utils.dpToPx(getContext(), 14.0f);
        if (Utils.isRtl()) {
            float f = iDpToPx;
            fArr = new float[]{0.0f, 0.0f, f, f, f, f, 0.0f, 0.0f};
        } else {
            float f2 = iDpToPx;
            fArr = new float[]{f2, f2, 0.0f, 0.0f, 0.0f, 0.0f, f2, f2};
        }
        gradientView.setRadius(fArr);
        gradientView.setColor(553648127, 1677721600);
        gradientView.setBgColor(onlineCategoryConfig.color());
        resetCellHeight(viewCreateView, item.userProfileCount);
        viewCreateView.findViewById(R.id.root_layout).setOnClickListener(this.subviewClickListener);
        return viewCreateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetCellHeight(View view, int i) {
        View viewFindViewById = view.findViewById(R.id.cell_real);
        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
        if (layoutParams != null) {
            int dimensionPixelSize = i == 0 ? 0 : getContext().getResources().getDimensionPixelSize(R.dimen.online_category_height);
            if (dimensionPixelSize != layoutParams.height) {
                layoutParams.height = dimensionPixelSize;
                viewFindViewById.setLayoutParams(layoutParams);
            }
        }
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (view2 != null && view2.getId() == R.id.root_layout) {
            OnlineCategoryConfig onlineCategoryConfig = this.configHashMap.get(getItem(i).topic);
            gotoFragment(onlineCategoryConfig.targetFragment());
            LogEvent.clickBuilder(this, ActSemantic.checkDetail).extraParam("contentType", onlineCategoryConfig.topicName()).send();
        }
        return true;
    }

    @Override // com.narvii.list.NVAdapter
    public void onDetach() {
        super.onDetach();
        Utils.handler.removeCallbacks(this.requestRunnable);
        unsubscribeLiveLayer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unsubscribeLiveLayer() {
        for (Map.Entry<String, LiveLayerEventListener> entry : this.eventListenerHashMap.entrySet()) {
            this.liveLayerService.unsubscribe(entry.getKey(), entry.getValue());
        }
        this.eventListenerHashMap.clear();
    }
}
