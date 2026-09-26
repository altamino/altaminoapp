package com.narvii.achievements;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.SpannableString;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.DrawerActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.checkin.CheckInHelper;
import com.narvii.checkin.CheckInHistoryResponse;
import com.narvii.checkin.CheckInStreakRepairLayout;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.membership.MembershipHelper;
import com.narvii.model.CheckInHistory;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.Constants;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.CheckDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.LinkTouchSpan;
import com.narvii.util.text.NVText;
import com.narvii.util.text.OnTagClickListener;
import com.narvii.util.text.TextUtils;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.PurchaseCoinFragment;
import com.narvii.wallet.membership.MembershipActivity;
import com.narvii.widget.SemiProgressDrawable;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class StreakRepairDialog extends NVDialog implements View.OnClickListener {
    private static final int CHOICE_1 = 1;
    private static final int CHOICE_2 = 2;
    private static final int REPAIR_METHOD_COIN = 1;
    private static final int REPAIR_METHOD_MEMBERSHIP = 2;
    boolean anyFixed;
    ApiService apiService;
    private View btnClose;
    private View btnFixRepair;
    CheckInHistory checkInHistory;
    private View choice1Container;
    private View choice2Container;
    private CheckBox chxChoice1;
    private CheckBox chxChoice2;
    private View content;
    private NVContext ctx;
    private int curChoice;
    private TextView earnFreeCoins;
    private View fixContainer1;
    private View fixContainerFixing;
    private boolean isFixing;
    private boolean isStrikeRepairFinished;
    LocalBroadcastManager localBroadcastManager;
    MembershipService membershipService;
    private View ongoingContainer;
    BroadcastReceiver receiver;
    private View repairDoneContainer;
    ApiRequest repairStreakRequest;
    private View root;
    private SemiProgressDrawable semiProgressDrawable;
    private boolean showingFixAnimation;
    public String source;
    CheckInStreakRepairLayout streakRepairLayout;
    StreakRepairListener streakRepairListener;
    TextView tvChoiceHint2;
    private TextView tvLearnMore;
    BroadcastReceiver walletChangeReceiver;

    public interface StreakRepairListener {
        void onSteakRepairFinished();
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "check_in_streak_fix";
    }

    public void setStreakRepairListener(StreakRepairListener streakRepairListener) {
        this.streakRepairListener = streakRepairListener;
    }

    private void fixStreak() {
        if (this.repairStreakRequest != null || this.showingFixAnimation) {
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.purchase).area("PurchaseButton").extraParam("purchaseType", this.curChoice == 1 ? "free" : "useCoins").send();
        this.isFixing = true;
        updateViewsWhenCheckBoxChange();
        int timeZoneInMin = Utils.getTimeZoneInMin();
        int i10 = this.curChoice == 1 ? 2 : 1;
        ApiRequest.Builder builder = new ApiRequest.Builder();
        builder.path("/check-in/repair").post();
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("timezone", timeZoneInMin);
        objectNodeCreateObjectNode.put("repairMethod", i10);
        builder.body(objectNodeCreateObjectNode);
        ApiRequest apiRequestBuild = builder.build();
        this.repairStreakRequest = apiRequestBuild;
        this.apiService.exec(apiRequestBuild, new ApiResponseListener<CheckInHistoryResponse>(CheckInHistoryResponse.class) { // from class: com.narvii.achievements.StreakRepairDialog.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, final CheckInHistoryResponse checkInHistoryResponse) throws Exception {
                super.onFinish(apiRequest, checkInHistoryResponse);
                StreakRepairDialog.this.isFixing = false;
                StreakRepairDialog streakRepairDialog = StreakRepairDialog.this;
                streakRepairDialog.repairStreakRequest = null;
                if (streakRepairDialog.streakRepairLayout != null) {
                    streakRepairDialog.showingFixAnimation = true;
                    StreakRepairDialog.this.streakRepairLayout.startFixAnimation(new Callback() { // from class: com.narvii.achievements.StreakRepairDialog.4.1
                        @Override // com.narvii.util.Callback
                        public void call(Object obj) {
                            AccountService accountService = (AccountService) StreakRepairDialog.this.ctx.getService("account");
                            CheckInHistoryResponse checkInHistoryResponse2 = checkInHistoryResponse;
                            accountService.updateCheckInHistoryInfo(checkInHistoryResponse2.checkInHistory, checkInHistoryResponse2.timestamp, true);
                            CheckInHistoryResponse checkInHistoryResponse3 = checkInHistoryResponse;
                            CheckInHistory checkInHistory = checkInHistoryResponse3.checkInHistory;
                            accountService.updateCheckInInfo(checkInHistory.hasCheckInToday, checkInHistory.consecutiveCheckInDays, checkInHistoryResponse3.timestamp, true);
                            LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(StreakRepairDialog.this.getContext());
                            Intent intent = new Intent(Constants.ACTION_STREAK_REPAIR_SUCCESS);
                            intent.putExtra(CmcdConfiguration.KEY_CONTENT_ID, ((ConfigService) StreakRepairDialog.this.ctx.getService("config")).getCommunityId());
                            localBroadcastManagerB.d(intent);
                            StreakRepairListener streakRepairListener = StreakRepairDialog.this.streakRepairListener;
                            if (streakRepairListener != null) {
                                streakRepairListener.onSteakRepairFinished();
                            }
                            if (StreakRepairDialog.this.isShowing()) {
                                StreakRepairDialog streakRepairDialog2 = StreakRepairDialog.this;
                                streakRepairDialog2.checkInHistory = checkInHistoryResponse.checkInHistory;
                                streakRepairDialog2.showingFixAnimation = false;
                                StreakRepairDialog.this.updateViewsWhenCheckBoxChange();
                                StreakRepairDialog streakRepairDialog3 = StreakRepairDialog.this;
                                streakRepairDialog3.anyFixed = true;
                                StreakRepairDialog.this.streakRepairLayout.updateCells(new CheckInHelper(streakRepairDialog3.ctx).getStreakRepairCellList(checkInHistoryResponse.checkInHistory));
                                StreakRepairDialog.this.updateContainers();
                                CheckDialog checkDialog = new CheckDialog(StreakRepairDialog.this.ctx.getContext());
                                checkDialog.setText(StreakRepairDialog.this.ctx.getContext().getString(R.string.fixed));
                                checkDialog.show();
                            }
                        }
                    });
                }
                LogEvent.clickBuilder(StreakRepairDialog.this, ActSemantic.purchaseSuccess).area("PurchaseButton").extraParam("purchaseType", StreakRepairDialog.this.curChoice == 1 ? "free" : "useCoins").send();
                StatisticsEventBuilder statisticsEventBuilderEvent = ((StatisticsService) Utils.getNVContext(StreakRepairDialog.this.getContext()).getService("statistics")).event("Streak Repairs");
                statisticsEventBuilderEvent.param("Payment", StreakRepairDialog.this.curChoice == 1 ? "Amino+ Membership" : "Coins");
                statisticsEventBuilderEvent.param("Result", "Succeed");
                statisticsEventBuilderEvent.userPropInc(StreakRepairDialog.this.curChoice == 1 ? "Streak Repair (Membership) Total" : "Streak Repair (Coins) Totals");
                statisticsEventBuilderEvent.userPropInc("Streak Repair Total");
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                String str2;
                super.onFail(apiRequest, i11, list, str, apiResponse, th);
                StreakRepairDialog.this.isFixing = false;
                StreakRepairDialog streakRepairDialog = StreakRepairDialog.this;
                streakRepairDialog.repairStreakRequest = null;
                if (i11 == 4300) {
                    streakRepairDialog.showCoinNotEnoughDialog();
                } else {
                    NVToast.makeText(streakRepairDialog.getContext(), str, 1).show();
                }
                StreakRepairDialog.this.updateViewsWhenCheckBoxChange();
                StatisticsEventBuilder statisticsEventBuilderEvent = ((StatisticsService) Utils.getNVContext(StreakRepairDialog.this.getContext()).getService("statistics")).event("Streak Repairs");
                if (StreakRepairDialog.this.curChoice == 1) {
                    str2 = "Amino+ Membership";
                } else {
                    str2 = "Coins";
                }
                statisticsEventBuilderEvent.param("Payment", str2);
                statisticsEventBuilderEvent.param("Result", "Failed");
                statisticsEventBuilderEvent.userPropInc("Streak Repair Failed Totals");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateEarnFreeCoinsContent$0(View view, NVText nVText, int i10, String str) {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("GetCoinsButton").send();
        PurchaseCoinFragment.show(this.ctx, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCoinNotEnoughDialog() {
        PurchaseCoinFragment.show(this.ctx, true);
    }

    private void skipDetachNextPause() {
        NVContext nVContext = this.ctx;
        if (nVContext == null) {
            return;
        }
        Context context = nVContext.getContext();
        if (context instanceof DrawerActivity) {
            ((DrawerActivity) context).setSkipDetachNextPause(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEarnFreeCoinsContent() {
        String string = this.ctx.getContext().getString(R.string.membership_owned_coins, TextUtils.numberFormat.format(this.membershipService.walletBalance()));
        String string2 = this.ctx.getContext().getString(R.string.tipping_dialog_get_coins);
        NVText nVText = new NVText(string + " " + string2);
        nVText.markText(string2, new OnTagClickListener() { // from class: com.narvii.achievements.a
            @Override // com.narvii.util.text.OnTagClickListener
            public final void onClick(View view, NVText nVText2, int i10, String str) {
                this.f1788a.lambda$updateEarnFreeCoinsContent$0(view, nVText2, i10, str);
            }
        });
        this.earnFreeCoins.setClickable(true);
        this.earnFreeCoins.setMovementMethod(LinkTouchMovementMethod.getInstance());
        this.earnFreeCoins.setText(nVText, TextView.BufferType.SPANNABLE);
    }

    private void updatePrice() {
        TextView textView = this.tvChoiceHint2;
        if (textView == null || this.checkInHistory == null) {
            return;
        }
        textView.setText("" + this.checkInHistory.streakRepairCoinCost);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViewsWhenCheckBoxChange() {
        this.chxChoice1.setChecked(this.curChoice == 1);
        this.chxChoice2.setChecked(this.curChoice == 2);
        this.choice1Container.setClickable(!this.isFixing);
        this.choice2Container.setClickable(!this.isFixing);
        if (this.isFixing) {
            this.semiProgressDrawable.start();
        } else {
            this.semiProgressDrawable.stop();
        }
        this.fixContainerFixing.setVisibility(this.isFixing ? 0 : 4);
        this.fixContainer1.setVisibility(this.isFixing ? 4 : 0);
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.anyFixed) {
            LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(getContext());
            Intent intent = new Intent(Constants.ACTION_STREAK_REPAIR_CHANGED);
            intent.putExtra(CmcdConfiguration.KEY_CONTENT_ID, ((ConfigService) this.ctx.getService("config")).getCommunityId());
            localBroadcastManagerB.d(intent);
        }
        this.content.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.slide_out_bottom));
        super.dismiss();
    }

    public StreakRepairDialog(@NonNull NVContext nVContext, CheckInHistory checkInHistory) {
        super(nVContext, R.style.CustomDialogWithAnimation);
        this.curChoice = 1;
        this.localBroadcastManager = LocalBroadcastManager.b(getContext());
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.achievements.StreakRepairDialog.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction())) {
                    StreakRepairDialog.this.updateViewsWhenCheckBoxChange();
                }
            }
        };
        this.walletChangeReceiver = new BroadcastReceiver() { // from class: com.narvii.achievements.StreakRepairDialog.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                StreakRepairDialog.this.updateEarnFreeCoinsContent();
            }
        };
        this.ctx = nVContext;
        this.checkInHistory = checkInHistory;
        setContentView(R.layout.dialog_streak_repair);
        this.membershipService = (MembershipService) nVContext.getService("membership");
        this.apiService = (ApiService) nVContext.getService("api");
        findViewById(R.id.root).setOnClickListener(this);
        findViewById(R.id.content).setOnClickListener(this);
        this.choice1Container = findViewById(R.id.choice_1);
        this.choice2Container = findViewById(R.id.choice_2);
        this.choice1Container.setOnClickListener(this);
        this.choice2Container.setOnClickListener(this);
        this.chxChoice1 = (CheckBox) findViewById(R.id.choice_1_check);
        this.chxChoice2 = (CheckBox) findViewById(R.id.choice_2_check);
        this.tvChoiceHint2 = (TextView) findViewById(R.id.choice_2_hint);
        this.tvLearnMore = (TextView) findViewById(R.id.learn_more);
        this.btnFixRepair = findViewById(R.id.fix_streak);
        this.earnFreeCoins = (TextView) findViewById(R.id.earn_coins_text);
        this.root = findViewById(R.id.root);
        this.content = findViewById(R.id.content);
        this.btnFixRepair.setOnClickListener(this);
        View viewFindViewById = findViewById(R.id.close);
        this.btnClose = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        this.ongoingContainer = findViewById(R.id.ongoing_container);
        this.repairDoneContainer = findViewById(R.id.repair_done_container);
        this.streakRepairLayout = (CheckInStreakRepairLayout) findViewById(R.id.check_in_streak_repair_layout);
        this.streakRepairLayout.updateCells(new CheckInHelper(nVContext).getStreakRepairCellList(checkInHistory));
        this.semiProgressDrawable = new SemiProgressDrawable(getContext(), -1, Utils.dpToPxInt(getContext(), 2.0f));
        this.fixContainer1 = findViewById(R.id.fix_container_1);
        this.fixContainerFixing = findViewById(R.id.fix_container_fixing);
        ((ImageView) findViewById(R.id.fixing_indicator)).setImageDrawable(this.semiProgressDrawable);
        LinkTouchSpan linkTouchSpan = new LinkTouchSpan(getContext().getResources().getColor(R.color.color_highlight)) { // from class: com.narvii.achievements.StreakRepairDialog.1
            public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                Intent intentCreateMembershipIntent = MembershipActivity.createMembershipIntent();
                intentCreateMembershipIntent.putExtra(ExternalPostPreviewFragment.SOURCE, "Streak Repair (Dialog)");
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(StreakRepairDialog.this.getContext(), intentCreateMembershipIntent);
            }
        };
        SpannableString spannableString = new SpannableString(getContext().getString(R.string.learn_more));
        spannableString.setSpan(linkTouchSpan, 0, spannableString.length(), 33);
        this.tvLearnMore.setMovementMethod(LinkTouchMovementMethod.getInstance());
        this.tvLearnMore.setText(spannableString);
        updateViewsWhenCheckBoxChange();
        updateContainers();
        updateEarnFreeCoinsContent();
        this.localBroadcastManager.c(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        this.localBroadcastManager.c(this.walletChangeReceiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContainers() {
        int i10;
        updatePrice();
        boolean z6 = !new CheckInHelper(this.ctx).shouldShowStrikeLost(this.checkInHistory);
        this.isStrikeRepairFinished = z6;
        View view = this.repairDoneContainer;
        int i11 = 4;
        if (z6) {
            i10 = 0;
        } else {
            i10 = 4;
        }
        view.setVisibility(i10);
        View view2 = this.ongoingContainer;
        if (!this.isStrikeRepairFinished) {
            i11 = 0;
        }
        view2.setVisibility(i11);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.choice_1 /* 2131362550 */:
            case R.id.choice_1_hint /* 2131362552 */:
                this.curChoice = 1;
                updateViewsWhenCheckBoxChange();
                break;
            case R.id.choice_2 /* 2131362553 */:
                this.curChoice = 2;
                updateViewsWhenCheckBoxChange();
                break;
            case R.id.close /* 2131362593 */:
            case R.id.root /* 2131364940 */:
                cancel();
                break;
            case R.id.fix_streak /* 2131363250 */:
                if (this.curChoice == 1) {
                    if (this.membershipService.isMembership()) {
                        fixStreak();
                    } else {
                        new MembershipHelper(this.ctx).showJoinAminoPlusDialog(getContext().getString(R.string.join_amino_plus_streak_repair), null);
                    }
                } else {
                    fixStreak();
                }
                break;
        }
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        this.localBroadcastManager.f(this.receiver);
        this.localBroadcastManager.f(this.walletChangeReceiver);
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        super.show();
        this.content.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_bottom));
        ((StatisticsService) Utils.getNVContext(getContext()).getService("statistics")).event("Streak Repair Modal").source(this.source).userPropInc("Streak Repair Modal Total");
    }
}
