package com.narvii.checkin.lottery;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.narvii.account.AccountService;
import com.narvii.ads.Ads;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.Sticker;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.bubble.PickChatThreadListFragment;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.NVText;
import com.narvii.util.text.OnTagClickListener;
import com.narvii.util.text.TextUtils;
import com.narvii.util.ws.WsMessage;
import com.narvii.wallet.AdsVendor;
import com.narvii.wallet.AdsVideoStats;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.RewardVideoHelper;
import com.narvii.wallet.Wallet;
import com.narvii.wallet.WalletRecyclerFragment;
import com.narvii.widget.FlipLayout;
import com.narvii.widget.GradientView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* loaded from: classes2.dex */
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
    Runnable delayCloseRunnable;
    LotteryResponse lotteryResponse;
    private long now;
    NVContext nvContext;
    String optinAdsAction;
    RewardVideoHelper rewardVideoHelper;
    String rvAction;
    TextView titleView;

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "LuckyDraw";
    }

    public LotteryDialog(NVActivity nVActivity, int i) {
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
        this.cid = i;
        setContentView(R.layout.dialog_lottery);
        TintButton tintButton = (TintButton) findViewById(R.id.close);
        tintButton.setTintColor(-1);
        tintButton.setOnClickListener(this);
        this.titleView = (TextView) findViewById(R.id.title);
        setTitle(R.string.daily_lucky_draw);
        ((TextView) findViewById(R.id.get_free_icons)).setOnClickListener(this);
        setupCardViews();
    }

    /* renamed from: com.narvii.checkin.lottery.LotteryDialog$2, reason: invalid class name */
    class AnonymousClass2 extends RewardVideoHelper {
        final /* synthetic */ NVActivity val$nvContext;

        @Override // com.narvii.wallet.RewardVideoHelper
        protected boolean autoLoadNextRewardVideo() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(NVContext nVContext, AdsVendor adsVendor, NVActivity nVActivity) {
            super(nVContext, adsVendor);
            this.val$nvContext = nVActivity;
        }

        @Override // com.narvii.wallet.RewardVideoHelper
        protected void onDelayClose() {
            super.onDelayClose();
            LotteryDialog.this.dismiss();
        }

        @Override // com.narvii.wallet.RewardVideoHelper
        protected void onRewardVideoOpened(long j) {
            super.onRewardVideoOpened(j);
            LotteryDialog.this.sendButtonClickLog("ClaimRewardVideo");
        }
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        TextView textView = this.titleView;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        TextView textView = this.titleView;
        if (textView != null) {
            textView.setText(i);
        }
    }

    private void setupCardViews() {
        this.card1 = findViewById(R.id.card1);
        this.card2 = findViewById(R.id.card2);
        this.card3 = findViewById(R.id.card3);
        this.cardList = new ArrayList();
        this.cardList.add(this.card1);
        this.cardList.add(this.card2);
        this.cardList.add(this.card3);
        Iterator<View> it = this.cardList.iterator();
        while (it.hasNext()) {
            it.next().setOnClickListener(this.cardClickListener);
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() throws Resources.NotFoundException {
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
            animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.checkin.lottery.LotteryDialog.3
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) throws Resources.NotFoundException {
                    Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(LotteryDialog.this.getContext(), R.anim.dialog_in_popup_bounce_2);
                    animationLoadAnimation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.checkin.lottery.LotteryDialog.3.1
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

    private void recordOptInAdsOpTime() {
        this.accountService.getPrefs().edit().putLong("lottery_ads_last_op_time", System.currentTimeMillis()).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendButtonClickLog(String str) {
        LogEvent.clickBuilder(this, ActSemantic.wildcard).area(str).send();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ads_enable_no /* 2131296372 */:
                sendButtonClickLog("RefuseAds");
                this.optinAdsAction = "No";
                recordOptInAdsOpTime();
                dismiss();
                return;
            case R.id.ads_enable_yes /* 2131296373 */:
                sendButtonClickLog("TurnOnAds");
                this.optinAdsAction = "Yes";
                recordOptInAdsOpTime();
                optinAds();
                return;
            case R.id.close /* 2131296862 */:
                break;
            case R.id.get_free_icons /* 2131297484 */:
                Intent intent = FragmentWrapperActivity.intent(WalletRecyclerFragment.class);
                intent.putExtra("Source", "Lucky Draw Get Free Icons");
                this.nvContext.getContext().startActivity(intent);
                dismiss();
                return;
            case R.id.watch_video_no /* 2131299582 */:
                this.rvAction = "No";
                sendButtonClickLog("RefuseRewardVideo");
                break;
            case R.id.watch_video_yes /* 2131299583 */:
                this.rvAction = null;
                this.rewardVideoHelper.startRewardVideo();
                return;
            default:
                return;
        }
        dismiss();
    }

    /* renamed from: com.narvii.checkin.lottery.LotteryDialog$4, reason: invalid class name */
    class AnonymousClass4 implements Callback<AccountResponse> {
        AnonymousClass4() {
        }

        @Override // com.narvii.util.Callback
        public void call(AccountResponse accountResponse) {
            if (accountResponse != null) {
                LotteryDialog.this.onOptinAdsEnabled();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onOptinAdsEnabled() {
        findViewById(R.id.ads_enable_layout).setVisibility(8);
        findViewById(R.id.ads_enabled_layout).setVisibility(0);
        TextView textView = (TextView) findViewById(R.id.ads_enabled_tv);
        String string = getContext().getString(R.string.wallet);
        NVText nVText = new NVText(getContext().getString(R.string.track_coins_in_wallet, string));
        nVText.markText(string, new OnTagClickListener() { // from class: com.narvii.checkin.lottery.LotteryDialog.5
            @Override // com.narvii.util.text.OnTagClickListener
            public void onClick(View view, NVText nVText2, int i, String str) {
                LotteryDialog.this.nvContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("ndc://wallet")));
                LotteryDialog.this.dismiss();
            }
        });
        textView.setClickable(true);
        textView.setMovementMethod(LinkTouchMovementMethod.getInstance());
        textView.setText(nVText, TextView.BufferType.SPANNABLE);
        hideCloseButton(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startShowResult() throws Resources.NotFoundException {
        findViewById(R.id.tap_to_open).setVisibility(8);
        int x = (int) (this.card2.getX() - this.clicked.getX());
        float width = this.clicked.getWidth();
        float f = width * 1.2f * 1.5f;
        float fDpToPx = (int) Utils.dpToPx(getContext(), 125.0f);
        float f2 = f < fDpToPx ? (fDpToPx / 1.5f) / width : 1.2f;
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.clicked, "scaleX", 1.0f, f2)).with(ObjectAnimator.ofFloat(this.clicked, "scaleY", 1.0f, f2)).with(ObjectAnimator.ofFloat(this.clicked, "translationX", 0.0f, x));
        animatorSet.setDuration(400L);
        animatorSet.start();
        final FlipLayout flipLayout = (FlipLayout) findViewById(R.id.flip_layout);
        float f3 = width * f2;
        final int i = (int) f3;
        flipLayout.getLayoutParams().width = i;
        flipLayout.getLayoutParams().height = (int) (f3 * 1.5f);
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
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.checkin.lottery.LotteryDialog.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                flipLayout.setVisibility(0);
                LotteryDialog.this.clicked.setVisibility(4);
                flipLayout.flip();
                flipLayout.setFlipListener(new FlipLayout.FlipListener() { // from class: com.narvii.checkin.lottery.LotteryDialog.6.1
                    @Override // com.narvii.widget.FlipLayout.FlipListener
                    public void onFlipEnd(FlipLayout flipLayout2, boolean z) throws Resources.NotFoundException {
                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                        LotteryDialog.this.onFlipEnded(i);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFlipEnded(int i) throws Resources.NotFoundException {
        if (isShowing()) {
            setTitle(getResultTitle());
            if (this.lotteryResponse.lotteryLog.awardType != 0) {
                ViewUtils.fadeShow(findViewById(R.id.award_light));
            }
            if (this.lotteryResponse.lotteryLog.awardType == 1) {
                MembershipService membershipService = (MembershipService) this.nvContext.getService("membership");
                final TextView textView = (TextView) findViewById(R.id.balance);
                textView.setMaxWidth((int) Math.max((int) (((findViewById(R.id.lottery_background).getWidth() - i) / 2) - Utils.dpToPx(getContext(), 55.0f)), Utils.dpToPx(getContext(), 30.0f)));
                final int iWalletBalance = membershipService.walletBalance();
                if (iWalletBalance < 0) {
                    iWalletBalance = 0;
                }
                membershipService.refreshWallet(true);
                textView.setText(TextUtils.numberFormat.format(iWalletBalance));
                View viewFindViewById = findViewById(R.id.coins_bar);
                viewFindViewById.setBackgroundResource(Utils.isRtl() ? R.drawable.lottery_balance_bar_bg_rtl : R.drawable.lottery_balance_bar_bg);
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.checkin.lottery.LotteryDialog.7
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        Intent intent = FragmentWrapperActivity.intent(WalletRecyclerFragment.class);
                        intent.putExtra("Source", "Lucky Draw");
                        LotteryDialog.this.nvContext.getContext().startActivity(intent);
                        LotteryDialog.this.dismiss();
                    }
                });
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.fade_in);
                animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.checkin.lottery.LotteryDialog.8
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        final TextView textView2 = (TextView) LotteryDialog.this.findViewById(R.id.added_coins);
                        int i2 = LotteryDialog.this.lotteryResponse.lotteryLog.awardValue;
                        textView2.setText("+" + i2);
                        textView2.setVisibility(0);
                        final int iMin = Math.min(WsMessage.LIVE_LAYER_USER_JOINED_EVENT, i2 * 50);
                        final ViewPropertyAnimator duration = textView2.animate().translationY(-Utils.dpToPx(LotteryDialog.this.getContext(), 20.0f)).setDuration(400L);
                        duration.setListener(new AnimatorListenerAdapter() { // from class: com.narvii.checkin.lottery.LotteryDialog.8.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                duration.setListener(null);
                                textView2.animate().translationY(-Utils.dpToPx(LotteryDialog.this.getContext(), 80.0f)).setStartDelay(iMin).setInterpolator(new AnticipateInterpolator(1.0f)).setDuration(300L).start();
                            }
                        });
                        duration.start();
                        int i3 = iWalletBalance;
                        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i3, i3 + i2);
                        valueAnimatorOfInt.setDuration(iMin);
                        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.checkin.lottery.LotteryDialog.8.2
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                                textView.setText(TextUtils.numberFormat.format(((Integer) valueAnimator.getAnimatedValue()).intValue()));
                            }
                        });
                        valueAnimatorOfInt.setStartDelay(400L);
                        valueAnimatorOfInt.start();
                    }
                });
                viewFindViewById.setVisibility(0);
                viewFindViewById.startAnimation(animationLoadAnimation);
            }
        }
    }

    /* renamed from: com.narvii.checkin.lottery.LotteryDialog$9, reason: invalid class name */
    class AnonymousClass9 implements Runnable {
        AnonymousClass9() {
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            GradientView gradientView = (GradientView) LotteryDialog.this.findViewById(R.id.ads_gradient);
            gradientView.setColor(-8137, -18649);
            gradientView.setRadius(Utils.dpToPx(LotteryDialog.this.getContext(), 10.0f));
            ViewUtils.fastFadeShow(LotteryDialog.this.findViewById(R.id.ads_card));
            LotteryDialog.this.findViewById(R.id.ads_enable_no).setOnClickListener(LotteryDialog.this);
            LotteryDialog.this.findViewById(R.id.ads_enable_yes).setOnClickListener(LotteryDialog.this);
            LotteryDialog.this.optinAdsAction = "Dismiss";
        }
    }

    /* renamed from: com.narvii.checkin.lottery.LotteryDialog$10, reason: invalid class name */
    class AnonymousClass10 implements Runnable {
        AnonymousClass10() {
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            TextView textView = (TextView) LotteryDialog.this.findViewById(R.id.reward_video_title);
            int iIntValue = LotteryDialog.this.lotteryResponse.wallet.adsVideoStats.canEarnedCoins;
            if (Ads.overrideRewardCoins() != null) {
                iIntValue = Ads.overrideRewardCoins().intValue();
            }
            if (iIntValue > 0) {
                textView.setText(TextUtils.getCountText(LotteryDialog.this.getContext(), iIntValue, R.string.claim_video_reward_one_coin, R.string.claim_video_reward_n_coions));
            } else {
                textView.setText(R.string.claim_video_reward_no_coin);
            }
            GradientView gradientView = (GradientView) LotteryDialog.this.findViewById(R.id.video_gradient);
            gradientView.setColor(-6559734, -16733696);
            gradientView.setRadius(Utils.dpToPx(LotteryDialog.this.getContext(), 10.0f));
            ViewUtils.fastFadeShow(LotteryDialog.this.findViewById(R.id.video_card));
            LotteryDialog.this.findViewById(R.id.watch_video_no).setOnClickListener(LotteryDialog.this);
            LotteryDialog.this.findViewById(R.id.watch_video_yes).setOnClickListener(LotteryDialog.this);
            LotteryDialog.this.rvAction = "Dismiss";
        }
    }

    private void hideCloseButton(boolean z) {
        ViewUtils.show(findViewById(R.id.close), !z);
    }

    private void setUpCardBackViews(FlipLayout flipLayout) {
        final Sticker sticker;
        int i = this.lotteryResponse.lotteryLog.awardType;
        if (i == 0) {
            flipLayout.findViewById(R.id.result_failed).setVisibility(0);
            return;
        }
        if (i == 1) {
            flipLayout.findViewById(R.id.result_coins).setVisibility(0);
            ((ImageView) flipLayout.findViewById(R.id.coins_icon)).setImageResource(getCoinIconId());
            ((TextView) flipLayout.findViewById(R.id.coins_count)).setText(this.lotteryResponse.lotteryLog.awardValue + "");
            ((TextView) flipLayout.findViewById(R.id.coins_text)).setText(this.lotteryResponse.lotteryLog.awardValue > 1 ? R.string.coins : R.string.coin);
            return;
        }
        if (i != 2) {
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
                flipLayout.findViewById(R.id.flip_back).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.checkin.lottery.LotteryDialog.11
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        Intent intent = FragmentWrapperActivity.intent(PickChatThreadListFragment.class);
                        intent.putExtra("stickerCollectionId", sticker.stickerCollectionId);
                        intent.putExtra("__communityId", LotteryDialog.this.cid);
                        LotteryDialog.this.nvContext.getContext().startActivity(intent);
                        LotteryDialog.this.dismiss();
                    }
                });
                ((StickerImageView) flipLayout.findViewById(R.id.sticker_image)).setSticker(sticker);
            }
        }
    }

    private int getCoinIconId() {
        int i = this.lotteryResponse.lotteryLog.awardValue;
        return i == 2 ? R.drawable.ic_lottery_result_two_coins : i > 2 ? R.drawable.ic_lottery_result_n_coins : R.drawable.ic_lottery_result_one_coin;
    }

    private String getResultTitle() {
        String string = this.nvContext.getContext().getString(R.string.better_luck_next_time);
        LotteryLog lotteryLog = this.lotteryResponse.lotteryLog;
        int i = lotteryLog.awardType;
        if (i == 0) {
            return this.nvContext.getContext().getString(R.string.better_luck_next_time);
        }
        if (i != 1) {
            return (i == 2 && lotteryLog.objectType == 113) ? this.nvContext.getContext().getString(R.string.got_one_sticker) : string;
        }
        return TextUtils.getCountText(getContext(), this.lotteryResponse.lotteryLog.awardValue, R.string.got_one_coin, R.string.got_n_coins);
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidLotteryResponse(LotteryResponse lotteryResponse) {
        int i;
        LotteryLog lotteryLog = lotteryResponse.lotteryLog;
        if (lotteryLog != null && (i = lotteryLog.awardType) <= 2) {
            return i != 2 || lotteryLog.objectType == 113;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLotteryRequest() {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().post().path("check-in/lottery").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).communityId(this.cid).build(), new ApiResponseListener<LotteryResponse>(LotteryResponse.class) { // from class: com.narvii.checkin.lottery.LotteryDialog.12
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, LotteryResponse lotteryResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) lotteryResponse);
                progressDialog.dismiss();
                LotteryDialog lotteryDialog = LotteryDialog.this;
                lotteryDialog.lotteryResponse = lotteryResponse;
                if (lotteryDialog.isValidLotteryResponse(lotteryResponse)) {
                    LotteryDialog lotteryDialog2 = LotteryDialog.this;
                    LotteryLog lotteryLog = lotteryDialog2.lotteryResponse.lotteryLog;
                    if (lotteryLog.awardType == 2 && lotteryLog.objectType == 113) {
                        ((StickerService) lotteryDialog2.nvContext.getService("sticker")).refreshStickerCollectionInfo(true);
                    }
                    LotteryDialog.this.startShowResult();
                    return;
                }
                NVToast.makeText(LotteryDialog.this.getContext(), R.string.unknown_lottery_award_type, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) throws Resources.NotFoundException {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                Iterator<View> it = LotteryDialog.this.cardList.iterator();
                while (it.hasNext()) {
                    it.next().setOnClickListener(LotteryDialog.this.cardClickListener);
                }
                progressDialog.dismiss();
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
                    if (iNextInt != 0) {
                        if (iNextInt == 1) {
                            lotteryLog.awardValue = new Random().nextInt(4096);
                        } else if (iNextInt == 2) {
                            Sticker sticker = new Sticker();
                            sticker.icon = "https://external-preview.redd.it/vM6hGnWv8oiEMBbaiepYuvaqmGueqgDtaVlDrTIlhY0.png?auto=webp&s=fe9c580612ee0193a44c370c214533c070c58ffe";
                            sticker.name = "Dont run away";
                            LotteryDialog.this.lotteryResponse.lotteryLog.refObject = JacksonUtils.DEFAULT_MAPPER.valueToTree(sticker);
                            LotteryDialog.this.lotteryResponse.lotteryLog.objectType = 113;
                        }
                    }
                    LotteryDialog.this.lotteryResponse.wallet = new Wallet();
                    AccountService accountService = (AccountService) LotteryDialog.this.nvContext.getService("account");
                    LotteryDialog.this.lotteryResponse.wallet.adsEnabled = accountService.optinAdsLevel() > 0;
                    LotteryDialog.this.lotteryResponse.wallet.adsVideoStats = new AdsVideoStats();
                    AdsVideoStats adsVideoStats = LotteryDialog.this.lotteryResponse.wallet.adsVideoStats;
                    adsVideoStats.canWatchVideo = true;
                    adsVideoStats.canEarnedCoins = 4;
                    LotteryDialog.this.startShowResult();
                }
            }
        });
    }
}
