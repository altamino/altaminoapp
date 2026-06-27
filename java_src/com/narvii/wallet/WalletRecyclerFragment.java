package com.narvii.wallet;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Looper;
import android.support.design.widget.AppBarLayout;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.RecyclerView;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.account.AccountService;
import com.narvii.ads.Ads;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.influencer.MySubscriptionListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.coupons.CouponListFragment;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.monetization.utils.ClaimGiftDialog;
import com.narvii.navigator.Navigator;
import com.narvii.nested.FakeActionBar;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import com.narvii.wallet.util.IabResult;
import com.narvii.wallet.util.Inventory;
import com.narvii.wallet.util.SkuDetails;
import com.narvii.widget.NVDrawableAnimatedView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class WalletRecyclerFragment extends NVRecyclerViewFragment implements View.OnClickListener, PushService.PushListener, AppBarLayout.OnOffsetChangedListener {
    private AdsVideoStats adsVideoStats;
    private Runnable adsVideoUpdateRunnable;
    AppBarLayout appBarLayout;
    boolean businessCoinsEnabled;
    private boolean canWatchVideo;
    ClaimGiftDialog claimCoinDialog;
    private TextView countDownText;
    private CountDownTimer countDownTimer;
    CouponListResponse couponListResponse;
    private DateTimeFormatter dateTimeFormatter;
    DecimalFormat dfmt;
    FakeActionBar fakeActionBar;
    View header;
    IabPurchaseManager iabPurchaseManager;
    boolean logged;
    MembershipService membership;
    private WalletMergeAdapter mergeAdapter;
    boolean noRefresh;
    private final Callback<Object> offerWallCallback;
    Object pendingAction;
    ProgressDialog pendingDlg;
    private ProductAdapter productAdapter;
    private final BroadcastReceiver receiver;
    private long remainingTime;
    private WalletResponse response;
    private final Callback<Object> rewardVideoCallback;
    private View rewardVideoCell;
    int rewardVideoCoin;
    private SpeedDialAdapter speedDialAdpater;
    SwipeRefreshLayout swipeRefreshLayout;
    int totalBusinessCoins;
    double totalBusinessCoinsFloat;
    double totalCoinsFloat;
    private boolean updating;
    Boolean videoReady;
    private ApiRequest videoStartRequest;
    Boolean wallReady;
    long watchVideoClickTime;
    private static final Integer OFFER_WALL = 1;
    private static final Integer OFFER_VIDEO = 2;

    private void sendOptionAdsRequest() {
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755017;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public boolean onInterceptNotification(PushPayload pushPayload) {
        return false;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.my_wallet);
        setHasOptionsMenu(true);
        ((FragmentWrapperActivity) getActivity()).registerActivityRequestCallback(IabPurchaseManager.REQUEST_IAB_PURCHASE, this);
        this.membership = (MembershipService) getService("membership");
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
        this.iabPurchaseManager = new IabPurchaseManager(this) { // from class: com.narvii.wallet.WalletRecyclerFragment.1
            @Override // com.narvii.wallet.IabPurchaseManager, com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ProductListResponse productListResponse) throws Exception {
                super.onFinish(apiRequest, productListResponse);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
            }

            @Override // com.narvii.wallet.IabPurchaseManager
            public void onWalletResponse(WalletResponse walletResponse) {
                if (WalletRecyclerFragment.this.mergeAdapter != null) {
                    WalletRecyclerFragment.this.mergeAdapter.setResponse(walletResponse);
                }
            }

            @Override // com.narvii.wallet.IabPurchaseManager, com.narvii.wallet.util.IabHelper.QueryInventoryFinishedListener
            public void onQueryInventoryFinished(IabResult iabResult, Inventory inventory) {
                super.onQueryInventoryFinished(iabResult, inventory);
            }
        };
        this.iabPurchaseManager.init();
        if (bundle == null) {
            this.noRefresh = true;
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_wallet_recycler, viewGroup, false);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.header = view.findViewById(R.id.wallet_header);
        updateHeader();
        this.swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh);
        this.swipeRefreshLayout.setEnabled(false);
        this.swipeRefreshLayout.setOnRefreshListener(this);
        this.swipeRefreshLayout.setColorSchemeColors(((ConfigService) getService("config")).getTheme().colorPrimary());
        this.appBarLayout = (AppBarLayout) view.findViewById(R.id.appbar_layout);
        this.appBarLayout.addOnOffsetChangedListener(this);
        this.fakeActionBar = (FakeActionBar) view.findViewById(R.id.fake_action_bar);
        FakeActionBar fakeActionBar = this.fakeActionBar;
        if (fakeActionBar != null) {
            fakeActionBar.setBackgroundColor(Color.parseColor("#2DA4E7"));
            this.fakeActionBar.setTitle(R.string.my_wallet);
            this.fakeActionBar.setRightView(R.drawable.wallet_help_btn, new FakeActionBar.IFakeActionBarRightViewClickListener() { // from class: com.narvii.wallet.-$$Lambda$WalletRecyclerFragment$HsKFupC-X_wfcoPwvdp_UbFZY6Q
                @Override // com.narvii.nested.FakeActionBar.IFakeActionBarRightViewClickListener
                public final void onRightViewClick() {
                    this.f$0.lambda$onViewCreated$0$WalletRecyclerFragment();
                }
            });
        }
        this.claimCoinDialog = new ClaimGiftDialog(this);
        this.claimCoinDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.wallet.WalletRecyclerFragment.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if (((NVRecyclerViewFragment) WalletRecyclerFragment.this).adapter != null) {
                    WalletRecyclerFragment.this.sendCouponListRequest();
                }
            }
        });
        this.claimCoinDialog.source = getStringParam("Source");
    }

    public /* synthetic */ void lambda$onViewCreated$0$WalletRecyclerFragment() {
        startActivity(((Navigator) NVApplication.instance().getService("navigator")).intentMapping(new Intent("android.intent.action.VIEW", Uri.parse("https://www.youtube.com/watch?v=dQw4w9WgXcQ"))));
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        this.iabPurchaseManager.destroy();
        this.iabPurchaseManager = null;
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
        this.appBarLayout.removeOnOffsetChangedListener(this);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        WalletMergeAdapter walletMergeAdapter = this.mergeAdapter;
        if (walletMergeAdapter != null) {
            walletMergeAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (this.noRefresh) {
            this.noRefresh = false;
        } else {
            WalletMergeAdapter walletMergeAdapter = this.mergeAdapter;
            if (walletMergeAdapter != null) {
                walletMergeAdapter.refresh(0, null);
            }
        }
        ((PushService) getService("push")).addPushListener(this);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onStop() {
        ((PushService) getService("push")).removePushListener(this);
        super.onStop();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        clearPending();
        super.onPause();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        sendCouponListRequest();
        this.mergeAdapter = new WalletMergeAdapter(this);
        this.speedDialAdpater = new SpeedDialAdapter(this);
        this.mergeAdapter.addAdapter(this.speedDialAdpater, true);
        this.mergeAdapter.addAdapter(new OfferWallAdapter(this));
        return this.mergeAdapter;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.membership_card) {
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(MembershipMainRecyclerFragment.class);
        intent.putExtra("Source", "Wallet");
        startActivity(intent);
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public void onPushPayload(PushPayload pushPayload) {
        if (pushPayload.type == 51) {
            ((ApiService) getService("api")).exec(ApiRequest.builder().path("/wallet").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build(), new ApiResponseListener<WalletResponse>(WalletResponse.class) { // from class: com.narvii.wallet.WalletRecyclerFragment.3
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, WalletResponse walletResponse) throws Exception {
                    if (WalletRecyclerFragment.this.mergeAdapter != null) {
                        WalletRecyclerFragment.this.mergeAdapter.setResponse(walletResponse);
                    }
                }
            });
        }
    }

    @Override // android.support.design.widget.AppBarLayout.OnOffsetChangedListener
    public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
        this.swipeRefreshLayout.setEnabled(i == 0);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        sendOptionAdsRequest();
        sendCouponListRequest();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 59423) {
            this.iabPurchaseManager.handleActivityResult(i, i2, intent);
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.wallet_coin_help, 0, R.string.wallet_coin_help).setIcon(R.drawable.wallet_help_btn).setShowAsAction(2);
    }

    /* renamed from: com.narvii.wallet.WalletRecyclerFragment$4, reason: invalid class name */
    class AnonymousClass4 extends BroadcastReceiver {
        AnonymousClass4() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            WalletRecyclerFragment.this.updateHeader();
            WalletRecyclerFragment.this.mergeAdapter.notifyDataSetChanged();
        }
    }

    void updateHeader() {
        ((TextView) this.header.findViewById(R.id.balance)).setText(IabUtils.formatCoins(this.totalCoinsFloat));
        this.header.findViewById(R.id.stub1).getLayoutParams().height = 0;
        View viewFindViewById = this.header.findViewById(R.id.membership_card);
        viewFindViewById.setOnClickListener(this);
        ThumbImageView thumbImageView = (ThumbImageView) this.header.findViewById(R.id.membership_card_bg);
        ThumbImageView thumbImageView2 = (ThumbImageView) this.header.findViewById(R.id.image);
        boolean zIsMembership = this.membership.isMembership();
        int i = R.drawable.membership_bar_card_active;
        if (zIsMembership) {
            thumbImageView2.setImageDrawable(getResources().getDrawable(R.drawable.membership_bar_card_active));
            thumbImageView2.setShadowColor(Color.parseColor("#40000000"));
            ((TextView) viewFindViewById.findViewById(R.id.text)).setText(R.string.membership_status_wallet_active);
            thumbImageView.setImageDrawable(getResources().getDrawable(R.drawable.membership_bar_raw_bg_active));
            return;
        }
        int iDaysExpired = this.membership.daysExpired();
        boolean z = iDaysExpired >= 0 && !this.membership.freeTrial();
        Resources resources = getResources();
        if (z) {
            i = R.drawable.membership_bar_card_inactive;
        }
        thumbImageView2.setImageDrawable(resources.getDrawable(i));
        thumbImageView2.setShadowColor(!z ? Color.parseColor("#40000000") : 0);
        TextView textView = (TextView) viewFindViewById.findViewById(R.id.text);
        if (z) {
            thumbImageView.setImageDrawable(new ColorDrawable(1711276032));
            if (iDaysExpired == 0) {
                textView.setText(R.string.membership_status_wallet_expired_0_day);
            } else if (iDaysExpired == 1) {
                textView.setText(R.string.membership_status_wallet_expired_1_day);
            } else if (iDaysExpired > 1) {
                textView.setText(getContext().getString(R.string.membership_status_wallet_expired_n_day, Integer.valueOf(iDaysExpired)));
            }
            SpannableString spannableString = new SpannableString(getString(R.string.membership_status_renew));
            spannableString.setSpan(new ForegroundColorSpan(-16746753), 0, spannableString.length(), 0);
            textView.append("  ");
            textView.append(spannableString);
            return;
        }
        thumbImageView.setImageDrawable(getResources().getDrawable(R.drawable.membership_bar_raw_bg_active));
        textView.setText(this.membership.freeTrial() ? R.string.membership_status_wallet_inactive_trial : R.string.membership_status_wallet_inactive);
    }

    /* renamed from: com.narvii.wallet.WalletRecyclerFragment$5, reason: invalid class name */
    class AnonymousClass5 implements Callback<Object> {
        @Override // com.narvii.util.Callback
        public void call(Object obj) {
        }

        AnonymousClass5() {
        }

        /* renamed from: com.narvii.wallet.WalletRecyclerFragment$5$1, reason: invalid class name */
        class AnonymousClass1 extends ApiResponseListener<AdsVideoStatsResponse> {
            AnonymousClass1(Class cls) {
                super(cls);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, final AdsVideoStatsResponse adsVideoStatsResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) adsVideoStatsResponse);
                if (apiRequest.isTagInvalid()) {
                    return;
                }
                WalletRecyclerFragment.this.adsVideoUpdateRunnable = new Runnable() { // from class: com.narvii.wallet.WalletRecyclerFragment.5.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdsVideoStatsResponse adsVideoStatsResponse2;
                        Wallet wallet;
                        if (WalletRecyclerFragment.this.mergeAdapter == null || (adsVideoStatsResponse2 = adsVideoStatsResponse) == null || adsVideoStatsResponse2.adsVideoStats == null) {
                            return;
                        }
                        WalletResponse response = WalletRecyclerFragment.this.getResponse();
                        if (response != null && (wallet = response.wallet) != null) {
                            wallet.adsVideoStats = adsVideoStatsResponse.adsVideoStats;
                            WalletRecyclerFragment.this.mergeAdapter.setResponse(response);
                        }
                        AdsVideoStats adsVideoStats = WalletRecyclerFragment.this.adsVideoStats;
                        AdsVideoStats adsVideoStats2 = adsVideoStatsResponse.adsVideoStats;
                        if (adsVideoStats != adsVideoStats2) {
                            WalletRecyclerFragment.this.adsVideoStats = adsVideoStats2;
                            WalletRecyclerFragment.this.mergeAdapter.notifyDataSetChanged();
                        }
                    }
                };
                Utils.postDelayed(WalletRecyclerFragment.this.adsVideoUpdateRunnable, 2000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendClaimRewardVideoLog(boolean z) {
        LogEvent.clickBuilder(this, ActSemantic.wildcard).area("ClaimRewardVideo").extraParam("canWatchVideo", Boolean.valueOf(z)).send();
    }

    class SpeedDialAdapter extends NVRecyclerViewBaseAdapter {
        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean isEmpty() {
            return false;
        }

        public SpeedDialAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new SpeedDialViewHolder(LayoutInflater.from(this.context.getContext()).inflate(R.layout.wallet_speed_dial, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            CouponListResponse couponListResponse = WalletRecyclerFragment.this.couponListResponse;
            ViewUtils.show(viewHolder.itemView, R.id.coupons, (couponListResponse == null || couponListResponse.getCouponList() == null || WalletRecyclerFragment.this.couponListResponse.getCouponList().isEmpty()) ? false : true);
            ViewUtils.show(viewHolder.itemView, R.id.business_wallet, WalletRecyclerFragment.this.businessCoinsEnabled);
            viewHolder.itemView.findViewById(R.id.history).setOnClickListener(this.subviewClickListener);
            viewHolder.itemView.findViewById(R.id.subscriptions).setOnClickListener(this.subviewClickListener);
            viewHolder.itemView.findViewById(R.id.business_wallet).setOnClickListener(this.subviewClickListener);
            viewHolder.itemView.findViewById(R.id.coupons).setOnClickListener(this.subviewClickListener);
        }

        class SpeedDialViewHolder extends BaseViewHolder {
            public SpeedDialViewHolder(View view) {
                super(view);
                view.findViewById(R.id.coupons).setOnClickListener(SpeedDialAdapter.this.subviewClickListener);
                view.findViewById(R.id.business_wallet).setOnClickListener(SpeedDialAdapter.this.subviewClickListener);
                view.findViewById(R.id.history).setOnClickListener(SpeedDialAdapter.this.subviewClickListener);
                view.findViewById(R.id.subscriptions).setOnClickListener(SpeedDialAdapter.this.subviewClickListener);
            }
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean onSubviewClick(View view, boolean z) {
            if (view != null) {
                switch (view.getId()) {
                    case R.id.business_wallet /* 2131296644 */:
                        Intent intent = FragmentWrapperActivity.intent(BusinessWalletFragment.class);
                        intent.putExtra("Source", "My Wallet");
                        intent.putExtra("totalBusinessBalance", WalletRecyclerFragment.this.totalBusinessCoinsFloat);
                        startActivity(intent);
                        break;
                    case R.id.coupons /* 2131297015 */:
                        Intent intent2 = FragmentWrapperActivity.intent(CouponListFragment.class);
                        intent2.putExtra("Source", "My Wallet");
                        startActivity(intent2);
                        break;
                    case R.id.history /* 2131297558 */:
                        startActivity(FragmentWrapperActivity.intent(CoinHistoryFragment.class));
                        break;
                    case R.id.subscriptions /* 2131299106 */:
                        Intent intent3 = FragmentWrapperActivity.intent(MySubscriptionListFragment.class);
                        intent3.putExtra("Source", "Wallet");
                        startActivity(intent3);
                        break;
                }
            }
            return super.onSubviewClick(view, z);
        }
    }

    class OfferVideoAdapter extends NVRecyclerViewBaseAdapter {
        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean onSubviewClick(View view, boolean z) {
            return true;
        }

        public OfferVideoAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new OfferVideoViewHolder(LayoutInflater.from(this.context.getContext()).inflate(R.layout.wallet_offer_video_item, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            WalletRecyclerFragment.this.rewardVideoCell = viewHolder.itemView;
            TextView textView = (TextView) viewHolder.itemView.findViewById(R.id.daily_reward);
            if (WalletRecyclerFragment.this.adsVideoStats != null && WalletRecyclerFragment.this.adsVideoStats.watchVideoMaxCount != -1 && WalletRecyclerFragment.this.adsVideoStats.watchedVideoCount != -1) {
                WalletRecyclerFragment walletRecyclerFragment = WalletRecyclerFragment.this;
                textView.setText(walletRecyclerFragment.getString(R.string.daily_reward_with_count, Integer.valueOf(walletRecyclerFragment.adsVideoStats.watchedVideoCount), Integer.valueOf(WalletRecyclerFragment.this.adsVideoStats.watchVideoMaxCount)));
            } else {
                textView.setText(R.string.daily_reward);
            }
            ViewUtils.show((TextView) viewHolder.itemView.findViewById(R.id.get_coins), WalletRecyclerFragment.this.canWatchVideo);
            ViewUtils.show(viewHolder.itemView, R.id.no_quota, true ^ WalletRecyclerFragment.this.canWatchVideo);
            if (!WalletRecyclerFragment.this.canWatchVideo) {
                WalletRecyclerFragment walletRecyclerFragment2 = WalletRecyclerFragment.this;
                walletRecyclerFragment2.updateCountDownText(walletRecyclerFragment2.remainingTime);
            }
            ViewUtils.show(viewHolder.itemView, R.id.debug_open_video, NVApplication.DEBUG);
            viewHolder.itemView.findViewById(R.id.debug_open_video).setOnClickListener(this.subviewClickListener);
        }

        class OfferVideoViewHolder extends BaseViewHolder {
            public OfferVideoViewHolder(View view) {
                super(view);
                view.setOnClickListener(OfferVideoAdapter.this.subviewClickListener);
            }
        }
    }

    class OfferWallAdapter extends NVRecyclerViewBaseAdapter {
        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        public OfferWallAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new OfferWallViewHolder(LayoutInflater.from(this.context.getContext()).inflate(R.layout.wallet_ads_item, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            viewHolder.itemView.setOnClickListener(this.subviewClickListener);
            ((TextView) viewHolder.itemView.findViewById(R.id.text)).setText(R.string.free_coins_offer_wall);
            WalletRecyclerFragment.this.setupAnimatedIcon((NVDrawableAnimatedView) viewHolder.itemView.findViewById(R.id.icon), R.drawable.coin_offer_wall_icon, R.drawable.coin_offer_wall_icon_bg);
            viewHolder.itemView.findViewById(R.id.progress).setVisibility(8);
            viewHolder.itemView.findViewById(R.id.chevron_right).setVisibility(0);
            viewHolder.itemView.findViewById(R.id.coins).setVisibility(8);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean onSubviewClick(View view, boolean z) {
            WalletRecyclerFragment.this.pendingAction = WalletRecyclerFragment.OFFER_WALL;
            WalletRecyclerFragment.this.showPendingDlg();
            return true;
        }

        class OfferWallViewHolder extends BaseViewHolder {
            public OfferWallViewHolder(View view) {
                super(view);
            }
        }
    }

    class OptionAdsOnAdapter extends NVRecyclerViewBaseAdapter {
        AccountService accountService;

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 0;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean onSubviewClick(View view, boolean z) {
            return true;
        }

        public OptionAdsOnAdapter(NVContext nVContext) {
            super(nVContext);
            this.accountService = (AccountService) nVContext.getService("account");
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new OptionAdsOnViewHolder(LayoutInflater.from(this.context.getContext()).inflate(R.layout.wallet_optin_ads_on, viewGroup, false));
        }

        class OptionAdsOnViewHolder extends BaseViewHolder {
            public OptionAdsOnViewHolder(View view) {
                super(view);
            }
        }
    }

    class OptionAdsOffAdapter extends NVRecyclerViewBaseAdapter {
        AccountService accountService;

        public OptionAdsOffAdapter(NVContext nVContext) {
            super(nVContext);
            this.accountService = (AccountService) nVContext.getService("account");
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new OptionAdsOffViewHolder(LayoutInflater.from(this.context.getContext()).inflate(R.layout.wallet_optin_ads_off, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            viewHolder.itemView.setOnClickListener(this.subviewClickListener);
            WalletRecyclerFragment.this.setupAnimatedIcon((NVDrawableAnimatedView) viewHolder.itemView.findViewById(R.id.icon), R.drawable.optin_ads_icon, R.drawable.optin_ads_bg);
            AccountService accountService = (AccountService) getService("account");
            ((CheckBox) viewHolder.itemView.findViewById(R.id.optin_ads_switch)).setOnCheckedChangeListener(null);
            ((CheckBox) viewHolder.itemView.findViewById(R.id.optin_ads_switch)).setChecked(accountService.optinAdsLevel() > 0);
            ((CheckBox) viewHolder.itemView.findViewById(R.id.optin_ads_switch)).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.wallet.WalletRecyclerFragment.OptionAdsOffAdapter.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                }

                /* renamed from: com.narvii.wallet.WalletRecyclerFragment$OptionAdsOffAdapter$1$1, reason: invalid class name and collision with other inner class name */
                class C01531 implements Callback<AccountResponse> {
                    C01531() {
                    }

                    @Override // com.narvii.util.Callback
                    public void call(AccountResponse accountResponse) {
                        OptionAdsOffAdapter.this.notifyDataSetChanged();
                    }
                }
            });
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.accountService.optinAdsLevel() > 0 ? 0 : 1;
        }

        class OptionAdsOffViewHolder extends BaseViewHolder {
            public OptionAdsOffViewHolder(View view) {
                super(view);
            }
        }
    }

    class TapdaqMediationAdapter extends NVRecyclerViewBaseAdapter {
        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        public TapdaqMediationAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new TapdaqMediationViewHolder(LayoutInflater.from(this.context.getContext()).inflate(android.R.layout.simple_list_item_1, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            viewHolder.itemView.setOnClickListener(this.subviewClickListener);
            ((TextView) viewHolder.itemView.findViewById(android.R.id.text1)).setText("Tapdaq Mediation Test");
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean onSubviewClick(View view, boolean z) {
            Ads.testTapdaq((NVActivity) WalletRecyclerFragment.this.getActivity());
            return true;
        }

        class TapdaqMediationViewHolder extends BaseViewHolder {
            public TapdaqMediationViewHolder(View view) {
                super(view);
            }
        }
    }

    class AdMobMediationAdapter extends NVRecyclerViewBaseAdapter {
        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        public AdMobMediationAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new AdMobMediationViewHolder(LayoutInflater.from(this.context.getContext()).inflate(android.R.layout.simple_list_item_1, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            viewHolder.itemView.setOnClickListener(this.subviewClickListener);
            ((TextView) viewHolder.itemView.findViewById(android.R.id.text1)).setText("Admob Mediation Test");
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean onSubviewClick(View view, boolean z) {
            Ads.testAdmob((NVActivity) WalletRecyclerFragment.this.getActivity());
            return true;
        }

        class AdMobMediationViewHolder extends BaseViewHolder {
            public AdMobMediationViewHolder(View view) {
                super(view);
            }
        }
    }

    class HeaderBuyAdapter extends NVRecyclerViewBaseAdapter {
        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        public HeaderBuyAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new HeaderBuyViewHolder(LayoutInflater.from(this.context.getContext()).inflate(R.layout.wallet_header_item, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ((TextView) viewHolder.itemView.findViewById(R.id.text)).setText(R.string.buy_coins);
        }

        class HeaderBuyViewHolder extends BaseViewHolder {
            public HeaderBuyViewHolder(View view) {
                super(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendCouponListRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/coupon/new-user-coupon").build(), new ApiResponseListener<CouponListResponse>(CouponListResponse.class) { // from class: com.narvii.wallet.WalletRecyclerFragment.6
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CouponListResponse couponListResponse) throws Exception {
                WalletRecyclerFragment walletRecyclerFragment = WalletRecyclerFragment.this;
                walletRecyclerFragment.couponListResponse = couponListResponse;
                walletRecyclerFragment.speedDialAdpater.notifyDataSetChanged();
            }
        });
    }

    /* renamed from: com.narvii.wallet.WalletRecyclerFragment$7, reason: invalid class name */
    class AnonymousClass7 extends ApiResponseListener {
        public void onFinish() {
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public /* bridge */ /* synthetic */ void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) {
        }

        AnonymousClass7(Class cls) {
            super(cls);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupAnimatedIcon(NVDrawableAnimatedView nVDrawableAnimatedView, int i, int i2) {
        ArrayList<NVDrawableAnimatedView.LayerConfig> arrayList = new ArrayList<>();
        arrayList.add(new NVDrawableAnimatedView.LayerConfig.Builder(i2, 5).layerGravity(32).duration(0).build());
        arrayList.add(new NVDrawableAnimatedView.LayerConfig.Builder(R.drawable.wallet_animated_ring, 7).layerGravity(32).duration(1500).layerAlpha(0.3f).build());
        arrayList.add(new NVDrawableAnimatedView.LayerConfig.Builder(R.drawable.wallet_animated_ring, 7).layerGravity(32).duration(1500).startDelay(500L).layerAlpha(0.3f).build());
        arrayList.add(new NVDrawableAnimatedView.LayerConfig.Builder(R.drawable.wallet_animated_ring, 7).layerGravity(32).duration(1500).startDelay(1000L).layerAlpha(0.3f).build());
        arrayList.add(new NVDrawableAnimatedView.LayerConfig.Builder(i, 0).layerGravity(32).build());
        arrayList.add(new NVDrawableAnimatedView.LayerConfig.Builder(R.drawable.amino_coin_small_rotated, 0).layerGravity(20).margin(0, 0, 10, 10).build());
        nVDrawableAnimatedView.replaceLayerList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPendingDlg() {
        this.pendingDlg = new ProgressDialog(getContext());
        this.pendingDlg.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.wallet.WalletRecyclerFragment.8
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                WalletRecyclerFragment walletRecyclerFragment = WalletRecyclerFragment.this;
                walletRecyclerFragment.pendingAction = null;
                walletRecyclerFragment.pendingDlg = null;
            }
        });
        this.pendingDlg.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPending() {
        this.pendingAction = null;
        ProgressDialog progressDialog = this.pendingDlg;
        if (progressDialog != null) {
            progressDialog.dismiss();
            this.pendingDlg = null;
        }
    }

    /* renamed from: com.narvii.wallet.WalletRecyclerFragment$9, reason: invalid class name */
    class AnonymousClass9 implements Callback<Object> {
        AnonymousClass9() {
        }

        @Override // com.narvii.util.Callback
        public void call(Object obj) {
            WalletRecyclerFragment.this.wallReady = Boolean.valueOf(obj == Boolean.TRUE);
            if (WalletRecyclerFragment.this.pendingAction == WalletRecyclerFragment.OFFER_WALL) {
                WalletRecyclerFragment.this.clearPending();
                if (obj == Boolean.TRUE) {
                    WalletRecyclerFragment walletRecyclerFragment = WalletRecyclerFragment.this;
                    walletRecyclerFragment.offerWallVendor.openOfferWall(walletRecyclerFragment);
                    WalletRecyclerFragment walletRecyclerFragment2 = WalletRecyclerFragment.this;
                    walletRecyclerFragment2.wallReady = null;
                    ((LoggingService) WalletRecyclerFragment.this.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("WalletAdsStarting", "type", "OfferWall", AppMeasurementSdk.ConditionalUserProperty.NAME, WalletRecyclerFragment.this.offerWallVendor.name(), "balance", Integer.valueOf(((MembershipService) walletRecyclerFragment2.getService("membership")).walletBalance()));
                    return;
                }
                NVToast.makeText(WalletRecyclerFragment.this.getContext(), Utils.getErrorCodeMessage(WalletRecyclerFragment.this.getContext(), R.string.wallet_no_ads, obj), 0).show();
                WalletRecyclerFragment.this.notifyAdapter();
                return;
            }
            WalletRecyclerFragment.this.notifyAdapter();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyAdapter() {
        if (isDestoryed()) {
            return;
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Utils.post(new Runnable() { // from class: com.narvii.wallet.WalletRecyclerFragment.10
                @Override // java.lang.Runnable
                public void run() {
                    if (((NVRecyclerViewFragment) WalletRecyclerFragment.this).adapter != null) {
                        WalletRecyclerFragment.this.mergeAdapter.notifyDataSetChanged();
                    }
                }
            });
        } else if (this.adapter != null) {
            this.mergeAdapter.notifyDataSetChanged();
        }
    }

    class ProductAdapter extends PagingRecyclerViewAdapter<Product, ProductListResponse> {
        public ProductAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup viewGroup, int i) {
            return new ProductViewHolder(LayoutInflater.from(getContext()).inflate(R.layout.wallet_sku_recycler_item, viewGroup, false));
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            viewHolder.itemView.setOnClickListener(this.subviewClickListener);
            Product item = getItem(i);
            ((NVImageView) viewHolder.itemView.findViewById(R.id.icon)).setImageUrl(item.icon);
            ((TextView) viewHolder.itemView.findViewById(R.id.title)).setText(item.title);
            ((TextView) viewHolder.itemView.findViewById(R.id.text)).setText(item.description);
            IabPurchaseManager iabPurchaseManager = WalletRecyclerFragment.this.iabPurchaseManager;
            SkuDetails skuDetail = iabPurchaseManager != null ? iabPurchaseManager.getSkuDetail(item.skuList[0]) : null;
            viewHolder.itemView.findViewById(R.id.purchase).setOnClickListener(this.subviewClickListener);
            ((TextView) viewHolder.itemView.findViewById(R.id.price)).setText(skuDetail == null ? WalletRecyclerFragment.this.getString(R.string.membership_purchase) : skuDetail.getPrice());
            ThumbImageView thumbImageView = (ThumbImageView) viewHolder.itemView.findViewById(R.id.purchase_btn);
            thumbImageView.defaultDrawable = getContext().getResources().getDrawable(R.drawable.wallet_price_btn);
            thumbImageView.setImageUrl(null);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
            if ((obj instanceof Product) && view2 != null && view2.getId() == R.id.purchase) {
                if (NVApplication.CLIENT_TYPE == 101) {
                    GuidePurchaseToMasterDialog.show(getContext(), "wallet");
                    return true;
                }
                WalletRecyclerFragment.this.iabPurchaseManager.purchase((Product) obj);
                return true;
            }
            return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<Product, ProductListResponse> createPageDataSource(NVContext nVContext) {
            return new ProductDataSource(nVContext);
        }

        class ProductDataSource extends PageDataSource<Product, ProductListResponse> {
            @Override // com.narvii.paging.source.PageDataSource
            protected ApiRequest createRequest() {
                return null;
            }

            @Override // com.narvii.paging.source.PageDataSource, com.narvii.paging.source.ContinuousSource
            public boolean loadNextPage(PageRequestCallback pageRequestCallback) {
                return false;
            }

            public ProductDataSource(NVContext nVContext) {
                super(nVContext);
            }

            @Override // com.narvii.paging.source.PageDataSource
            protected Class<ProductListResponse> responseType() {
                return ProductListResponse.class;
            }
        }

        class ProductViewHolder extends BaseViewHolder {
            public ProductViewHolder(View view) {
                super(view);
            }
        }
    }

    class WalletStoreAdapter extends NVRecyclerViewBaseAdapter {
        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        public WalletStoreAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new WalletStoreViewHolder(LayoutInflater.from(getContext()).inflate(R.layout.wallet_store_entrance_button, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            viewHolder.itemView.setOnClickListener(this.subviewClickListener);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean onSubviewClick(View view, boolean z) {
            Intent intent = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
            intent.putExtra("Source", "Wallet");
            startActivity(intent);
            return true;
        }

        class WalletStoreViewHolder extends BaseViewHolder {
            public WalletStoreViewHolder(View view) {
                super(view);
            }
        }
    }

    class WalletMergeAdapter extends RecyclerViewMergeAdapter {
        public WalletMergeAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void onAttach() {
            super.onAttach();
            WalletRecyclerFragment.this.sendWalletRequest();
        }

        @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i, PageRequestCallback pageRequestCallback) {
            WalletRecyclerFragment.this.sendWalletRequest();
        }

        public void setResponse(WalletResponse walletResponse) {
            if (WalletRecyclerFragment.this.adsVideoUpdateRunnable != null) {
                Utils.handler.removeCallbacks(WalletRecyclerFragment.this.adsVideoUpdateRunnable);
            }
            if (WalletRecyclerFragment.this.videoStartRequest != null) {
                WalletRecyclerFragment.this.videoStartRequest.isTagInvalid();
            }
            WalletRecyclerFragment.this.membership.updateWalletBalance(walletResponse);
            WalletRecyclerFragment walletRecyclerFragment = WalletRecyclerFragment.this;
            Wallet wallet = walletResponse.wallet;
            walletRecyclerFragment.totalCoinsFloat = wallet.totalCoinsFloat;
            walletRecyclerFragment.businessCoinsEnabled = wallet.businessCoinsEnabled;
            walletRecyclerFragment.totalBusinessCoins = wallet.totalBusinessCoins;
            walletRecyclerFragment.totalBusinessCoinsFloat = wallet.totalBusinessCoinsFloat;
            walletRecyclerFragment.updating = false;
            WalletRecyclerFragment.this.updateHeader();
        }

        /* renamed from: com.narvii.wallet.WalletRecyclerFragment$WalletMergeAdapter$1, reason: invalid class name */
        class AnonymousClass1 extends CountDownTimer {
            AnonymousClass1(long j, long j2) {
                super(j, j2);
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                WalletRecyclerFragment.this.remainingTime = j;
                WalletRecyclerFragment.this.updateCountDownText(j);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                WalletRecyclerFragment.this.updating = true;
                if (WalletRecyclerFragment.this.mergeAdapter != null) {
                    WalletRecyclerFragment.this.mergeAdapter.refresh(0, null);
                }
            }
        }

        @Override // com.narvii.paging.adapter.RecyclerViewMergeAdapter, android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return super.getItemCount();
        }
    }

    public WalletResponse getResponse() {
        return this.response;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendWalletRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/wallet").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build(), new ApiResponseListener<WalletResponse>(WalletResponse.class) { // from class: com.narvii.wallet.WalletRecyclerFragment.11
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, WalletResponse walletResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) walletResponse);
                WalletRecyclerFragment.this.response = walletResponse;
                WalletRecyclerFragment walletRecyclerFragment = WalletRecyclerFragment.this;
                Wallet wallet = walletResponse.wallet;
                walletRecyclerFragment.totalCoinsFloat = wallet.totalCoinsFloat;
                walletRecyclerFragment.businessCoinsEnabled = wallet.businessCoinsEnabled;
                walletRecyclerFragment.totalBusinessCoins = wallet.totalBusinessCoins;
                walletRecyclerFragment.totalBusinessCoinsFloat = wallet.totalBusinessCoinsFloat;
                walletRecyclerFragment.onObjectResponse(apiRequest, walletResponse);
                WalletRecyclerFragment.this.mergeAdapter.setResponse(WalletRecyclerFragment.this.response);
                WalletRecyclerFragment.this.updateHeader();
                WalletRecyclerFragment.this.mergeAdapter.notifyDataSetChanged();
                WalletRecyclerFragment.this.hideRefreshLayout();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                WalletRecyclerFragment.this.hideRefreshLayout();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onObjectResponse(ApiRequest apiRequest, WalletResponse walletResponse) {
        Wallet wallet;
        CouponDetail couponDetail;
        if (walletResponse.wallet == null) {
            return;
        }
        if (!this.logged) {
            Integer membershipStatus = ((MembershipService) getService("membership")).getMembershipStatus();
            LoggingService loggingService = (LoggingService) getService("logging");
            if (membershipStatus == null) {
                loggingService.lambda$logEvent$0$LoggingServiceImpl("WalletViewEntered", "balance", Integer.valueOf(walletResponse.wallet.totalCoins));
            } else {
                loggingService.lambda$logEvent$0$LoggingServiceImpl("WalletViewEntered", "membershipStatus", Integer.valueOf(membershipStatus.intValue()), "balance", Integer.valueOf(walletResponse.wallet.totalCoins));
            }
            this.logged = true;
        }
        if (walletResponse == null || walletResponse.wallet != null) {
        }
        if (!this.claimCoinDialog.isShown() && !this.claimCoinDialog.isShowing() && (wallet = walletResponse.wallet) != null && (couponDetail = wallet.newUserCoupon) != null && couponDetail.getValue() > 0) {
            this.claimCoinDialog.show(walletResponse.wallet.newUserCoupon);
        }
        MembershipService membershipService = this.membership;
        Wallet wallet2 = walletResponse.wallet;
        membershipService.updateAvailableCoupon(wallet2 != null ? wallet2.newUserCoupon : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideRefreshLayout() {
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setRefreshing(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCountDownText(long j) {
        View view;
        if (this.countDownText == null && (view = this.rewardVideoCell) != null) {
            this.countDownText = (TextView) view.findViewById(R.id.count_down);
        }
        if (this.countDownText != null) {
            if (this.dateTimeFormatter == null) {
                this.dateTimeFormatter = new DateTimeFormatter();
            }
            this.countDownText.setText(this.updating ? getString(R.string.updating_ellipsis) : getString(R.string.resets_in_time, this.dateTimeFormatter.formatExpireCountDown(getContext(), j)));
        }
    }
}
