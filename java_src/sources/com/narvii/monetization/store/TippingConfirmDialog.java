package com.narvii.monetization.store;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityHelper;
import com.narvii.config.ConfigService;
import com.narvii.headlines.HeadlineLoggingHelper;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.CommunityObjectInGlobal;
import com.narvii.model.Item;
import com.narvii.model.NVObject;
import com.narvii.model.Tippable;
import com.narvii.model.TippingInfo;
import com.narvii.model.TippingOption;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.store.view.TippingFeedbackView;
import com.narvii.notification.Notification;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.tipping.TippingHelper;
import com.narvii.tipping.model.TipLog;
import com.narvii.tipping.model.TipLogListResponse;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.util.text.TextUtils;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.PurchaseCoinFragment;
import com.narvii.wallet.WalletRecyclerFragment;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PurchaseConfirmButton;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes8.dex */
public class TippingConfirmDialog extends NVDialog implements View.OnClickListener, TextWatcher, View.OnFocusChangeListener, PurchaseConfirmButton.SubmitConfirmListener {
    private static int TIPPING_SELECT_CUSTOM = -1;
    private static int TIPPING_UNSELECTED = -2;
    CommunityHelper communityHelper;
    private PurchaseConfirmButton confirm;
    private int curSelect;
    private NVImageView customTippingIcon;
    private TippingOption customTippingOption;
    private View customTippingPrice;
    private EditText customTippingPriceInput;
    private List<View> defaultPriceViews;
    private List<TippingOption> defaultTippingPrice;
    private LayoutInflater inflater;
    private InputFilter inputFilter;
    private boolean isFetchTipperList;
    private boolean isKeyboardOn;
    private final LocalBroadcastManager lbm;
    private int maxTippingPrice;
    private final MembershipService membership;
    private int minTippingPrice;
    private NVContext nvContext;
    private BroadcastReceiver receiver;
    public String source;
    private TipSuccessListener tipSuccessListener;
    private Tippable tippable;
    private int tippersCount;
    private List<User> tippersList;
    private final TextView tippingConfirmTitle;
    private View tippingContentView;
    private TippingFeedbackView tippingFeedbackView;
    private TippingHelper tippingHelper;
    private final TextView tippingMembersCount;
    private final LiveLayerOnlineBar tippingMembersList;
    private final View tippingMembersView;
    private String tippingTransactionId;
    private User userInfo;

    /* JADX INFO: renamed from: com.narvii.monetization.store.TippingConfirmDialog$5, reason: invalid class name */
    class AnonymousClass5 extends ApiResponseListener<ApiResponse> {
        final /* synthetic */ int val$price;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(Class cls, int i10) {
            super(cls);
            this.val$price = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFinish$0(Boolean bool) {
            TippingConfirmDialog.this.dismiss();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            TippingConfirmDialog.this.confirm.updateSendingStatus(false);
            if (i10 == 4300) {
                TippingConfirmDialog.this.showPurchaseCoinDialog(true);
            } else if (i10 == 230) {
                TippingConfirmDialog.this.showJoinCommunityDialog();
            } else {
                NVToast.makeText(TippingConfirmDialog.this.getContext(), str, 0).show();
            }
            ((StatisticsService) TippingConfirmDialog.this.nvContext.getService("statistics")).event("Give Props").userPropInc("Give Props Total").param("Amount", this.val$price).param("Successful", false);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
            TippingInfo tippingInfo;
            TippingConfirmDialog.this.membership.refreshWallet(true);
            if ((TippingConfirmDialog.this.tippable instanceof NVObject) && !(TippingConfirmDialog.this.tippable instanceof ChatThread) && (tippingInfo = TippingConfirmDialog.this.tippable.getTippingInfo()) != null) {
                tippingInfo.tippedCoins += this.val$price;
                NotificationUtils.sendNotificationIncludeGlobal(TippingConfirmDialog.this.nvContext, new Notification("update", (NVObject) TippingConfirmDialog.this.tippable));
            }
            if (TippingConfirmDialog.this.tipSuccessListener != null) {
                TippingConfirmDialog.this.tipSuccessListener.onTipSuccess();
            }
            ((StatisticsService) TippingConfirmDialog.this.nvContext.getService("statistics")).event("Give Props").userPropInc("Give Props Total").param("Amount", this.val$price).param("Successful", true).userPropInc("Prop Coins Given Total", this.val$price);
            SoftKeyboard.hideSoftKeyboard(TippingConfirmDialog.this.customTippingPriceInput);
            TippingConfirmDialog.this.tippingContentView.setVisibility(8);
            TippingConfirmDialog.this.tippingFeedbackView.show(TippingConfirmDialog.this.userInfo, this.val$price);
            TippingConfirmDialog.this.tippingFeedbackView.setOnDismiss(Utils.functionUnit(new Callback() { // from class: com.narvii.monetization.store.e
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f2524a.lambda$onFinish$0((Boolean) obj);
                }
            }));
        }
    }

    public interface TipSuccessListener {
        void onTipSuccess();
    }

    private int getTargetTippingPrice() {
        return getTargetTippingPrice(this.curSelect);
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "props_giving_dialog";
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    public void setTipSuccessListener(TipSuccessListener tipSuccessListener) {
        this.tipSuccessListener = tipSuccessListener;
    }

    private void fetchTipperMembers() {
        if (this.isFetchTipperList) {
            return;
        }
        Object obj = this.tippable;
        if (obj instanceof NVObject) {
            this.isFetchTipperList = true;
            NVObject nVObject = (NVObject) obj;
            ApiRequest.Builder builderParam = ApiRequest.builder().path(nVObject.apiTypeName() + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + nVObject.id() + "/tipping/tipped-users-summary").param("start", 0).param("size", 15);
            Tippable tippable = this.tippable;
            if (tippable instanceof CommunityObjectInGlobal) {
                builderParam.communityId(((CommunityObjectInGlobal) tippable).getNdcId());
            }
            ((ApiService) this.nvContext.getService("api")).exec(builderParam.build(), new ApiResponseListener<TipLogListResponse>(TipLogListResponse.class) { // from class: com.narvii.monetization.store.TippingConfirmDialog.6
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    TippingConfirmDialog.this.updateTippingMembers();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, TipLogListResponse tipLogListResponse) {
                    User user;
                    List<TipLog> list = tipLogListResponse.tippedUserList;
                    ArrayList arrayList = new ArrayList();
                    if (list != null) {
                        for (TipLog tipLog : list) {
                            if (tipLog != null && (user = tipLog.tipper) != null) {
                                arrayList.add(user);
                            }
                        }
                    }
                    TippingConfirmDialog.this.tippersList = arrayList;
                    TippingConfirmDialog.this.tippersCount = 0;
                    if (tipLogListResponse.tipSummary != null) {
                        TippingConfirmDialog.this.tippersCount += tipLogListResponse.tipSummary.tippersCount;
                    }
                    if (tipLogListResponse.globalTipSummary != null) {
                        TippingConfirmDialog.this.tippersCount += tipLogListResponse.globalTipSummary.tippersCount;
                    }
                    TippingConfirmDialog.this.updateTippingMembers();
                }
            });
        }
    }

    private int getTargetTippingPrice(int i10) {
        if (i10 == TIPPING_SELECT_CUSTOM) {
            try {
                return Integer.parseInt(this.customTippingPriceInput.getText().toString());
            } catch (Exception unused) {
                return Integer.MAX_VALUE;
            }
        }
        if (i10 < 0 || i10 >= this.defaultTippingPrice.size()) {
            return 0;
        }
        return this.defaultTippingPrice.get(i10).value;
    }

    private int getTippableNdcId() {
        Tippable tippable = this.tippable;
        return tippable instanceof CommunityObjectInGlobal ? ((CommunityObjectInGlobal) tippable).getNdcId() : ((ConfigService) this.nvContext.getService("config")).getCommunityId();
    }

    private void setTippableInfo(Tippable tippable) {
        if (tippable == null) {
            return;
        }
        this.userInfo = tippable.getTipAuthor();
        TippingInfo tippingInfo = tippable.getTippingInfo();
        if (tippingInfo == null) {
            this.tippersCount = -1;
            this.maxTippingPrice = 100;
            this.minTippingPrice = 1;
            return;
        }
        this.tippersCount = tippingInfo.tippersCount;
        int iMax = Math.max(1, tippingInfo.tipMinCoin);
        this.minTippingPrice = iMax;
        this.maxTippingPrice = Math.max(iMax, tippingInfo.tipMaxCoin);
        if (tippingInfo.tipOptionList == null) {
            return;
        }
        this.defaultTippingPrice.clear();
        this.defaultTippingPrice.addAll(tippingInfo.tipOptionList);
        this.customTippingOption = tippingInfo.tipCustomOption;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPurchaseCoinDialog(boolean z6) {
        PurchaseCoinFragment.show(this.nvContext, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTippingMembers() {
        if (this.tippersCount <= 0) {
            this.tippingMembersView.setVisibility(8);
        } else {
            this.tippingMembersView.setVisibility(0);
            this.tippingMembersCount.setText(TextUtils.getCountText(getContext(), this.tippersCount, R.string.one_tipped_count_viewer, R.string.n_tipped_count_viewer));
            List<User> list = this.tippersList;
            if (list == null || list.isEmpty()) {
                this.tippingMembersList.setVisibility(8);
            } else {
                this.tippingMembersList.setVisibility(0);
                this.tippingMembersList.setUserList(this.tippersList, this.tippersCount);
            }
        }
        if (this.isFetchTipperList) {
            return;
        }
        fetchTipperMembers();
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.tippingContentView.getVisibility() != 0) {
            super.dismiss();
            return;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.slide_out_bottom);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.monetization.store.TippingConfirmDialog.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                TippingConfirmDialog.super.dismiss();
            }
        });
        this.tippingContentView.startAnimation(animationLoadAnimation);
    }

    protected void finalize() throws Throwable {
        this.lbm.f(this.receiver);
        super.finalize();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == null) {
        }
        switch (view.getId()) {
            case R.id.amino_coin /* 2131362055 */:
            case R.id.available_coins_text /* 2131362160 */:
            case R.id.user_wallet_coins /* 2131365731 */:
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), FragmentWrapperActivity.intent(WalletRecyclerFragment.class));
                break;
            case R.id.click_remove_mask /* 2131362582 */:
                if (!this.isKeyboardOn) {
                    dismiss();
                } else {
                    SoftKeyboard.hideSoftKeyboard(this.customTippingPriceInput);
                }
                break;
            case R.id.custom_tipping_price /* 2131362816 */:
                updatePrice(TIPPING_SELECT_CUSTOM);
                SoftKeyboard.showSoftKeyboard(this.customTippingPriceInput);
                break;
            case R.id.get_coins /* 2131363348 */:
                LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("GetCoinsButton").send();
                showPurchaseCoinDialog(false);
                break;
            case R.id.my_user_avatar /* 2131364306 */:
                User user = this.userInfo;
                if (user != null) {
                    Intent intent = UserProfileFragment.intent(this.nvContext, user);
                    int i10 = this.userInfo.ndcId;
                    if (i10 != -1) {
                        intent.putExtra("__communityId", i10);
                    }
                    if (this.communityHelper.checkCommunityJoined(this.userInfo.ndcId)) {
                        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent);
                        break;
                    }
                }
                break;
            case R.id.tipping_members_view /* 2131365528 */:
                LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("PropsGiverList").send();
                this.tippingHelper.openTippingList(this.tippable, null);
                break;
            case R.id.tipping_price_item /* 2131365530 */:
                if (view.getTag() != null && (view.getTag() instanceof Integer)) {
                    int iIntValue = ((Integer) view.getTag()).intValue();
                    this.customTippingPriceInput.setText((CharSequence) null);
                    updatePrice(iIntValue);
                    this.customTippingPriceInput.clearFocus();
                    SoftKeyboard.hideSoftKeyboard(this.customTippingPriceInput);
                    break;
                }
                break;
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z6) {
        if (z6) {
            updatePrice(TIPPING_SELECT_CUSTOM);
        }
    }

    public TippingConfirmDialog(NVContext nVContext, Tippable tippable) {
        super(nVContext, R.style.CustomDialogWithAnimation);
        this.defaultPriceViews = new ArrayList();
        this.tippersList = null;
        this.isFetchTipperList = false;
        this.tippersCount = -1;
        this.defaultTippingPrice = new ArrayList();
        this.maxTippingPrice = 100;
        this.minTippingPrice = 1;
        this.curSelect = TIPPING_UNSELECTED;
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.store.TippingConfirmDialog.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                TippingConfirmDialog.this.updateWallet();
            }
        };
        this.inputFilter = new InputFilter() { // from class: com.narvii.monetization.store.TippingConfirmDialog.2
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
                int i14;
                try {
                    i14 = Integer.parseInt(spanned.toString());
                } catch (Exception unused) {
                    i14 = Integer.MAX_VALUE;
                }
                if (!android.text.TextUtils.isEmpty(spanned)) {
                    if (i14 > TippingConfirmDialog.this.maxTippingPrice || i14 < TippingConfirmDialog.this.minTippingPrice) {
                        return "";
                    }
                    return null;
                }
                return null;
            }
        };
        this.nvContext = nVContext;
        this.tippable = tippable;
        this.communityHelper = new CommunityHelper(this);
        StatusBarUtils.addTranslucentFlags(getWindow());
        setContentView(R.layout.dialog_tipping_confirm);
        this.membership = (MembershipService) nVContext.getService("membership");
        this.tippingHelper = new TippingHelper(nVContext);
        setTippableInfo(tippable);
        this.inflater = LayoutInflater.from(getContext());
        findViewById(R.id.click_remove_mask).setOnClickListener(this);
        findViewById(R.id.my_user_avatar).setOnClickListener(this);
        findViewById(R.id.amino_coin).setOnClickListener(this);
        findViewById(R.id.user_wallet_coins).setOnClickListener(this);
        findViewById(R.id.available_coins_text).setOnClickListener(this);
        this.tippingConfirmTitle = (TextView) findViewById(R.id.tipping_confirm_title);
        findViewById(R.id.get_coins).setOnClickListener(this);
        View viewFindViewById = findViewById(R.id.tipping_members_view);
        this.tippingMembersView = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) findViewById(R.id.tipping_members_list);
        this.tippingMembersList = liveLayerOnlineBar;
        liveLayerOnlineBar.setAvatarStrokeWidth(1);
        liveLayerOnlineBar.setForceHideOnlineTextLayout(true);
        this.tippingMembersCount = (TextView) findViewById(R.id.tipping_members_hint);
        EditText editText = (EditText) findViewById(R.id.custom_tipping_price_input);
        this.customTippingPriceInput = editText;
        editText.setOnFocusChangeListener(this);
        this.customTippingPriceInput.setFilters(new InputFilter[]{this.inputFilter});
        this.customTippingPriceInput.addTextChangedListener(this);
        View viewFindViewById2 = findViewById(R.id.custom_tipping_price);
        this.customTippingPrice = viewFindViewById2;
        viewFindViewById2.setOnClickListener(this);
        this.customTippingIcon = (NVImageView) this.customTippingPrice.findViewById(R.id.tipping_price_icon);
        this.customTippingPrice.setFocusableInTouchMode(true);
        this.customTippingPriceInput.setVisibility(0);
        this.customTippingPrice.findViewById(R.id.tipping_hint_default).setVisibility(8);
        PurchaseConfirmButton purchaseConfirmButton = (PurchaseConfirmButton) findViewById(R.id.confirm_button);
        this.confirm = purchaseConfirmButton;
        purchaseConfirmButton.findViewById(R.id.confirm_button_container).setBackgroundResource(R.drawable.selector_tipping_confirm_button);
        this.confirm.setSubmitListener(this);
        this.confirm.setEnabled(false);
        this.tippingContentView = findViewById(R.id.tipping_confirm_content);
        this.tippingFeedbackView = (TippingFeedbackView) findViewById(R.id.tipping_feedback_view);
        LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(getContext());
        this.lbm = localBroadcastManagerB;
        localBroadcastManagerB.c(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
        SoftKeyboard.observeKeyboard(this.customTippingPriceInput, new Callback<Boolean>() { // from class: com.narvii.monetization.store.TippingConfirmDialog.3
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                TippingConfirmDialog.this.isKeyboardOn = bool != null && bool.booleanValue();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showJoinCommunityDialog() {
        final int tippableNdcId = getTippableNdcId();
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(R.string.guest_tipping_hint);
        aCMAlertDialog.addButton(getContext().getString(R.string.cancel), -4473925, (View.OnClickListener) null);
        aCMAlertDialog.addButton(R.string.join_tipping, new View.OnClickListener() { // from class: com.narvii.monetization.store.TippingConfirmDialog.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new HeadlineLoggingHelper(TippingConfirmDialog.this.nvContext).logJoinAminoStarting(null, tippableNdcId, LoggingSource.GuestTipping.toString());
                new com.narvii.master.CommunityHelper(TippingConfirmDialog.this.nvContext).joinCommunity(tippableNdcId, null, new Callback<Boolean>() { // from class: com.narvii.monetization.store.TippingConfirmDialog.7.1
                    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    @Override // com.narvii.util.Callback
                    public void call(Boolean bool) {
                        if (bool.booleanValue()) {
                            if (TippingConfirmDialog.this.confirm.isSending()) {
                                return;
                            }
                            TippingConfirmDialog.this.doSubmit();
                            return;
                        }
                        Community community = new Community();
                        community.id = tippableNdcId;
                        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                        intent.putExtra("id", community.id);
                        intent.putExtra("icon", community.icon);
                        intent.putExtra("joinOnly", true);
                        intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
                        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(TippingConfirmDialog.this.nvContext, intent);
                    }
                });
            }
        });
        aCMAlertDialog.show();
    }

    private void updateDefaultPriceView() {
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.default_tipping_price);
        this.defaultPriceViews.clear();
        for (int i10 = 0; i10 < this.defaultTippingPrice.size(); i10++) {
            TippingOption tippingOption = this.defaultTippingPrice.get(i10);
            View viewInflate = this.inflater.inflate(R.layout.tipping_price_default_item, viewGroup, false);
            ((TextView) viewInflate.findViewById(R.id.tipping_price_text)).setText(String.valueOf(tippingOption.value));
            ((NVImageView) viewInflate.findViewById(R.id.tipping_price_icon)).setImageUrl(tippingOption.icon);
            viewInflate.setOnClickListener(this);
            viewInflate.setTag(Integer.valueOf(i10));
            this.defaultPriceViews.add(viewInflate);
            viewGroup.addView(viewInflate);
            View view = new View(getContext());
            view.setLayoutParams(new ViewGroup.LayoutParams((int) Utils.dpToPx(getContext(), 12.0f), 1));
            viewGroup.addView(view);
        }
    }

    private void updatePrice(int i10) {
        boolean z6;
        boolean z10;
        int targetTippingPrice = getTargetTippingPrice(i10);
        PurchaseConfirmButton purchaseConfirmButton = this.confirm;
        if (targetTippingPrice >= this.minTippingPrice && targetTippingPrice <= this.maxTippingPrice) {
            z6 = true;
        } else {
            z6 = false;
        }
        purchaseConfirmButton.setEnabled(z6);
        if (i10 == this.curSelect) {
            return;
        }
        this.curSelect = i10;
        this.tippingTransactionId = null;
        for (int i11 = 0; i11 < this.defaultPriceViews.size(); i11++) {
            View view = this.defaultPriceViews.get(i11);
            if (i11 == i10) {
                z10 = true;
            } else {
                z10 = false;
            }
            view.setSelected(z10);
        }
        if (i10 == TIPPING_SELECT_CUSTOM) {
            this.customTippingPrice.setSelected(true);
            this.customTippingPrice.findViewById(R.id.tipping_hint_custom).setVisibility(8);
            this.customTippingPriceInput.setVisibility(0);
        } else {
            this.customTippingPrice.setSelected(false);
            this.customTippingPrice.findViewById(R.id.tipping_hint_custom).setVisibility(0);
            this.customTippingPriceInput.setVisibility(8);
        }
    }

    private void updateViews() {
        int i10;
        TippingOption tippingOption;
        updateTippingMembers();
        updateDefaultPriceView();
        if (this.defaultTippingPrice.isEmpty()) {
            i10 = TIPPING_SELECT_CUSTOM;
        } else {
            i10 = 0;
        }
        updatePrice(i10);
        updateWallet();
        if (this.userInfo != null) {
            ((UserAvatarLayout) findViewById(R.id.my_user_avatar)).setUser(this.userInfo);
            this.tippingConfirmTitle.setText(getContext().getString(R.string.tipping_confirm_title_1, this.userInfo.nickname()));
        }
        NVImageView nVImageView = this.customTippingIcon;
        if (nVImageView != null && (tippingOption = this.customTippingOption) != null) {
            nVImageView.setImageUrl(tippingOption.icon);
        }
        this.customTippingPriceInput.setHint(getContext().getString(R.string.tipping_confirm_custom_hint_1, Integer.valueOf(this.minTippingPrice), Integer.valueOf(this.maxTippingPrice)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWallet() {
        TextView textView = (TextView) findViewById(R.id.user_wallet_coins);
        if (textView == null) {
            return;
        }
        textView.setText(TextUtils.numberFormat.format(this.membership.walletBalance()));
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        int i10;
        try {
            i10 = Integer.parseInt(editable.toString());
        } catch (Exception unused) {
            i10 = Integer.MAX_VALUE;
        }
        if (i10 <= this.maxTippingPrice && i10 >= this.minTippingPrice) {
            this.customTippingPriceInput.setTextColor(-1);
        } else {
            this.customTippingPriceInput.setTextColor(SupportMenu.CATEGORY_MASK);
        }
        updatePrice(TIPPING_SELECT_CUSTOM);
        this.tippingTransactionId = null;
    }

    @Override // com.narvii.widget.PurchaseConfirmButton.SubmitConfirmListener
    public void doSubmit() {
        int targetTippingPrice = getTargetTippingPrice();
        LogEvent.clickBuilder(this, ActSemantic.purchase).area("SendButton").object(this.userInfo).extraParam("amount", Integer.valueOf(targetTippingPrice)).send();
        int tippableNdcId = getTippableNdcId();
        AffiliationsService affiliationsService = (AffiliationsService) this.nvContext.getService("affiliations");
        if (tippableNdcId != 0 && !affiliationsService.contains(tippableNdcId)) {
            showJoinCommunityDialog();
            return;
        }
        if (targetTippingPrice < this.minTippingPrice) {
            return;
        }
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.post();
        Tippable tippable = this.tippable;
        if (tippable instanceof CommunityObjectInGlobal) {
            builder.communityId(((CommunityObjectInGlobal) tippable).getNdcId());
        }
        Tippable tippable2 = this.tippable;
        if (tippable2 instanceof Item) {
            builder.path("/tipping");
            Object obj = this.tippable;
            if (obj instanceof NVObject) {
                builder.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, ((NVObject) obj).id());
                builder.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(((NVObject) this.tippable).objectType()));
            }
        } else if (tippable2 instanceof NVObject) {
            builder.path(((NVObject) this.tippable).apiTypeName() + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + ((NVObject) this.tippable).id() + "/tipping");
        } else {
            Log.e("unknown tippable");
        }
        builder.param("coins", Integer.valueOf(targetTippingPrice));
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        if (this.tippingTransactionId == null) {
            this.tippingTransactionId = UUID.randomUUID().toString();
        }
        objectNodeCreateObjectNode.put("transactionId", this.tippingTransactionId);
        builder.param("tippingContext", objectNodeCreateObjectNode);
        builder.selfHandleErrorCode(ApiService.API_ERR_USER_NOT_IN_COMMUNITY);
        this.confirm.updateSendingStatus(true);
        ((ApiService) this.nvContext.getService("api")).exec(builder.build(), new AnonymousClass5(ApiResponse.class, targetTippingPrice));
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        updateViews();
        this.membership.refreshWallet(true);
        super.show();
        this.tippingContentView.setVisibility(0);
        this.tippingContentView.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_bottom));
    }
}
