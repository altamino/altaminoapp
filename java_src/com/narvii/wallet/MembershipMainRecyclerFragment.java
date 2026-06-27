package com.narvii.wallet;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.nested.FakeActionBar;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewAdapter;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.SinglePageDataSource;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import com.narvii.wallet.util.IabHelper;
import com.narvii.wallet.util.IabResult;
import com.narvii.wallet.util.Inventory;
import com.narvii.wallet.util.Purchase;
import com.narvii.widget.NVDrawableAnimatedView;
import com.narvii.widget.RandomBlinkingView;
import com.narvii.widget.StatusBarPlaceHolder;
import com.narvii.widget.cofetti.CofettiView;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class MembershipMainRecyclerFragment extends NVRecyclerViewFragment implements View.OnClickListener, IabHelper.OnIabSetupFinishedListener, IabHelper.QueryInventoryFinishedListener, AppBarLayout.OnOffsetChangedListener {
    private Adapter adapter;
    AppBarLayout appBarLayout;
    int cardSide;
    CofettiView cofettiView;
    FakeActionBar fakeActionBar;
    View header;
    IabHelper iabHelper;
    boolean logged;
    MembershipStatus membership;
    private RecyclerViewMergeAdapter mergeAdapter;
    boolean noRefresh;
    Purchase purchasedSku;
    long responseTime;
    NVDrawableAnimatedView rippledView;
    RandomBlinkingView starBlinkingView;
    StatusBarPlaceHolder statusBarPlaceHolder;
    TextView subscribeBenefitsText;
    TextView subscribeHeaderText;
    Runnable waitingForIab = new Runnable() { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.1
        @Override // java.lang.Runnable
        public void run() {
            MembershipMainRecyclerFragment membershipMainRecyclerFragment = MembershipMainRecyclerFragment.this;
            membershipMainRecyclerFragment.waitingForIab = null;
            if (membershipMainRecyclerFragment.adapter != null) {
                MembershipMainRecyclerFragment.this.adapter.refresh(256, null);
                MembershipMainRecyclerFragment.this.fetchMembership();
            }
        }
    };
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MembershipMainRecyclerFragment membershipMainRecyclerFragment = MembershipMainRecyclerFragment.this;
            membershipMainRecyclerFragment.purchasedSku = null;
            Runnable runnable = membershipMainRecyclerFragment.waitingForIab;
            if (runnable != null) {
                Utils.handler.removeCallbacks(runnable);
                MembershipMainRecyclerFragment.this.waitingForIab.run();
                MembershipMainRecyclerFragment.this.waitingForIab = null;
            }
            MembershipMainRecyclerFragment.this.updateHeader();
        }
    };

    private float calculateAlpha(int i) {
        if (i < -240) {
            return 1.0f;
        }
        if (i >= 0) {
            return 0.0f;
        }
        return (-i) / 240.0f;
    }

    static /* synthetic */ void lambda$updateHeader$0(View view) {
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755017;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.membership);
        if (bundle == null) {
            this.noRefresh = true;
        }
        this.iabHelper = IabUtils.createIabHelper(getContext());
        this.iabHelper.startSetup(this);
        Utils.postDelayed(this.waitingForIab, 400L);
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipSubscribeFragment.ACTION_PURCHASED_SUB_CHANGED));
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        Runnable runnable = this.waitingForIab;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            this.waitingForIab = null;
        }
        IabHelper iabHelper = this.iabHelper;
        if (iabHelper != null) {
            try {
                iabHelper.dispose();
            } catch (Exception unused) {
            }
            this.iabHelper = null;
        }
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_membership_main_recycler, viewGroup, false);
        this.cofettiView = (CofettiView) layoutInflater.inflate(R.layout.cofetti_view, (ViewGroup) viewInflate.findViewById(R.id.recycle_frame), false);
        ((ViewGroup) viewInflate.findViewById(R.id.recycle_frame)).addView(this.cofettiView);
        return viewInflate;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.header = view.findViewById(R.id.membership_header);
        this.appBarLayout = (AppBarLayout) view.findViewById(R.id.appbar_layout);
        this.appBarLayout.addOnOffsetChangedListener(this);
        this.subscribeBenefitsText = (TextView) view.findViewById(R.id.subscribe_benefits_text);
        this.subscribeBenefitsText.setOnClickListener(this);
        this.subscribeHeaderText = (TextView) view.findViewById(R.id.subscribe_text);
        initMembership();
        this.swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh);
        this.swipeRefreshLayout.setEnabled(false);
        this.starBlinkingView = (RandomBlinkingView) view.findViewById(R.id.star_blinking_view);
        this.fakeActionBar = (FakeActionBar) view.findViewById(R.id.fake_action_bar);
        FakeActionBar fakeActionBar = this.fakeActionBar;
        if (fakeActionBar != null) {
            fakeActionBar.setTitle(R.string.membership);
        }
        this.statusBarPlaceHolder = (StatusBarPlaceHolder) view.findViewById(R.id.status_bar);
        updateHeader();
    }

    private void setActionAndStatusBarBgColor(int i) {
        FakeActionBar fakeActionBar = this.fakeActionBar;
        if (fakeActionBar != null) {
            fakeActionBar.setBackgroundColor(i);
        }
        StatusBarPlaceHolder statusBarPlaceHolder = this.statusBarPlaceHolder;
        if (statusBarPlaceHolder != null) {
            statusBarPlaceHolder.setBackgroundColor(i);
        }
    }

    @Override // android.support.design.widget.AppBarLayout.OnOffsetChangedListener
    public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
        TextView textView = this.subscribeBenefitsText;
        if (textView != null) {
            textView.setAlpha(calculateAlpha(i));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:196:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x04d4  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x04ec  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x051f  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0521  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0538  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0111  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void updateHeader() {
        /*
            Method dump skipped, instructions count: 1355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.wallet.MembershipMainRecyclerFragment.updateHeader():void");
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        this.mergeAdapter = new RecyclerViewMergeAdapter(this);
        this.adapter = new Adapter(this);
        this.mergeAdapter.addAdapter(this.adapter);
        fetchMembership();
        return this.mergeAdapter;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.membership_auto_renew_checkbox /* 2131298024 */:
                switchAutoRenew(view, false);
                break;
            case R.id.membership_card /* 2131298026 */:
            case R.id.membership_card_back /* 2131298027 */:
                flipCard();
                break;
            case R.id.subscribe_benefits_text /* 2131299099 */:
            case R.id.subscribe_bg /* 2131299100 */:
                showSubscribe();
                break;
        }
    }

    public void smoothScrollToHeaderMax() {
        if (getRecyclerView() != null) {
            getRecyclerView().smoothScrollToPosition(0);
        }
    }

    @Override // com.narvii.wallet.util.IabHelper.OnIabSetupFinishedListener
    public void onIabSetupFinished(IabResult iabResult) {
        if (iabResult.isSuccess()) {
            try {
                this.iabHelper.queryInventoryAsync(this);
                return;
            } catch (Exception e) {
                Log.e("fail to query inventory", e);
                return;
            }
        }
        Runnable runnable = this.waitingForIab;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            this.waitingForIab.run();
            this.waitingForIab = null;
        }
    }

    @Override // com.narvii.wallet.util.IabHelper.QueryInventoryFinishedListener
    public void onQueryInventoryFinished(IabResult iabResult, Inventory inventory) {
        if (iabResult.isSuccess()) {
            String userId = ((AccountService) getService("account")).getUserId();
            ArrayList arrayList = new ArrayList(inventory.getAllPurchases());
            Collections.sort(arrayList, IabUtils.PURCHASE_COMPARATOR_R);
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Purchase purchase = (Purchase) it.next();
                if (IabHelper.ITEM_TYPE_SUBS.equals(purchase.getItemType()) && Utils.isEqualsNotNull(userId, JacksonUtils.nodeString(JacksonUtils.createObjectNode(purchase.getDeveloperPayload()), "uid"))) {
                    this.purchasedSku = purchase;
                    Runnable runnable = this.waitingForIab;
                    if (runnable != null) {
                        Utils.handler.removeCallbacks(runnable);
                        this.waitingForIab = null;
                    }
                    if (!isDestoryed()) {
                        this.mergeAdapter.refresh(0, null);
                        fetchMembership();
                    }
                }
            }
        }
        Runnable runnable2 = this.waitingForIab;
        if (runnable2 != null) {
            Utils.handler.removeCallbacks(runnable2);
            this.waitingForIab.run();
            this.waitingForIab = null;
        }
    }

    class Adapter extends NVRecyclerViewAdapter<Privileges> {
        public Adapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
        public DataSource<Privileges> createDataSource(NVContext nVContext) {
            return MembershipMainRecyclerFragment.this.new PrivilegeDataSource(nVContext);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new PrivilegeViewHolder(LayoutInflater.from(getContext()).inflate(R.layout.membership_privileges_recycler_item, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            Privileges item = getItem(i);
            ((ImageView) viewHolder.itemView.findViewById(R.id.icon)).setImageResource(item.icon);
            ((TextView) viewHolder.itemView.findViewById(R.id.title)).setText(item.title);
            ((TextView) viewHolder.itemView.findViewById(R.id.text)).setText(item.content);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.dataSource.getSize();
        }

        class PrivilegeViewHolder extends BaseViewHolder {
            public PrivilegeViewHolder(View view) {
                super(view);
            }
        }
    }

    class PrivilegeDataSource extends SinglePageDataSource<Privileges> {
        private List<Privileges> privilegesList;

        public PrivilegeDataSource(NVContext nVContext) {
            super(nVContext);
            this.privilegesList = new ArrayList();
            this.privilegesList.add(new Privileges(R.drawable.membership_privileges_ic_3, R.string.membership_privileges_title_3, R.string.membership_privileges_text_3));
            this.privilegesList.add(new Privileges(R.drawable.membership_privileges_ic_1, R.string.membership_privileges_title_1, R.string.membership_privileges_text_1));
            this.privilegesList.add(new Privileges(R.drawable.membership_privileges_ic_avatar_frame, R.string.membership_privileges_title_avatar_frame, R.string.membership_privileges_text_avatar_frame));
            this.privilegesList.add(new Privileges(R.drawable.membership_privileges_ic_2, R.string.membership_privileges_title_2, R.string.membership_privileges_text_2));
            this.privilegesList.add(new Privileges(R.drawable.membership_privileges_ic_4, R.string.membership_privileges_title_4, R.string.membership_privileges_text_4));
            this.privilegesList.add(new Privileges(R.drawable.membership_privileges_ic_5, R.string.membership_privileges_title_5, R.string.membership_privileges_text_5));
            this.privilegesList.add(new Privileges(R.drawable.membership_privileges_ic_streak_repair, R.string.membership_privileges_title_streak_repair, R.string.membership_privileges_text_streak_repair));
            this.privilegesList.add(new Privileges(R.drawable.membership_privileges_ic_new_feature, R.string.membership_privileges_title_new_feature, R.string.membership_privileges_text_new_feature));
        }

        @Override // com.narvii.paging.source.SinglePageDataSource
        public List<Privileges> pageData() {
            return this.privilegesList;
        }
    }

    static class Privileges extends NVObject {
        int content;
        int icon;
        int title;

        @Override // com.narvii.model.NVObject
        public String id() {
            return null;
        }

        @Override // com.narvii.model.NVObject
        public int objectType() {
            return 0;
        }

        @Override // com.narvii.model.NVObject
        public String parentId() {
            return null;
        }

        @Override // com.narvii.model.NVObject
        public int status() {
            return 0;
        }

        @Override // com.narvii.model.NVObject
        public String uid() {
            return null;
        }

        Privileges(int i, int i2, int i3) {
            this.icon = i;
            this.title = i2;
            this.content = i3;
        }
    }

    private void initMembership() {
        this.membership = new MembershipStatus();
        MembershipService membershipService = (MembershipService) getService("membership");
        Integer membershipStatus = membershipService.getMembershipStatus();
        this.membership.membershipStatus = membershipStatus != null ? membershipStatus.intValue() : 0;
        long j = ((SharedPreferences) getService("prefs")).getLong("membershipCreatedTime", 0L);
        this.membership.createdTime = j > 0 ? new Date(j) : null;
        this.membership.isAutoRenew = membershipService.isAutoRenew();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchMembership() {
        ApiRequest apiRequestPrepareMembershipRequest = prepareMembershipRequest();
        if (apiRequestPrepareMembershipRequest == null) {
            return;
        }
        ((ApiService) getService("api")).exec(apiRequestPrepareMembershipRequest, new ApiResponseListener<MembershipResponse>(MembershipResponse.class) { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, MembershipResponse membershipResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) membershipResponse);
                if ("purchased".equals(apiRequest.tag())) {
                    MembershipMainRecyclerFragment.this.purchasedSku = null;
                }
                MembershipMainRecyclerFragment membershipMainRecyclerFragment = MembershipMainRecyclerFragment.this;
                if (!membershipMainRecyclerFragment.logged) {
                    LoggingService loggingService = (LoggingService) membershipMainRecyclerFragment.getService("logging");
                    MembershipStatus membershipStatus = membershipResponse.membership;
                    if (membershipStatus == null) {
                        loggingService.lambda$logEvent$0$LoggingServiceImpl("MembershipViewEntered", new Object[0]);
                    } else {
                        loggingService.lambda$logEvent$0$LoggingServiceImpl("MembershipViewEntered", "membershipStatus", Integer.valueOf(membershipStatus.membershipStatus));
                    }
                    MembershipMainRecyclerFragment.this.logged = true;
                }
                MembershipMainRecyclerFragment.this.setResponse(membershipResponse);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                if ("purchased".equals(apiRequest.tag())) {
                    MembershipMainRecyclerFragment membershipMainRecyclerFragment = MembershipMainRecyclerFragment.this;
                    membershipMainRecyclerFragment.purchasedSku = null;
                    AlertDialog alertDialog = new AlertDialog(membershipMainRecyclerFragment.getContext());
                    alertDialog.setMessage(str);
                    alertDialog.addButton(R.string.close, 0, (View.OnClickListener) null);
                    alertDialog.show();
                    return;
                }
                super.onFail(apiRequest, i, list, str, apiResponse, th);
            }
        });
    }

    private ApiRequest prepareMembershipRequest() {
        Purchase purchase = this.purchasedSku;
        if (purchase != null) {
            return ApiRequest.builder().post().path("/membership/product/subscribe").param("sku", this.purchasedSku.getSku()).param("packageName", getContext().getPackageName()).param("paymentType", 5).param("paymentContext", JacksonUtils.createObjectNode(purchase.getOriginalJson())).tag("purchased").build();
        }
        if (this.waitingForIab != null) {
            return null;
        }
        return ApiRequest.builder().global().path("/membership").param("force", true).build();
    }

    public void setResponse(MembershipResponse membershipResponse) {
        String str = membershipResponse.timestamp;
        if (str != null) {
            this.responseTime = DateTimeFormatter.parseISO8601(str).getTime();
        }
        this.membership = membershipResponse.membership;
        updateHeader();
        ((MembershipService) getService("membership")).update(membershipResponse);
    }

    void updateMembership(MembershipResponse membershipResponse) {
        if (this.adapter != null) {
            setResponse(membershipResponse);
        }
    }

    private void showSubscribe() {
        MembershipStatus membershipStatus;
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.fade_in, R.anim.fade_out_fast);
        fragmentTransactionBeginTransaction.add(android.R.id.content, new MembershipSubscribeFragment(), "subscribe");
        fragmentTransactionBeginTransaction.addToBackStack("subscribe");
        fragmentTransactionBeginTransaction.commit();
        if (((MembershipService) getService("membership")).freeTrial()) {
        }
        MembershipStatus membershipStatus2 = this.membership;
        if ((membershipStatus2 != null && membershipStatus2.membershipStatus > 0 && membershipStatus2.isAutoRenew) || (membershipStatus = this.membership) == null || membershipStatus.isAutoRenew || membershipStatus.expiredTime == null) {
        }
    }

    void showCofetti(long j) {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.4
            @Override // java.lang.Runnable
            public void run() {
                MembershipMainRecyclerFragment.this.cofettiView.fire();
            }
        }, j);
    }

    public void flipCard() {
        int i = this.cardSide;
        if (i == 0) {
            AnimatorSet animatorSet = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), R.animator.card_flip_left_out);
            animatorSet.setTarget(this.header.findViewById(R.id.membership_card));
            animatorSet.start();
            AnimatorSet animatorSet2 = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), R.animator.card_flip_left_in);
            animatorSet2.setTarget(this.header.findViewById(R.id.membership_card_back));
            animatorSet2.addListener(new Animator.AnimatorListener() { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.5
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    MembershipMainRecyclerFragment membershipMainRecyclerFragment = MembershipMainRecyclerFragment.this;
                    membershipMainRecyclerFragment.cardSide = 1;
                    membershipMainRecyclerFragment.updateHeader();
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    MembershipMainRecyclerFragment membershipMainRecyclerFragment = MembershipMainRecyclerFragment.this;
                    membershipMainRecyclerFragment.cardSide = 1;
                    membershipMainRecyclerFragment.updateHeader();
                }
            });
            animatorSet2.start();
            this.cardSide = -1;
            return;
        }
        if (i == 1) {
            AnimatorSet animatorSet3 = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), R.animator.card_flip_right_in);
            animatorSet3.setTarget(this.header.findViewById(R.id.membership_card));
            animatorSet3.start();
            AnimatorSet animatorSet4 = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), R.animator.card_flip_right_out);
            animatorSet4.setTarget(this.header.findViewById(R.id.membership_card_back));
            animatorSet4.addListener(new Animator.AnimatorListener() { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.6
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    MembershipMainRecyclerFragment membershipMainRecyclerFragment = MembershipMainRecyclerFragment.this;
                    membershipMainRecyclerFragment.cardSide = 0;
                    membershipMainRecyclerFragment.updateHeader();
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    MembershipMainRecyclerFragment membershipMainRecyclerFragment = MembershipMainRecyclerFragment.this;
                    membershipMainRecyclerFragment.cardSide = 0;
                    membershipMainRecyclerFragment.updateHeader();
                }
            });
            animatorSet4.start();
            this.cardSide = -1;
        }
    }

    void flipCard(boolean z) {
        if (this.cardSide == 0 && !z) {
            flipCard();
        } else if (this.cardSide == 1 && z) {
            flipCard();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchAutoRenew(final View view, boolean z) {
        MembershipStatus membershipStatus = this.membership;
        if (membershipStatus == null || membershipStatus.paymentType != 1) {
            return;
        }
        if (membershipStatus.isAutoRenew && !z) {
            AlertDialog alertDialog = new AlertDialog(getContext());
            alertDialog.setTitle(R.string.push_setting_confirm);
            alertDialog.setMessage(R.string.membership_renew_warning);
            alertDialog.addButton(R.string.cancel, 0, new View.OnClickListener() { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    MembershipMainRecyclerFragment.this.updateHeader();
                }
            });
            alertDialog.addButton(R.string.yes, 8, new View.OnClickListener() { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    MembershipMainRecyclerFragment.this.switchAutoRenew(view2, true);
                }
            });
            alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.9
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    MembershipMainRecyclerFragment.this.updateHeader();
                }
            });
            alertDialog.show();
            return;
        }
        view.setEnabled(false);
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("isAutoRenew", !this.membership.isAutoRenew);
        ((ApiService) getService("api")).exec(ApiRequest.builder().global().post().path("/membership/config").param("paymentType", 1).param("paymentContext", objectNodeCreateObjectNode).build(), new ApiJsonResponseListener<MembershipResponse>(MembershipResponse.class) { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.10
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, MembershipResponse membershipResponse) throws Exception {
                MembershipMainRecyclerFragment.this.setResponse(membershipResponse);
                view.setEnabled(true);
                Utils.post(new Runnable() { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.10.1
                    @Override // java.lang.Runnable
                    public void run() {
                    }
                });
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                NVToast.makeText(MembershipMainRecyclerFragment.this.getContext(), str, 0).show();
                MembershipMainRecyclerFragment.this.updateHeader();
                view.setEnabled(true);
            }
        });
        boolean z2 = this.membership.isAutoRenew;
    }
}
