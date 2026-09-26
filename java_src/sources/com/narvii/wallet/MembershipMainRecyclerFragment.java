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
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.core.content.res.ResourcesCompat;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Observer;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.android.billingclient.api.Purchase;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.material.appbar.AppBarLayout;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.nested.FakeActionBar;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.DateUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.wallet.membership.MembershipDataAdapter;
import com.narvii.widget.NVDrawableAnimatedView;
import com.narvii.widget.RandomBlinkingView;
import com.narvii.widget.StatusBarPlaceHolder;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.cofetti.CofettiView;
import java.text.DateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class MembershipMainRecyclerFragment extends NVRecyclerViewFragment implements View.OnClickListener, AppBarLayout.h {
    private MembershipDataAdapter adapter;
    private AppBarLayout appBarLayout;
    private int cardSide;
    private CofettiView cofettiView;
    private FakeActionBar fakeActionBar;
    private View header;
    private boolean logged;
    private MembershipStatus membership;
    private RecyclerViewMergeAdapter mergeAdapter;
    private Purchase purchasedSku;
    private long responseTime;
    private NVDrawableAnimatedView rippledView;
    private RandomBlinkingView starBlinkingView;
    private StatusBarPlaceHolder statusBarPlaceHolder;
    private TextView subscribeBenefitsText;
    private TextView subscribeHeaderText;
    private Runnable waitingForIab = new Runnable() { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.1
        @Override // java.lang.Runnable
        public void run() {
            MembershipMainRecyclerFragment.this.waitingForIab = null;
            if (MembershipMainRecyclerFragment.this.adapter != null) {
                MembershipMainRecyclerFragment.this.adapter.refresh(256, null);
                MembershipMainRecyclerFragment.this.fetchMembership();
            }
        }
    };
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MembershipMainRecyclerFragment.this.purchasedSku = null;
            if (MembershipMainRecyclerFragment.this.waitingForIab != null) {
                Utils.handler.removeCallbacks(MembershipMainRecyclerFragment.this.waitingForIab);
                MembershipMainRecyclerFragment.this.waitingForIab.run();
                MembershipMainRecyclerFragment.this.waitingForIab = null;
            }
            MembershipMainRecyclerFragment.this.updateHeader();
        }
    };

    private float calculateAlpha(int i10) {
        if (i10 < -240) {
            return 1.0f;
        }
        if (i10 >= 0) {
            return 0.0f;
        }
        return (-i10) / 240.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchAutoRenew$5(View view) {
        switchAutoRenew(view, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateHeader$2(View view) {
    }

    private boolean membershipIsNotNull() {
        return this.membership != null;
    }

    private boolean membershipIsNull() {
        return this.membership == null;
    }

    private boolean rippleViewIsNotNull() {
        return this.rippledView != null;
    }

    public void flipCard() {
        int i10 = this.cardSide;
        if (i10 == 0) {
            AnimatorSet animatorSet = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), R.animator.card_flip_left_out);
            animatorSet.setTarget(this.header.findViewById(R.id.membership_card));
            animatorSet.start();
            AnimatorSet animatorSet2 = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), R.animator.card_flip_left_in);
            animatorSet2.setTarget(this.header.findViewById(R.id.membership_card_back));
            animatorSet2.addListener(new Animator.AnimatorListener() { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.4
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    MembershipMainRecyclerFragment.this.cardSide = 1;
                    MembershipMainRecyclerFragment.this.updateHeader();
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    MembershipMainRecyclerFragment.this.cardSide = 1;
                    MembershipMainRecyclerFragment.this.updateHeader();
                }
            });
            animatorSet2.start();
            this.cardSide = -1;
            return;
        }
        if (i10 == 1) {
            AnimatorSet animatorSet3 = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), R.animator.card_flip_right_in);
            animatorSet3.setTarget(this.header.findViewById(R.id.membership_card));
            animatorSet3.start();
            AnimatorSet animatorSet4 = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), R.animator.card_flip_right_out);
            animatorSet4.setTarget(this.header.findViewById(R.id.membership_card_back));
            animatorSet4.addListener(new Animator.AnimatorListener() { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.5
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    MembershipMainRecyclerFragment.this.cardSide = 0;
                    MembershipMainRecyclerFragment.this.updateHeader();
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    MembershipMainRecyclerFragment.this.cardSide = 0;
                    MembershipMainRecyclerFragment.this.updateHeader();
                }
            });
            animatorSet4.start();
            this.cardSide = -1;
        }
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951626;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "membership_detail";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:66:0x013b  */
    void updateHeader() {
        int i10;
        int i11;
        int i12;
        String statusWillExpireText;
        MembershipService membershipService = (MembershipService) getService("membership");
        boolean z6 = false;
        if (hasAMembershipAutoRenew()) {
            i10 = 0;
        } else if (membershipService.freeTrial()) {
            i10 = R.string.membership_try_for_free;
        } else {
            i10 = (membershipNotAutoRenewExpired() || membershipIsPremiumAndIsNotCreatedToday()) ? R.string.membership_renew : R.string.membership_subscribe;
        }
        makeHeaderVisible();
        if (membershipIsNull() || membershipIsActiveAndNotPremium() || membershipIsNotActiveAndThereIsNoCreatedTime() || premiumMembershipWasCreatedToday()) {
            setActionAndStatusBarBgColor(Color.parseColor("#FC8028"));
            i11 = R.drawable.membership_header_bg;
        } else {
            setActionAndStatusBarBgColor(Color.parseColor("#676461"));
            i11 = R.drawable.membership_header_inactive_bg;
        }
        setBackgroundColor(i11);
        float f = getResources().getDisplayMetrics().density * 16000;
        setupMembershipCard(i10, f, this.header.findViewById(R.id.membership_card));
        boolean z10 = membershipIsNull() || membershipIsNotCreated() || premiumMembershipWasCreatedToday();
        if (!z10 && rippleViewIsNotNull() && rippleViewLayerCountInsideRange()) {
            setupRippleView();
        }
        ImageView imageView = (ImageView) this.header.findViewById(R.id.avatar_halo);
        ThumbImageView thumbImageView = (ThumbImageView) this.header.findViewById(R.id.membership_card_bg);
        boolean z11 = ((membershipIsNotNull() && isMembershipStatusNone() && membershipExpiredTimeIsNotNull()) || (membershipIsNotNull() && isPremiumItemMembership() && !isMembershipCreatedToday())) ? false : true;
        int i13 = R.drawable.membership_card_raw_bg_active;
        if (z11) {
            setupUiForMembership(imageView, thumbImageView);
            i12 = R.drawable.membership_card_raw_bg_active;
        } else {
            setupUiForNoMembership(imageView, thumbImageView);
            i12 = R.drawable.membership_card_raw_bg_inactive;
        }
        thumbImageView.defaultDrawable = ResourcesCompat.e(getResources(), i12, getContext().getTheme());
        thumbImageView.setImageUrl(null);
        setupSubscribeText(i10);
        setVisibilityOfView(this.subscribeHeaderText, i10 != 0);
        setupMembershipCardBg(i10);
        setupMembershipHeaderUi(z10);
        User userProfile = ((AccountService) getService("account")).getUserProfile();
        setupAvatarLayout(z10, z11, userProfile);
        setupNickName(z10, userProfile);
        setupSinceView();
        if (hasNotMembershipStatus()) {
            statusWillExpireText = null;
        } else if (isPremiumItemMembership()) {
            statusWillExpireText = getContext().getString(R.string.membership_status_expired);
        } else if (isMembershipStatusNone()) {
            long time = this.responseTime - this.membership.expiredTime.getTime();
            if (time > 0) {
                statusWillExpireText = getStatusExpiredText((int) (time / DateUtils.ONE_DAY));
            } else {
                statusWillExpireText = null;
            }
        } else if (userHasAnActiveMembership()) {
            long time2 = this.membership.expiredTime.getTime() - this.responseTime;
            if (time2 > 0) {
                statusWillExpireText = getStatusWillExpireText((int) (time2 / DateUtils.ONE_DAY));
            } else {
                statusWillExpireText = null;
            }
        } else {
            statusWillExpireText = null;
        }
        TextView textView = (TextView) this.header.findViewById(R.id.membership_status);
        textView.setVisibility(!z10 ? 0 : 8);
        textView.setText(statusWillExpireText);
        this.header.findViewById(R.id.membership_card_back).setCameraDistance(f);
        this.header.findViewById(R.id.membership_card_back).setOnClickListener(this);
        this.header.findViewById(R.id.membership_card_back).setClickable(this.cardSide == 1);
        ThumbImageView thumbImageView2 = (ThumbImageView) this.header.findViewById(R.id.membership_card_back_bg);
        TextView textView2 = (TextView) this.header.findViewById(R.id.membership_subscribtion_description);
        int color = Color.parseColor("#AADD5C0E");
        if (membershipIsNotNull() && userHasAnActiveMembership() && !isPremiumItemMembership()) {
            textView2.setText((CharSequence) null);
        } else if (membershipIsNull() || membershipIsNotCreated() || premiumMembershipWasCreatedToday()) {
            textView2.setText(R.string.membership_subscribtion_descrption);
        } else if (isPremiumItemMembership() || (isMembershipStatusNone() && this.membership.expiredTime != null)) {
            textView2.setText(R.string.membership_subscribtion_renew_descrption);
            color = Color.parseColor("#66000000");
            i13 = R.drawable.membership_card_raw_bg_inactive_back;
        }
        thumbImageView2.setShadowColor(color);
        thumbImageView2.defaultDrawable = ResourcesCompat.e(getResources(), i13, getContext().getTheme());
        getCustomTheme();
        thumbImageView2.setImageUrl(null);
        updateMembershipStartDate();
        if (membershipIsNotNull() && userHasAnActiveMembership() && this.membership.paymentType == 1 && !isPremiumItemMembership()) {
            z6 = true;
        }
        updateAutoRenewableUi(z6);
        this.header.findViewById(R.id.intercept_click).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.wallet.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MembershipMainRecyclerFragment.lambda$updateHeader$2(view);
            }
        });
    }

    private MembershipService getMembershipService() {
        return (MembershipService) getService("membership");
    }

    private String getStatusExpiredText(int i10) {
        if (i10 == 0) {
            return getContext().getString(R.string.membership_status_expired_0_day);
        }
        if (i10 == 1) {
            return getContext().getString(R.string.membership_status_expired_1_day);
        }
        if (i10 > 1) {
            return getContext().getString(R.string.membership_status_expired_n_day, Integer.valueOf(i10));
        }
        return null;
    }

    private String getStatusWillExpireText(int i10) {
        if (i10 == 0) {
            return getContext().getString(R.string.membership_status_expiring_in_0_day);
        }
        if (i10 == 1) {
            return getContext().getString(R.string.membership_status_expiring_in_1_day);
        }
        if (i10 <= 0 || i10 > 14) {
            return null;
        }
        return getContext().getString(R.string.membership_status_expiring_in_n_day, Integer.valueOf(i10));
    }

    private void initMembership() {
        this.membership = new MembershipStatus();
        MembershipService membershipService = getMembershipService();
        Integer membershipStatus = membershipService.getMembershipStatus();
        this.membership.membershipStatus = membershipStatus != null ? membershipStatus.intValue() : 0;
        long j6 = ((SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY)).getLong("membershipCreatedTime", 0L);
        this.membership.createdTime = j6 > 0 ? new Date(j6) : null;
        this.membership.isAutoRenew = membershipService.isAutoRenew();
    }

    private boolean isMembershipAutoRenew() {
        return this.membership.isAutoRenew;
    }

    private boolean isMembershipCreatedToday() {
        return DateUtils.isToday(this.membership.createdTime);
    }

    private boolean isMembershipStatusNone() {
        return this.membership.membershipStatus == 0;
    }

    private static boolean isNotInstanceOfViewGroup(View view) {
        return !(view instanceof ViewGroup);
    }

    private boolean isPremiumItemMembership() {
        return this.membership.isPremiumItemMembership;
    }

    private boolean isUserIDNull(AccountService accountService) {
        return accountService != null && accountService.getUserId() == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCofetti$3() {
        this.cofettiView.fire();
    }

    private void makeHeaderVisible() {
        this.header.setVisibility(0);
    }

    private boolean membershipCreatedTimeIsNull() {
        return this.membership.createdTime == null;
    }

    private boolean membershipExpiredTimeIsNotNull() {
        return this.membership.expiredTime != null;
    }

    private boolean membershipHasNoExpiiredTime() {
        return this.membership.expiredTime == null;
    }

    private ApiRequest prepareMembershipRequest() {
        Purchase purchase = this.purchasedSku;
        if (purchase != null) {
            return ApiRequest.builder().post().path("/membership/product/subscribe").param("sku", this.purchasedSku.j().get(0)).param("packageName", getContext().getPackageName()).param("paymentType", 5).param("paymentContext", JacksonUtils.createObjectNode(purchase.d())).tag("purchased").build();
        }
        if (this.waitingForIab != null) {
            return null;
        }
        return ApiRequest.builder().global().path("/membership").param("force", Boolean.TRUE).build();
    }

    private void registerBroadcastReceiver() {
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipSubscribeFragment.ACTION_PURCHASED_SUB_CHANGED));
    }

    private boolean rippleViewLayerCountInsideRange() {
        return this.rippledView.getLayerCount() < 4;
    }

    private void searchForPurchase(AccountService accountService, List<? extends Purchase> list) {
        Collections.sort(list, IabUtils.PURCHASE_COMPARATOR_R);
        for (Purchase purchase : list) {
            if (BillingManager.INSTANCE.checkPurchaseForAminoId(purchase, accountService.getUserId())) {
                this.purchasedSku = purchase;
                Runnable runnable = this.waitingForIab;
                if (runnable != null) {
                    Utils.handler.removeCallbacks(runnable);
                    this.waitingForIab = null;
                }
                refreshData();
                return;
            }
        }
    }

    private void sendFirebaseEvent(NVContext nVContext) {
        FirebaseLogManager.logEvent(nVContext, "enters_membership", null);
    }

    private void sendStatisticsEvent() {
        ((StatisticsService) getService("statistics")).event("Membership Page").param(ExternalPostPreviewFragment.SOURCE, getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Membership Page Total");
    }

    private void sendStatisticsEventIfRequired(Bundle bundle) {
        if (bundle == null) {
            sendStatisticsEvent();
        }
    }

    private void setActionAndStatusBarBgColor(int i10) {
        FakeActionBar fakeActionBar = this.fakeActionBar;
        if (fakeActionBar != null) {
            fakeActionBar.setBackgroundColor(i10);
        }
        StatusBarPlaceHolder statusBarPlaceHolder = this.statusBarPlaceHolder;
        if (statusBarPlaceHolder != null) {
            statusBarPlaceHolder.setBackgroundColor(i10);
        }
    }

    private void setBackgroundColor(int i10) {
        this.header.setBackgroundResource(i10);
    }

    private void setVisibilityOfView(View view, boolean z6) {
        if (view == null) {
            return;
        }
        view.setVisibility(z6 ? 0 : 8);
    }

    private void setupAvatarLayout(boolean z6, boolean z10, User user) {
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) this.header.findViewById(R.id.user_avatar_layout);
        setVisibilityOfView(userAvatarLayout, !z6);
        userAvatarLayout.setNoBadge(!z10);
        userAvatarLayout.setAvatarShadow(getResources().getDimensionPixelSize(R.dimen.avatar_shadow_size), Color.parseColor("#60000000"), false);
        userAvatarLayout.markAvatarFrameHide(true);
        userAvatarLayout.setUser(user, z10);
    }

    private void setupBilling() {
        final AccountService accountService = (AccountService) getService("account");
        if (isUserIDNull(accountService)) {
            return;
        }
        final BillingManager billingManager = BillingManager.INSTANCE;
        billingManager.getSetupFinished().i(this, new Observer() { // from class: com.narvii.wallet.n
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f3027a.lambda$setupBilling$1(billingManager, accountService, (com.android.billingclient.api.h) obj);
            }
        });
        Utils.postDelayed(this.waitingForIab, 400L);
    }

    private void setupMembershipCard(int i10, float f, View view) {
        if (view != null) {
            view.setCameraDistance(f);
            view.setOnClickListener(this);
            view.setClickable(this.cardSide == 0);
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), Utils.dpToPxInt(getContext(), i10 == 0 ? 50.0f : 100.0f));
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = Utils.dpToPxInt(getContext(), i10 == 0 ? 245.0f : 295.0f);
            view.setLayoutParams(layoutParams);
        }
    }

    private void setupMembershipCardBg(@StringRes int i10) {
        ThumbImageView thumbImageView = (ThumbImageView) this.header.findViewById(R.id.subscribe_bg);
        thumbImageView.defaultDrawable = ResourcesCompat.e(getResources(), R.drawable.membership_common_btn_bg, getContext().getTheme());
        thumbImageView.setVisibility(i10 != 0 ? 0 : 8);
        thumbImageView.setImageUrl(null);
        thumbImageView.setOnClickListener(this);
    }

    private void setupMembershipHeaderUi(boolean z6) {
        this.header.findViewById(R.id.membership_card_logo).setVisibility(z6 ? 0 : 4);
        this.header.findViewById(R.id.membership_card_logo_text).setVisibility(z6 ? 0 : 4);
        this.header.findViewById(R.id.membership_card_logo_small).setVisibility(z6 ? 4 : 0);
    }

    private void setupNickName(boolean z6, User user) {
        TextView textView = (TextView) this.header.findViewById(R.id.nickname);
        setVisibilityOfView(textView, !z6);
        textView.setText(user != null ? user.nickname : "");
    }

    private void setupRippleView() {
        this.rippledView.addLayer(new NVDrawableAnimatedView.LayerConfig.Builder(R.drawable.membership_avatar_halo, 5).duration(12000).layerGravity(32).margin(0, 0, 0, Utils.dpToPxInt(getContext(), 12.0f)).build());
    }

    private void setupSinceView() {
        TextView textView = (TextView) this.header.findViewById(R.id.membership_since);
        if (membershipIsNotNull() && isPremiumItemMembership() && isMembershipCreatedToday()) {
            textView.setText((CharSequence) null);
            textView.setVisibility(8);
        } else if (!membershipIsNotNull() || !userHasAnActiveMembership() || this.membership.createdTime == null || isPremiumItemMembership()) {
            textView.setText((CharSequence) null);
            textView.setVisibility(8);
        } else {
            textView.setText(getContext().getString(R.string.membership_since_date, DateFormat.getDateInstance(1).format(this.membership.createdTime)));
            textView.setVisibility(0);
        }
    }

    private void setupSubscribeText(int i10) {
        TextView textView = (TextView) this.header.findViewById(R.id.subscribe_text);
        if (i10 == 0) {
            textView.setText((CharSequence) null);
            TextView textView2 = this.subscribeBenefitsText;
            if (textView2 != null) {
                textView2.setText((CharSequence) null);
            }
        } else {
            textView.setText(i10);
            TextView textView3 = this.subscribeBenefitsText;
            if (textView3 != null) {
                textView3.setText(i10);
            }
        }
        setVisibilityOfView(textView, i10 != 0);
    }

    private void setupUiForMembership(ImageView imageView, ThumbImageView thumbImageView) {
        thumbImageView.setShadowColor(Color.parseColor("#AADD5C0E"));
        if (rippleViewIsNotNull()) {
            this.rippledView.setVisibility(0);
        }
        RandomBlinkingView randomBlinkingView = this.starBlinkingView;
        if (randomBlinkingView != null) {
            randomBlinkingView.enable();
        }
        imageView.setVisibility(8);
    }

    private void setupUiForNoMembership(ImageView imageView, ThumbImageView thumbImageView) {
        thumbImageView.setShadowColor(Color.parseColor("#66000000"));
        if (rippleViewIsNotNull()) {
            this.rippledView.setVisibility(8);
        }
        RandomBlinkingView randomBlinkingView = this.starBlinkingView;
        if (randomBlinkingView != null) {
            randomBlinkingView.disable();
        }
        imageView.setVisibility(0);
    }

    private void updateAutoRenewableUi(boolean z6) {
        this.header.findViewById(R.id.membership_auto_renew_text).setVisibility(z6 ? 0 : 4);
        ((CheckBox) this.header.findViewById(R.id.membership_auto_renew_checkbox)).setChecked(membershipIsNotNull() && isMembershipAutoRenew());
        this.header.findViewById(R.id.membership_auto_renew_checkbox).setVisibility(z6 ? 0 : 4);
        this.header.findViewById(R.id.membership_auto_renew_checkbox).setOnClickListener(this);
        this.header.findViewById(R.id.membership_auto_renew_checkbox).setClickable(this.cardSide == 1);
    }

    private void updateMembershipStartDate() {
        TextView textView = (TextView) this.header.findViewById(R.id.membership_start_date);
        TextView textView2 = (TextView) this.header.findViewById(R.id.membership_start_date_content);
        if (!membershipIsNotNull() || !userHasAnActiveMembership() || this.membership.createdTime == null || isPremiumItemMembership()) {
            textView.setText((CharSequence) null);
            textView2.setText((CharSequence) null);
        } else {
            textView.setText(getContext().getString(R.string.membership_subscribtion_start_date));
            textView2.setText(DateFormat.getDateInstance(2).format(this.membership.createdTime));
        }
    }

    private boolean userHasAnActiveMembership() {
        return this.membership.membershipStatus > 0;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        this.mergeAdapter = new RecyclerViewMergeAdapter(this);
        MembershipDataAdapter membershipDataAdapter = new MembershipDataAdapter(this);
        this.adapter = membershipDataAdapter;
        this.mergeAdapter.addAdapter(membershipDataAdapter);
        fetchMembership();
        return this.mergeAdapter;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        Runnable runnable = this.waitingForIab;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            this.waitingForIab = null;
        }
        unregisterLocalReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // com.google.android.material.appbar.AppBarLayout.c
    public void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
        TextView textView = this.subscribeBenefitsText;
        if (textView != null) {
            textView.setAlpha(calculateAlpha(i10));
        }
    }

    public void setResponse(MembershipResponse membershipResponse) {
        String str = membershipResponse.timestamp;
        if (str != null) {
            this.responseTime = DateTimeFormatter.parseISO8601(str).getTime();
        }
        this.membership = membershipResponse.membership;
        updateHeader();
        getMembershipService().update(membershipResponse);
    }

    void showCofetti(long j6) {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.wallet.l
            @Override // java.lang.Runnable
            public final void run() {
                this.f3024a.lambda$showCofetti$3();
            }
        }, j6);
    }

    void updateMembership(MembershipResponse membershipResponse) {
        if (this.adapter != null) {
            setResponse(membershipResponse);
        }
    }

    private void addCofettiViewToLayout(View view) {
        View viewFindViewById = view.findViewById(R.id.recycle_frame);
        if (!isNotInstanceOfViewGroup(viewFindViewById)) {
            ((ViewGroup) viewFindViewById).addView(this.cofettiView);
            return;
        }
        throw new IllegalArgumentException("targetView must be ViewGroup");
    }

    private static View createMembershipLayout(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_membership_main_recycler, viewGroup, false);
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
                super.onFinish(apiRequest, membershipResponse);
                if ("purchased".equals(apiRequest.tag())) {
                    MembershipMainRecyclerFragment.this.purchasedSku = null;
                }
                if (!MembershipMainRecyclerFragment.this.logged) {
                    LoggingService loggingService = (LoggingService) MembershipMainRecyclerFragment.this.getService("logging");
                    MembershipStatus membershipStatus = membershipResponse.membership;
                    if (membershipStatus == null) {
                        loggingService.lambda$logEvent$0("MembershipViewEntered", new Object[0]);
                    } else {
                        loggingService.lambda$logEvent$0("MembershipViewEntered", "membershipStatus", Integer.valueOf(membershipStatus.membershipStatus));
                    }
                    MembershipMainRecyclerFragment.this.logged = true;
                }
                MembershipMainRecyclerFragment.this.setResponse(membershipResponse);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, @Nullable ApiResponse apiResponse, Throwable th) {
                if ("purchased".equals(apiRequest.tag())) {
                    MembershipMainRecyclerFragment.this.purchasedSku = null;
                    AlertDialog alertDialog = new AlertDialog(MembershipMainRecyclerFragment.this.getContext());
                    alertDialog.setMessage(str);
                    alertDialog.addButton(R.string.close, 0, (View.OnClickListener) null);
                    alertDialog.show();
                    return;
                }
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
            }
        });
    }

    private boolean hasAMembershipAutoRenew() {
        if (membershipIsNotNull() && userHasAnActiveMembership() && isMembershipAutoRenew() && !isPremiumItemMembership()) {
            return true;
        }
        return false;
    }

    private boolean hasNotMembershipStatus() {
        if (!membershipIsNull() && !membershipHasNoExpiiredTime() && !isMembershipAutoRenew()) {
            return false;
        }
        return true;
    }

    private static CofettiView inflateCofettiView(@NonNull LayoutInflater layoutInflater, View view) {
        return (CofettiView) layoutInflater.inflate(R.layout.cofetti_view, (ViewGroup) view.findViewById(R.id.recycle_frame), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ w7.l0 lambda$setupBilling$0(AccountService accountService, List list) {
        searchForPurchase(accountService, list);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupBilling$1(BillingManager billingManager, final AccountService accountService, com.android.billingclient.api.h hVar) {
        if (billingManager.getBillingState().isConnected()) {
            MembershipBillingManager.INSTANCE.querySubsPurchases(new e8.l() { // from class: com.narvii.wallet.r
                @Override // e8.l
                public final Object invoke(Object obj) {
                    return this.f3046a.lambda$setupBilling$0(accountService, (List) obj);
                }
            });
            Runnable runnable = this.waitingForIab;
            if (runnable != null) {
                Utils.handler.removeCallbacks(runnable);
                this.waitingForIab.run();
                this.waitingForIab = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchAutoRenew$4(View view) {
        updateHeader();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchAutoRenew$6(DialogInterface dialogInterface) {
        updateHeader();
    }

    private boolean membershipIsActiveAndNotPremium() {
        if (userHasAnActiveMembership() && !isPremiumItemMembership()) {
            return true;
        }
        return false;
    }

    private boolean membershipIsNotActiveAndThereIsNoCreatedTime() {
        if (isMembershipStatusNone() && membershipCreatedTimeIsNull()) {
            return true;
        }
        return false;
    }

    private boolean membershipIsNotCreated() {
        if (isMembershipStatusNone() && membershipCreatedTimeIsNull()) {
            return true;
        }
        return false;
    }

    private boolean membershipIsPremiumAndIsNotCreatedToday() {
        if (membershipIsNotNull() && isPremiumItemMembership() && !isMembershipCreatedToday()) {
            return true;
        }
        return false;
    }

    private boolean membershipNotAutoRenewExpired() {
        if (membershipIsNotNull() && !isMembershipAutoRenew() && membershipExpiredTimeIsNotNull()) {
            return true;
        }
        return false;
    }

    private boolean premiumMembershipWasCreatedToday() {
        if (isPremiumItemMembership() && isMembershipCreatedToday()) {
            return true;
        }
        return false;
    }

    private void refreshData() {
        if (!isDestoryed()) {
            this.mergeAdapter.refresh(0, null);
            fetchMembership();
        }
    }

    private void showSubscribe() {
        String str;
        FragmentTransaction fragmentTransactionQ = getFragmentManager().q();
        fragmentTransactionQ.y(R.anim.fade_in, R.anim.fade_out_fast);
        fragmentTransactionQ.c(android.R.id.content, new MembershipSubscribeFragment(), "subscribe");
        fragmentTransactionQ.h("subscribe");
        fragmentTransactionQ.j();
        if (getMembershipService().freeTrial()) {
            str = "Trial";
        } else {
            str = "Join Amino+";
        }
        if ((!membershipIsNotNull() || !userHasAnActiveMembership() || !isMembershipAutoRenew()) && membershipIsNotNull() && !isMembershipAutoRenew() && membershipExpiredTimeIsNotNull()) {
            str = "Renew";
        }
        ((StatisticsService) getService("statistics")).event("Membership Prices").param(EventConstants.CommentPost.TYPE, str);
    }

    private void switchAutoRenew(final View view, boolean z6) {
        if (membershipIsNotNull() && this.membership.paymentType == 1) {
            if (isMembershipAutoRenew() && !z6) {
                AlertDialog alertDialog = new AlertDialog(getContext());
                alertDialog.setTitle(R.string.push_setting_confirm);
                alertDialog.setMessage(R.string.membership_renew_warning);
                alertDialog.addButton(R.string.cancel, 0, new View.OnClickListener() { // from class: com.narvii.wallet.o
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f3031a.lambda$switchAutoRenew$4(view2);
                    }
                });
                alertDialog.addButton(R.string.yes, 8, new View.OnClickListener() { // from class: com.narvii.wallet.p
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f3042a.lambda$switchAutoRenew$5(view2);
                    }
                });
                alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.wallet.q
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        this.f3044a.lambda$switchAutoRenew$6(dialogInterface);
                    }
                });
                alertDialog.show();
                return;
            }
            view.setEnabled(false);
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode.put("isAutoRenew", !isMembershipAutoRenew());
            ((ApiService) getService("api")).exec(ApiRequest.builder().global().post().path("/membership/config").param("paymentType", 1).param("paymentContext", objectNodeCreateObjectNode).build(), new ApiJsonResponseListener<MembershipResponse>(MembershipResponse.class) { // from class: com.narvii.wallet.MembershipMainRecyclerFragment.6
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    NVToast.makeText(MembershipMainRecyclerFragment.this.getContext(), str, 0).show();
                    MembershipMainRecyclerFragment.this.updateHeader();
                    view.setEnabled(true);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, MembershipResponse membershipResponse) {
                    MembershipMainRecyclerFragment.this.setResponse(membershipResponse);
                    view.setEnabled(true);
                }
            });
            if (isMembershipAutoRenew()) {
                ((StatisticsService) getService("statistics")).event("Turns Off Auto Renew").userPropInc("Turns Off Auto Renew Total");
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.membership_auto_renew_checkbox /* 2131364169 */:
                switchAutoRenew(view, false);
                break;
            case R.id.membership_card /* 2131364171 */:
            case R.id.membership_card_back /* 2131364172 */:
                flipCard();
                break;
            case R.id.subscribe_benefits_text /* 2131365376 */:
            case R.id.subscribe_bg /* 2131365377 */:
                showSubscribe();
                break;
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.membership);
        setupBilling();
        registerBroadcastReceiver();
        sendStatisticsEventIfRequired(bundle);
        sendFirebaseEvent(this);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewCreateMembershipLayout = createMembershipLayout(layoutInflater, viewGroup);
        this.cofettiView = inflateCofettiView(layoutInflater, viewCreateMembershipLayout);
        addCofettiViewToLayout(viewCreateMembershipLayout);
        return viewCreateMembershipLayout;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.header = view.findViewById(R.id.membership_header);
        AppBarLayout appBarLayout = (AppBarLayout) view.findViewById(R.id.appbar_layout);
        this.appBarLayout = appBarLayout;
        appBarLayout.d(this);
        TextView textView = (TextView) view.findViewById(R.id.subscribe_benefits_text);
        this.subscribeBenefitsText = textView;
        textView.setOnClickListener(this);
        this.subscribeHeaderText = (TextView) view.findViewById(R.id.subscribe_text);
        initMembership();
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh);
        this.swipeRefreshLayout = swipeRefreshLayout;
        swipeRefreshLayout.setEnabled(false);
        this.starBlinkingView = (RandomBlinkingView) view.findViewById(R.id.star_blinking_view);
        FakeActionBar fakeActionBar = (FakeActionBar) view.findViewById(R.id.fake_action_bar);
        this.fakeActionBar = fakeActionBar;
        if (fakeActionBar != null) {
            fakeActionBar.setTitle(R.string.membership);
        }
        this.statusBarPlaceHolder = (StatusBarPlaceHolder) view.findViewById(R.id.status_bar);
        updateHeader();
    }

    public void smoothScrollToHeaderMax() {
        if (getRecyclerView() != null) {
            getRecyclerView().smoothScrollToPosition(0);
        }
    }

    void flipCard(boolean z6) {
        int i10 = this.cardSide;
        if (i10 == 0 && !z6) {
            flipCard();
        } else if (i10 == 1 && z6) {
            flipCard();
        }
    }
}
