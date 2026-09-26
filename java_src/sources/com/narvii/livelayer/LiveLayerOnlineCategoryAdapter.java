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
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.list.NVAdapter;
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

/* JADX INFO: loaded from: classes7.dex */
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

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRequest() {
        this.isLoaing = true;
        this.err = null;
        notifyDataSetChanged();
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("live-layer/homepage").param("v", 2).build(), new ApiResponseListener<OnlineCategoryListResponse>(OnlineCategoryListResponse.class) { // from class: com.narvii.livelayer.LiveLayerOnlineCategoryAdapter.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, OnlineCategoryListResponse onlineCategoryListResponse) throws Exception {
                super.onFinish(apiRequest, onlineCategoryListResponse);
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
                int i10 = 0;
                while (it.hasNext()) {
                    i10 += it.next().userProfileCount;
                }
                LiveLayerOnlineCategoryAdapter liveLayerOnlineCategoryAdapter = LiveLayerOnlineCategoryAdapter.this;
                liveLayerOnlineCategoryAdapter.contentEmpty = i10 == 0;
                liveLayerOnlineCategoryAdapter.unsubscribeLiveLayer();
                for (final OnlineCategory onlineCategory2 : LiveLayerOnlineCategoryAdapter.this.liveLayerList) {
                    OnlineCategoryConfig onlineCategoryConfig = LiveLayerOnlineCategoryAdapter.this.configHashMap.get(onlineCategory2.topic);
                    LiveLayerEventListener liveLayerEventListener = new LiveLayerEventListener() { // from class: com.narvii.livelayer.LiveLayerOnlineCategoryAdapter.3.1
                        @Override // com.narvii.livelayer.ws.LiveLayerEventListener
                        public void onUserLeft(String str, List<User> list2, int i11) {
                        }

                        @Override // com.narvii.livelayer.ws.LiveLayerEventListener
                        public void onUserJoined(String str, List<User> list2, int i11) {
                            LiveLayerEventListener liveLayerEventListener2;
                            OnlineCategory onlineCategory3 = onlineCategory2;
                            onlineCategory3.userProfileCount = i11;
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
                            liveLayerEventListener2.onUserJoined(str, list2, i11);
                        }
                    };
                    LiveLayerOnlineCategoryAdapter.this.eventListenerHashMap.put(onlineCategoryConfig.topicName(), liveLayerEventListener);
                    LiveLayerOnlineCategoryAdapter.this.liveLayerService.subscribe(onlineCategoryConfig.topicName(), liveLayerEventListener);
                }
                LiveLayerOnlineCategoryAdapter.this.notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                LiveLayerOnlineCategoryAdapter.this.isLoaing = false;
                LiveLayerOnlineCategoryAdapter liveLayerOnlineCategoryAdapter = LiveLayerOnlineCategoryAdapter.this;
                if (liveLayerOnlineCategoryAdapter.contentEmpty) {
                    liveLayerOnlineCategoryAdapter.err = str;
                }
                liveLayerOnlineCategoryAdapter.notifyDataSetChanged();
            }
        });
    }

    public boolean contentEmpty() {
        return this.contentEmpty;
    }

    @Override // com.narvii.list.NVAdapter
    public String errorMessage() {
        return this.err;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "OnlineCategoryList";
    }

    public List<OnlineCategory> getLiveLayerList() {
        return this.liveLayerList;
    }

    protected void gotoFragment(Class<? extends LiveLayerDetailBaseFragment> cls) {
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    public boolean isLoading() {
        return this.isLoaing;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (view2 != null && view2.getId() == R.id.root_layout) {
            OnlineCategoryConfig onlineCategoryConfig = this.configHashMap.get(getItem(i10).topic);
            gotoFragment(onlineCategoryConfig.targetFragment());
            LogEvent.clickBuilder(this, ActSemantic.checkDetail).extraParam("contentType", onlineCategoryConfig.topicName()).send();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unsubscribeLiveLayer() {
        for (Map.Entry<String, LiveLayerEventListener> entry : this.eventListenerHashMap.entrySet()) {
            this.liveLayerService.unsubscribe(entry.getKey(), entry.getValue());
        }
        this.eventListenerHashMap.clear();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return CollectionUtils.getSize(this.liveLayerList);
    }

    @Override // android.widget.Adapter
    public OnlineCategory getItem(int i10) {
        return this.liveLayerList.get(i10);
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        float[] fArr;
        OnlineCategory onlineCategory;
        final View viewCreateView = createView(R.layout.live_layer_online_category, viewGroup, view);
        final OnlineCategory item = getItem(i10);
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
            int i11 = (map == null || (onlineCategory = map.get(item.topic)) == null) ? 1 : onlineCategory.userProfileCount;
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i11, item.userProfileCount);
            valueAnimatorOfInt.setDuration(Math.min(800, Math.abs(item.userProfileCount - i11) * 100));
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
        nVImageSwitcher.startSwitch(item.mediaList, i10 * 50, 5000L);
        ((TextView) viewCreateView.findViewById(R.id.title)).setText(onlineCategoryConfig.titleId());
        final LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) viewCreateView.findViewById(R.id.online_bar);
        liveLayerOnlineBar.setUserList(item.userProfileList, item.userProfileCount);
        liveLayerOnlineBar.setTag(R.id.topic, item.topic);
        this.dispatchHashMap.put(item.topic, new LiveLayerEventListener() { // from class: com.narvii.livelayer.LiveLayerOnlineCategoryAdapter.5
            @Override // com.narvii.livelayer.ws.LiveLayerEventListener
            public void onUserLeft(String str2, List<User> list, int i12) {
            }

            @Override // com.narvii.livelayer.ws.LiveLayerEventListener
            public void onUserJoined(String str2, List<User> list, int i12) {
                if (Utils.isEqualsNotNull(liveLayerOnlineBar.getTag(R.id.topic), str2)) {
                    liveLayerOnlineBar.dataSource.liveLayerEventListener.onUserJoined(str2, list, i12);
                } else {
                    LiveLayerOnlineCategoryAdapter.this.dispatchHashMap.remove(item.topic);
                }
            }
        });
        liveLayerOnlineBar.setOnMemberCountChangedListener(new LiveLayerOnlineBar.OnMemberCountChangedListener() { // from class: com.narvii.livelayer.LiveLayerOnlineCategoryAdapter.6
            ValueAnimator animator;

            @Override // com.narvii.livelayer.LiveLayerOnlineBar.OnMemberCountChangedListener
            public void onMemberCountChanged(int i12) {
                if (!(LiveLayerOnlineCategoryAdapter.this.getParentContext() instanceof NVFragment) || ((NVFragment) LiveLayerOnlineCategoryAdapter.this.getParentContext()).isAdded()) {
                    if (i12 > 0) {
                        LiveLayerOnlineCategoryAdapter liveLayerOnlineCategoryAdapter = LiveLayerOnlineCategoryAdapter.this;
                        if (liveLayerOnlineCategoryAdapter.contentEmpty) {
                            liveLayerOnlineCategoryAdapter.notifyDataSetChanged();
                        }
                        LiveLayerOnlineCategoryAdapter.this.contentEmpty = false;
                    }
                    LiveLayerOnlineCategoryAdapter.this.resetCellHeight(viewCreateView, i12);
                    textView.setText(String.valueOf(i12));
                }
            }
        });
        GradientView gradientView = (GradientView) viewCreateView.findViewById(R.id.gradient);
        int iDpToPx = (int) Utils.dpToPx(getContext(), 14.0f);
        if (Utils.isRtl()) {
            float f = iDpToPx;
            fArr = new float[]{0.0f, 0.0f, f, f, f, f, 0.0f, 0.0f};
        } else {
            float f6 = iDpToPx;
            fArr = new float[]{f6, f6, 0.0f, 0.0f, 0.0f, 0.0f, f6, f6};
        }
        gradientView.setRadius(fArr);
        gradientView.setColor(553648127, 1677721600);
        gradientView.setBgColor(onlineCategoryConfig.color());
        resetCellHeight(viewCreateView, item.userProfileCount);
        viewCreateView.findViewById(R.id.root_layout).setOnClickListener(this.subviewClickListener);
        return viewCreateView;
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
        ArrayList arrayList = new ArrayList(list);
        this.liveLayerList = arrayList;
        this.isLoaing = false;
        this.contentEmpty = CollectionUtils.isEmpty(arrayList);
        notifyDataSetChanged();
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

    /* JADX INFO: Access modifiers changed from: private */
    public void resetCellHeight(View view, int i10) {
        int dimensionPixelSize;
        View viewFindViewById = view.findViewById(R.id.cell_real);
        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
        if (layoutParams != null) {
            if (i10 == 0) {
                dimensionPixelSize = 0;
            } else {
                dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.online_category_height);
            }
            if (dimensionPixelSize != layoutParams.height) {
                layoutParams.height = dimensionPixelSize;
                viewFindViewById.setLayoutParams(layoutParams);
            }
        }
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return getItem(i10).hashCode();
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
    public void onDetach() {
        super.onDetach();
        Utils.handler.removeCallbacks(this.requestRunnable);
        unsubscribeLiveLayer();
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i10, Callback<Integer> callback) {
        refreshMonitorStart(i10, callback);
        sendRequest();
        refreshMonitorEnd();
    }
}
