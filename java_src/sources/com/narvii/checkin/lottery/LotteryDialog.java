package com.narvii.checkin.lottery;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.Sticker;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.bubble.PickChatThreadListFragment;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.util.Callback;
import com.narvii.util.DateUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.NVText;
import com.narvii.util.text.OnTagClickListener;
import com.narvii.util.text.TextUtils;
import com.narvii.util.ws.WsMessage;
import com.narvii.wallet.AdsVideoStats;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.Wallet;
import com.narvii.wallet.WalletRecyclerFragment;
import com.narvii.wallet.optinads.OptinAds;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.narvii.widget.FlipLayout;
import com.narvii.widget.GradientView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public class LotteryDialog extends NVDialog implements View.OnClickListener {
    public static final boolean FAKE_RESULT = true;
    public static final int OPT_IN_ADS_DAYS_INTERVAL = 7;
    AccountService accountService;
    View card1;
    View card2;
    View card3;
    View.OnClickListener cardClickListener;
    List<View> cardList;
    int cid;
    View clicked;
    LotteryResponse lotteryResponse;
    private long now;
    NVContext nvContext;
    String optinAdsAction;
    String rvAction;
    TextView titleView;

    /* JADX INFO: renamed from: com.narvii.checkin.lottery.LotteryDialog$3, reason: invalid class name */
    class AnonymousClass3 extends AnimatorListenerAdapter {
        final /* synthetic */ FlipLayout val$flipLayout;
        final /* synthetic */ int val$flipLayoutWidth;

        AnonymousClass3(FlipLayout flipLayout, int i10) {
            this.val$flipLayout = flipLayout;
            this.val$flipLayoutWidth = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0(int i10, FlipLayout flipLayout, boolean z6) {
            LotteryDialog.this.onFlipEnded(i10);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.val$flipLayout.setVisibility(0);
            LotteryDialog.this.clicked.setVisibility(4);
            this.val$flipLayout.flip();
            FlipLayout flipLayout = this.val$flipLayout;
            final int i10 = this.val$flipLayoutWidth;
            flipLayout.setFlipListener(new FlipLayout.FlipListener() { // from class: com.narvii.checkin.lottery.f
                @Override // com.narvii.widget.FlipLayout.FlipListener
                public final void onFlipEnd(FlipLayout flipLayout2, boolean z6) {
                    this.f2217a.lambda$onAnimationEnd$0(i10, flipLayout2, z6);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.narvii.checkin.lottery.LotteryDialog$4, reason: invalid class name */
    class AnonymousClass4 implements Animation.AnimationListener {
        final /* synthetic */ int val$finalBalance;
        final /* synthetic */ TextView val$tv;

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }

        AnonymousClass4(int i10, TextView textView) {
            this.val$finalBalance = i10;
            this.val$tv = textView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onAnimationEnd$0(TextView textView, ValueAnimator valueAnimator) {
            textView.setText(TextUtils.numberFormat.format(((Integer) valueAnimator.getAnimatedValue()).intValue()));
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            final TextView textView = (TextView) LotteryDialog.this.findViewById(R.id.added_coins);
            int i10 = LotteryDialog.this.lotteryResponse.lotteryLog.awardValue;
            textView.setText(org.slf4j.c.ANY_NON_NULL_MARKER + i10);
            textView.setVisibility(0);
            final int iMin = Math.min(WsMessage.LIVE_LAYER_USER_JOINED_EVENT, i10 * 50);
            final ViewPropertyAnimator duration = textView.animate().translationY(-Utils.dpToPx(LotteryDialog.this.getContext(), 20.0f)).setDuration(400L);
            duration.setListener(new AnimatorListenerAdapter() { // from class: com.narvii.checkin.lottery.LotteryDialog.4.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    duration.setListener(null);
                    textView.animate().translationY(-Utils.dpToPx(LotteryDialog.this.getContext(), 80.0f)).setStartDelay(iMin).setInterpolator(new AnticipateInterpolator(1.0f)).setDuration(300L).start();
                }
            });
            duration.start();
            int i11 = this.val$finalBalance;
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i11, i10 + i11);
            valueAnimatorOfInt.setDuration(iMin);
            final TextView textView2 = this.val$tv;
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.checkin.lottery.g
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    LotteryDialog.AnonymousClass4.lambda$onAnimationEnd$0(textView2, valueAnimator);
                }
            });
            valueAnimatorOfInt.setStartDelay(400L);
            valueAnimatorOfInt.start();
        }
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "lucky_draw";
    }

    @Override // android.app.Dialog
    public void setTitle(@Nullable CharSequence charSequence) {
        TextView textView = this.titleView;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    private int getCoinIconId() {
        int i10 = this.lotteryResponse.lotteryLog.awardValue;
        if (i10 == 2) {
            return R.drawable.ic_lottery_result_two_coins;
        }
        return i10 > 2 ? R.drawable.ic_lottery_result_n_coins : R.drawable.ic_lottery_result_one_coin;
    }

    @NonNull
    private String getResultTitle() {
        String string = this.nvContext.getContext().getString(R.string.better_luck_next_time);
        LotteryLog lotteryLog = this.lotteryResponse.lotteryLog;
        int i10 = lotteryLog.awardType;
        if (i10 == 0) {
            return this.nvContext.getContext().getString(R.string.better_luck_next_time);
        }
        if (i10 != 1) {
            return (i10 == 2 && lotteryLog.objectType == 113) ? this.nvContext.getContext().getString(R.string.got_one_sticker) : string;
        }
        return TextUtils.getCountText(getContext(), this.lotteryResponse.lotteryLog.awardValue, R.string.got_one_coin, R.string.got_n_coins);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidLotteryResponse(LotteryResponse lotteryResponse) {
        int i10;
        LotteryLog lotteryLog = lotteryResponse.lotteryLog;
        if (lotteryLog != null && (i10 = lotteryLog.awardType) <= 2) {
            return i10 != 2 || lotteryLog.objectType == 113;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFlipEnded$2(View view) {
        Intent intent = FragmentWrapperActivity.intent(WalletRecyclerFragment.class);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Lucky Draw");
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.nvContext.getContext(), intent);
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onOptinAdsEnabled$1(View view, NVText nVText, int i10, String str) {
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.nvContext, new Intent("android.intent.action.VIEW", Uri.parse("ndc://wallet")));
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$optinAds$0(AccountResponse accountResponse) {
        if (accountResponse != null) {
            onOptinAdsEnabled();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setUpCardBackViews$4(Sticker sticker, View view) {
        Intent intent = FragmentWrapperActivity.intent(PickChatThreadListFragment.class);
        intent.putExtra("stickerCollectionId", sticker.stickerCollectionId);
        intent.putExtra("__communityId", this.cid);
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.nvContext.getContext(), intent);
        dismiss();
    }

    private void optinAds() {
        OptinAdsUtil.optinAdsLevel(this.nvContext, 2, "Lucky Draw", new Callback() { // from class: com.narvii.checkin.lottery.e
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f2216a.lambda$optinAds$0((AccountResponse) obj);
            }
        });
    }

    private void recordOptInAdsOpTime() {
        this.accountService.getPrefs().edit().putLong("lottery_ads_last_op_time", System.currentTimeMillis()).apply();
    }

    private void sendButtonClickLog(String str) {
        LogEvent.clickBuilder(this, ActSemantic.wildcard).area(str).send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLotteryRequest() {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().post().path("check-in/lottery").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).communityId(this.cid).build(), new ApiResponseListener<LotteryResponse>(LotteryResponse.class) { // from class: com.narvii.checkin.lottery.LotteryDialog.5
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, LotteryResponse lotteryResponse) throws Exception {
                super.onFinish(apiRequest, lotteryResponse);
                progressDialog.dismiss();
                LotteryDialog lotteryDialog = LotteryDialog.this;
                lotteryDialog.lotteryResponse = lotteryResponse;
                if (!lotteryDialog.isValidLotteryResponse(lotteryResponse)) {
                    NVToast.makeText(LotteryDialog.this.getContext(), R.string.unknown_lottery_award_type, 0).show();
                    return;
                }
                LotteryDialog lotteryDialog2 = LotteryDialog.this;
                LotteryLog lotteryLog = lotteryDialog2.lotteryResponse.lotteryLog;
                if (lotteryLog.awardType == 2 && lotteryLog.objectType == 113) {
                    ((StickerService) lotteryDialog2.nvContext.getService("sticker")).refreshStickerCollectionInfo(true);
                }
                LotteryDialog.this.startShowResult();
                StatisticsEventBuilder statisticsEventBuilderUserPropInc = ((StatisticsService) LotteryDialog.this.nvContext.getService("statistics")).event("Lucky Draw").userPropInc("Lucky Draw Total");
                int i10 = LotteryDialog.this.lotteryResponse.lotteryLog.awardType;
                if (i10 == 1) {
                    statisticsEventBuilderUserPropInc.userPropInc("Lucky Draw Coin Earned");
                } else if (i10 == 2) {
                    statisticsEventBuilderUserPropInc.userPropInc("Lucky Draw Sticker Earned");
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                Iterator<View> it = LotteryDialog.this.cardList.iterator();
                while (it.hasNext()) {
                    it.next().setOnClickListener(LotteryDialog.this.cardClickListener);
                }
                progressDialog.dismiss();
                boolean z6 = false;
                NVToast.makeText(LotteryDialog.this.getContext(), str, 0).show();
                if (NVApplication.DEBUG) {
                    Iterator<View> it2 = LotteryDialog.this.cardList.iterator();
                    while (it2.hasNext()) {
                        it2.next().setOnClickListener(null);
                    }
                    LotteryDialog.this.lotteryResponse = new LotteryResponse();
                    int iNextInt = new Random().nextInt(3);
                    LotteryDialog.this.lotteryResponse.lotteryLog = new LotteryLog();
                    LotteryLog lotteryLog = LotteryDialog.this.lotteryResponse.lotteryLog;
                    lotteryLog.awardType = iNextInt;
                    if (iNextInt != 1) {
                        if (iNextInt == 2) {
                            Sticker sticker = new Sticker();
                            sticker.icon = "https://s1.altamino.top/image/ljmusu6brr5yulr5kcbby5j4nilelxvm_00.jpg";
                            sticker.name = "haha";
                            LotteryDialog.this.lotteryResponse.lotteryLog.refObject = JacksonUtils.DEFAULT_MAPPER.valueToTree(sticker);
                            LotteryDialog.this.lotteryResponse.lotteryLog.objectType = 113;
                        }
                    } else {
                        lotteryLog.awardValue = new Random().nextInt(20);
                    }
                    LotteryDialog.this.lotteryResponse.wallet = new Wallet();
                    AccountService accountService = (AccountService) LotteryDialog.this.nvContext.getService("account");
                    Wallet wallet = LotteryDialog.this.lotteryResponse.wallet;
                    if (accountService.optinAdsLevel() > 0) {
                        z6 = true;
                    }
                    wallet.adsEnabled = z6;
                    LotteryDialog.this.lotteryResponse.wallet.adsVideoStats = new AdsVideoStats();
                    LotteryDialog lotteryDialog = LotteryDialog.this;
                    AdsVideoStats adsVideoStats = lotteryDialog.lotteryResponse.wallet.adsVideoStats;
                    adsVideoStats.canWatchVideo = true;
                    adsVideoStats.canEarnedCoins = 4;
                    lotteryDialog.startShowResult();
                }
            }
        });
    }

    private void setUpCardBackViews(FlipLayout flipLayout) {
        final Sticker sticker;
        int i10 = this.lotteryResponse.lotteryLog.awardType;
        if (i10 == 0) {
            flipLayout.findViewById(R.id.result_failed).setVisibility(0);
            return;
        }
        if (i10 == 1) {
            flipLayout.findViewById(R.id.result_coins).setVisibility(0);
            ((ImageView) flipLayout.findViewById(R.id.coins_icon)).setImageResource(getCoinIconId());
            ((TextView) flipLayout.findViewById(R.id.coins_count)).setText(this.lotteryResponse.lotteryLog.awardValue + "");
            ((TextView) flipLayout.findViewById(R.id.coins_text)).setText(this.lotteryResponse.lotteryLog.awardValue > 1 ? R.string.coins : R.string.coin);
            return;
        }
        if (i10 != 2) {
            return;
        }
        flipLayout.findViewById(R.id.result_sticker).setVisibility(0);
        LotteryLog lotteryLog = this.lotteryResponse.lotteryLog;
        if (lotteryLog.objectType == 113) {
            try {
                sticker = (Sticker) JacksonUtils.DEFAULT_MAPPER.treeToValue(lotteryLog.refObject, Sticker.class);
            } catch (JsonProcessingException e) {
                e.printStackTrace();
                sticker = null;
            }
            if (sticker != null) {
                ((NVImageView) flipLayout.findViewById(R.id.flip_back_bg)).setShowPressedMask(true);
                flipLayout.findViewById(R.id.flip_back).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.checkin.lottery.d
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2214a.lambda$setUpCardBackViews$4(sticker, view);
                    }
                });
                ((StickerImageView) flipLayout.findViewById(R.id.sticker_image)).setSticker(sticker);
            }
        }
    }

    private boolean showOptinAds() {
        LotteryResponse lotteryResponse;
        Wallet wallet;
        return (OptinAds.forceAds() || !OptinAds.qualified(this.nvContext) || (lotteryResponse = this.lotteryResponse) == null || (wallet = lotteryResponse.wallet) == null || wallet.adsEnabled || this.now - this.accountService.getPrefs().getLong("lottery_ads_last_op_time", 0L) <= DateUtils.getMicroSecondsOfDays(7)) ? false : true;
    }

    @Override // android.app.Dialog
    public void setTitle(int i10) {
        TextView textView = this.titleView;
        if (textView != null) {
            textView.setText(i10);
        }
    }

    public LotteryDialog(NVActivity nVActivity, int i10) {
        super((NVContext) nVActivity, R.style.CustomDialogWithAnimation);
        this.optinAdsAction = null;
        this.rvAction = null;
        this.cardClickListener = new View.OnClickListener() { // from class: com.narvii.checkin.lottery.LotteryDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LotteryDialog lotteryDialog = LotteryDialog.this;
                lotteryDialog.clicked = view;
                lotteryDialog.sendLotteryRequest();
                Iterator<View> it = LotteryDialog.this.cardList.iterator();
                while (it.hasNext()) {
                    it.next().setOnClickListener(null);
                }
            }
        };
        this.nvContext = nVActivity;
        this.accountService = (AccountService) nVActivity.getService("account");
        this.cid = i10;
        setContentView(R.layout.dialog_lottery);
        TintButton tintButton = (TintButton) findViewById(R.id.close);
        tintButton.setTintColor(-1);
        tintButton.setOnClickListener(this);
        this.titleView = (TextView) findViewById(R.id.title);
        setTitle(R.string.daily_lucky_draw);
        ((TextView) findViewById(R.id.get_free_icons)).setOnClickListener(this);
        setupCardViews();
    }

    private void hideCloseButton(boolean z6) {
        ViewUtils.show(findViewById(R.id.close), !z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateResultLayout$3() {
        GradientView gradientView = (GradientView) findViewById(R.id.ads_gradient);
        gradientView.setColor(-8137, -18649);
        gradientView.setRadius(Utils.dpToPx(getContext(), 10.0f));
        ViewUtils.fastFadeShow(findViewById(R.id.ads_card));
        findViewById(R.id.ads_enable_no).setOnClickListener(this);
        findViewById(R.id.ads_enable_yes).setOnClickListener(this);
        this.optinAdsAction = "Dismiss";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFlipEnded(int i10) {
        int i11;
        if (!isShowing()) {
            return;
        }
        setTitle(getResultTitle());
        updateResultLayout();
        if (this.lotteryResponse.lotteryLog.awardType != 0) {
            ViewUtils.fadeShow(findViewById(R.id.award_light));
        }
        if (this.lotteryResponse.lotteryLog.awardType == 1) {
            MembershipService membershipService = (MembershipService) this.nvContext.getService("membership");
            TextView textView = (TextView) findViewById(R.id.balance);
            textView.setMaxWidth((int) Math.max((int) (((findViewById(R.id.lottery_background).getWidth() - i10) / 2) - Utils.dpToPx(getContext(), 55.0f)), Utils.dpToPx(getContext(), 30.0f)));
            int iWalletBalance = membershipService.walletBalance();
            if (iWalletBalance < 0) {
                iWalletBalance = 0;
            }
            membershipService.refreshWallet(true);
            textView.setText(TextUtils.numberFormat.format(iWalletBalance));
            View viewFindViewById = findViewById(R.id.coins_bar);
            if (Utils.isRtl()) {
                i11 = R.drawable.lottery_balance_bar_bg_rtl;
            } else {
                i11 = R.drawable.lottery_balance_bar_bg;
            }
            viewFindViewById.setBackgroundResource(i11);
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.checkin.lottery.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f2211a.lambda$onFlipEnded$2(view);
                }
            });
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.fade_in);
            animationLoadAnimation.setAnimationListener(new AnonymousClass4(iWalletBalance, textView));
            viewFindViewById.setVisibility(0);
            viewFindViewById.startAnimation(animationLoadAnimation);
        }
    }

    private void onOptinAdsEnabled() {
        findViewById(R.id.ads_enable_layout).setVisibility(8);
        findViewById(R.id.ads_enabled_layout).setVisibility(0);
        TextView textView = (TextView) findViewById(R.id.ads_enabled_tv);
        String string = getContext().getString(R.string.wallet);
        NVText nVText = new NVText(getContext().getString(R.string.track_coins_in_wallet, string));
        nVText.markText(string, new OnTagClickListener() { // from class: com.narvii.checkin.lottery.c
            @Override // com.narvii.util.text.OnTagClickListener
            public final void onClick(View view, NVText nVText2, int i10, String str) {
                this.f2213a.lambda$onOptinAdsEnabled$1(view, nVText2, i10, str);
            }
        });
        textView.setClickable(true);
        textView.setMovementMethod(LinkTouchMovementMethod.getInstance());
        textView.setText(nVText, TextView.BufferType.SPANNABLE);
        hideCloseButton(false);
    }

    private void setupCardViews() {
        this.card1 = findViewById(R.id.card1);
        this.card2 = findViewById(R.id.card2);
        this.card3 = findViewById(R.id.card3);
        ArrayList arrayList = new ArrayList();
        this.cardList = arrayList;
        arrayList.add(this.card1);
        this.cardList.add(this.card2);
        this.cardList.add(this.card3);
        Iterator<View> it = this.cardList.iterator();
        while (it.hasNext()) {
            it.next().setOnClickListener(this.cardClickListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startShowResult() {
        findViewById(R.id.tap_to_open).setVisibility(8);
        int x6 = (int) (this.card2.getX() - this.clicked.getX());
        float width = this.clicked.getWidth();
        float f = 1.2f;
        float f6 = width * 1.2f * 1.5f;
        float fDpToPx = (int) Utils.dpToPx(getContext(), 125.0f);
        if (f6 < fDpToPx) {
            f = (fDpToPx / 1.5f) / width;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.clicked, "scaleX", 1.0f, f)).with(ObjectAnimator.ofFloat(this.clicked, "scaleY", 1.0f, f)).with(ObjectAnimator.ofFloat(this.clicked, "translationX", 0.0f, x6));
        animatorSet.setDuration(400L);
        animatorSet.start();
        FlipLayout flipLayout = (FlipLayout) findViewById(R.id.flip_layout);
        float f7 = width * f;
        int i10 = (int) f7;
        flipLayout.getLayoutParams().width = i10;
        flipLayout.getLayoutParams().height = (int) (f7 * 1.5f);
        flipLayout.requestLayout();
        setUpCardBackViews(flipLayout);
        for (View view : this.cardList) {
            if (view != this.clicked) {
                view.setVisibility(4);
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(view.getContext(), R.anim.fade_out);
                animationLoadAnimation.setDuration(200L);
                view.startAnimation(animationLoadAnimation);
            }
        }
        animatorSet.addListener(new AnonymousClass3(flipLayout, i10));
    }

    private void updateResultLayout() {
        this.now = System.currentTimeMillis();
        if (showOptinAds()) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.checkin.lottery.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2212a.lambda$updateResultLayout$3();
                }
            }, 500L);
            hideCloseButton(true);
        } else {
            ViewUtils.fadeShow(findViewById(R.id.result_bottom));
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
        } catch (Exception unused) {
        }
        if (this.optinAdsAction != null) {
            ((StatisticsService) this.nvContext.getService("statistics")).event("Lucky Draw Optin Ads").param("Action", this.optinAdsAction);
        }
        if (this.rvAction != null) {
            ((StatisticsService) this.nvContext.getService("statistics")).event("Lucky Draw RV").param("Action", this.rvAction);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ads_enable_no /* 2131361965 */:
                sendButtonClickLog("RefuseAds");
                this.optinAdsAction = "No";
                recordOptInAdsOpTime();
                dismiss();
                break;
            case R.id.ads_enable_yes /* 2131361966 */:
                sendButtonClickLog("TurnOnAds");
                this.optinAdsAction = "Yes";
                recordOptInAdsOpTime();
                optinAds();
                break;
            case R.id.close /* 2131362593 */:
                dismiss();
                break;
            case R.id.get_free_icons /* 2131363349 */:
                Intent intent = FragmentWrapperActivity.intent(WalletRecyclerFragment.class);
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Lucky Draw Get Free Icons");
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.nvContext.getContext(), intent);
                dismiss();
                break;
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        super.show();
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(300L);
        View viewFindViewById = findViewById(R.id.bg);
        if (viewFindViewById != null) {
            viewFindViewById.startAnimation(alphaAnimation);
        }
        final View viewFindViewById2 = findViewById(R.id.main_layout);
        if (viewFindViewById2 != null) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.dialog_in_popup_bounce);
            animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.checkin.lottery.LotteryDialog.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(LotteryDialog.this.getContext(), R.anim.dialog_in_popup_bounce_2);
                    animationLoadAnimation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.checkin.lottery.LotteryDialog.2.1
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation2) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation2) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation2) {
                            ((LotteryBackgroundView) LotteryDialog.this.findViewById(R.id.lottery_background)).revertLayerType();
                        }
                    });
                    viewFindViewById2.startAnimation(animationLoadAnimation2);
                }
            });
            viewFindViewById2.startAnimation(animationLoadAnimation);
        }
    }
}
