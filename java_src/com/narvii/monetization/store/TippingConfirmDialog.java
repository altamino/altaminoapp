package com.narvii.monetization.store;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.internal.view.SupportMenu;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.amino.mastes.R;
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
import com.narvii.model.Blog;
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
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.PurchaseCoinFragment;
import com.narvii.wallet.WalletRecyclerFragment;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.narvii.widget.PurchaseConfirmButton;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* loaded from: classes3.dex */
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

    public interface TipSuccessListener {
        void onTipSuccess();
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "PropsGivingDialog";
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
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
            public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) throws NumberFormatException {
                int i5;
                try {
                    i5 = Integer.parseInt(spanned.toString());
                } catch (Exception unused) {
                    i5 = Integer.MAX_VALUE;
                }
                if (TextUtils.isEmpty(spanned)) {
                    return null;
                }
                if (i5 > TippingConfirmDialog.this.maxTippingPrice || i5 < TippingConfirmDialog.this.minTippingPrice) {
                    return "";
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
        this.tippingMembersView = findViewById(R.id.tipping_members_view);
        this.tippingMembersView.setOnClickListener(this);
        this.tippingMembersList = (LiveLayerOnlineBar) findViewById(R.id.tipping_members_list);
        this.tippingMembersList.setAvatarStrokeWidth(1);
        this.tippingMembersList.setForceHideOnlineTextLayout(true);
        this.tippingMembersCount = (TextView) findViewById(R.id.tipping_members_hint);
        this.customTippingPriceInput = (EditText) findViewById(R.id.custom_tipping_price_input);
        this.customTippingPriceInput.setOnFocusChangeListener(this);
        this.customTippingPriceInput.setFilters(new InputFilter[]{this.inputFilter});
        this.customTippingPriceInput.addTextChangedListener(this);
        this.customTippingPrice = findViewById(R.id.custom_tipping_price);
        this.customTippingPrice.setOnClickListener(this);
        this.customTippingIcon = (NVImageView) this.customTippingPrice.findViewById(R.id.tipping_price_icon);
        this.customTippingPrice.setFocusableInTouchMode(true);
        this.customTippingPriceInput.setVisibility(0);
        this.customTippingPrice.findViewById(R.id.tipping_hint_default).setVisibility(8);
        this.confirm = (PurchaseConfirmButton) findViewById(R.id.confirm_button);
        this.confirm.findViewById(R.id.confirm_button_container).setBackgroundResource(R.drawable.selector_tipping_confirm_button);
        this.confirm.setSubmitListener(this);
        this.confirm.setEnabled(false);
        this.tippingContentView = findViewById(R.id.tipping_confirm_content);
        this.tippingFeedbackView = (TippingFeedbackView) findViewById(R.id.tipping_feedback_view);
        this.lbm = LocalBroadcastManager.getInstance(getContext());
        this.lbm.registerReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
        SoftKeyboard.observeKeyboard(this.customTippingPriceInput, new Callback<Boolean>() { // from class: com.narvii.monetization.store.TippingConfirmDialog.3
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                TippingConfirmDialog.this.isKeyboardOn = bool != null && bool.booleanValue();
            }
        });
    }

    public void setTipSuccessListener(TipSuccessListener tipSuccessListener) {
        this.tipSuccessListener = tipSuccessListener;
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        updateViews();
        this.membership.refreshWallet(true);
        super.show();
        this.tippingContentView.setVisibility(0);
        this.tippingContentView.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_bottom));
    }

    protected void finalize() throws Throwable {
        this.lbm.unregisterReceiver(this.receiver);
        super.finalize();
    }

    private void updateViews() {
        TippingOption tippingOption;
        updateTippingMembers();
        updateDefaultPriceView();
        updatePrice(this.defaultTippingPrice.isEmpty() ? TIPPING_SELECT_CUSTOM : 0);
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
    public void updateTippingMembers() {
        if (this.tippersCount <= 0) {
            this.tippingMembersView.setVisibility(8);
        } else {
            this.tippingMembersView.setVisibility(0);
            this.tippingMembersCount.setText(com.narvii.util.text.TextUtils.getCountText(getContext(), this.tippersCount, R.string.one_tipped_count_viewer, R.string.n_tipped_count_viewer));
            List<User> list = this.tippersList;
            if (list != null && !list.isEmpty()) {
                this.tippingMembersList.setVisibility(0);
                this.tippingMembersList.setUserList(this.tippersList, this.tippersCount);
            } else {
                this.tippingMembersList.setVisibility(8);
            }
        }
        if (this.isFetchTipperList) {
            return;
        }
        fetchTipperMembers();
    }

    private void updateDefaultPriceView() {
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.default_tipping_price);
        this.defaultPriceViews.clear();
        for (int i = 0; i < this.defaultTippingPrice.size(); i++) {
            TippingOption tippingOption = this.defaultTippingPrice.get(i);
            View viewInflate = this.inflater.inflate(R.layout.tipping_price_default_item, viewGroup, false);
            ((TextView) viewInflate.findViewById(R.id.tipping_price_text)).setText(String.valueOf(tippingOption.value));
            ((NVImageView) viewInflate.findViewById(R.id.tipping_price_icon)).setImageUrl(tippingOption.icon);
            viewInflate.setOnClickListener(this);
            viewInflate.setTag(Integer.valueOf(i));
            this.defaultPriceViews.add(viewInflate);
            viewGroup.addView(viewInflate);
            View view = new View(getContext());
            view.setLayoutParams(new ViewGroup.LayoutParams((int) Utils.dpToPx(getContext(), 12.0f), 1));
            viewGroup.addView(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWallet() {
        TextView textView = (TextView) findViewById(R.id.user_wallet_coins);
        if (textView == null) {
            return;
        }
        textView.setText(com.narvii.util.text.TextUtils.numberFormat.format(this.membership.walletBalance()));
    }

    private void updatePrice(int i) {
        int targetTippingPrice = getTargetTippingPrice(i);
        this.confirm.setEnabled(targetTippingPrice >= this.minTippingPrice && targetTippingPrice <= this.maxTippingPrice);
        if (i == this.curSelect) {
            return;
        }
        this.curSelect = i;
        this.tippingTransactionId = null;
        int i2 = 0;
        while (i2 < this.defaultPriceViews.size()) {
            this.defaultPriceViews.get(i2).setSelected(i2 == i);
            i2++;
        }
        if (i == TIPPING_SELECT_CUSTOM) {
            this.customTippingPrice.setSelected(true);
            this.customTippingPrice.findViewById(R.id.tipping_hint_custom).setVisibility(8);
            this.customTippingPriceInput.setVisibility(0);
        } else {
            this.customTippingPrice.setSelected(false);
            this.customTippingPrice.findViewById(R.id.tipping_hint_custom).setVisibility(0);
            this.customTippingPriceInput.setVisibility(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
        if (view == null) {
        }
        switch (view.getId()) {
            case R.id.amino_coin /* 2131296415 */:
            case R.id.available_coins_text /* 2131296483 */:
            case R.id.user_wallet_coins /* 2131299395 */:
                getContext().startActivity(FragmentWrapperActivity.intent(WalletRecyclerFragment.class));
                break;
            case R.id.click_remove_mask /* 2131296853 */:
                if (this.isKeyboardOn) {
                    SoftKeyboard.hideSoftKeyboard(this.customTippingPriceInput);
                    break;
                } else {
                    dismiss();
                    break;
                }
            case R.id.custom_tipping_price /* 2131297063 */:
                updatePrice(TIPPING_SELECT_CUSTOM);
                SoftKeyboard.showSoftKeyboard(this.customTippingPriceInput);
                break;
            case R.id.get_coins /* 2131297483 */:
                LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("GetCoinsButton").send();
                showPurchaseCoinDialog(false);
                break;
            case R.id.my_user_avatar /* 2131298122 */:
                User user = this.userInfo;
                if (user != null) {
                    Intent intent = UserProfileFragment.intent(this.nvContext, user);
                    int i = this.userInfo.ndcId;
                    if (i != -1) {
                        intent.putExtra("__communityId", i);
                    }
                    if (this.communityHelper.checkCommunityJoined(this.userInfo.ndcId)) {
                        getContext().startActivity(intent);
                        break;
                    }
                }
                break;
            case R.id.tipping_members_view /* 2131299220 */:
                LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("PropsGiverList").send();
                this.tippingHelper.openTippingList(this.tippable, null);
                break;
            case R.id.tipping_price_item /* 2131299222 */:
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

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) throws NumberFormatException {
        int i;
        try {
            i = Integer.parseInt(editable.toString());
        } catch (Exception unused) {
            i = Integer.MAX_VALUE;
        }
        if (i > this.maxTippingPrice || i < this.minTippingPrice) {
            this.customTippingPriceInput.setTextColor(SupportMenu.CATEGORY_MASK);
        } else {
            this.customTippingPriceInput.setTextColor(-1);
        }
        updatePrice(TIPPING_SELECT_CUSTOM);
        this.tippingTransactionId = null;
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
        this.minTippingPrice = Math.max(1, tippingInfo.tipMinCoin);
        this.maxTippingPrice = Math.max(this.minTippingPrice, tippingInfo.tipMaxCoin);
        if (tippingInfo.tipOptionList == null) {
            return;
        }
        this.defaultTippingPrice.clear();
        this.defaultTippingPrice.addAll(tippingInfo.tipOptionList);
        this.customTippingOption = tippingInfo.tipCustomOption;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (z) {
            updatePrice(TIPPING_SELECT_CUSTOM);
        }
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() throws Resources.NotFoundException {
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

    private int getTippableNdcId() {
        Tippable tippable = this.tippable;
        if (tippable instanceof CommunityObjectInGlobal) {
            return ((CommunityObjectInGlobal) tippable).getNdcId();
        }
        return ((ConfigService) this.nvContext.getService("config")).getCommunityId();
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
            builder.path(((NVObject) this.tippable).apiTypeName() + "/" + ((NVObject) this.tippable).id() + "/tipping");
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

    /* renamed from: com.narvii.monetization.store.TippingConfirmDialog$5, reason: invalid class name */
    class AnonymousClass5 extends ApiResponseListener<ApiResponse> {
        final /* synthetic */ int val$price;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(Class cls, int i) {
            super(cls);
            this.val$price = i;
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
            SoftKeyboard.hideSoftKeyboard(TippingConfirmDialog.this.customTippingPriceInput);
            TippingConfirmDialog.this.tippingContentView.setVisibility(8);
            TippingConfirmDialog.this.tippingFeedbackView.show(TippingConfirmDialog.this.userInfo, this.val$price);
            TippingConfirmDialog.this.tippingFeedbackView.setOnDismiss(Utils.functionUnit(new Callback() { // from class: com.narvii.monetization.store.-$$Lambda$TippingConfirmDialog$5$zOd9a-bBcYMCHLizn4x_iP3-iMI
                @Override // com.narvii.util.Callback
                public final void call(Object obj) throws Resources.NotFoundException {
                    this.f$0.lambda$onFinish$0$TippingConfirmDialog$5((Boolean) obj);
                }
            }));
        }

        public /* synthetic */ void lambda$onFinish$0$TippingConfirmDialog$5(Boolean bool) throws Resources.NotFoundException {
            TippingConfirmDialog.this.dismiss();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            TippingConfirmDialog.this.confirm.updateSendingStatus(false);
            if (i == 4300) {
                TippingConfirmDialog.this.showPurchaseCoinDialog(true);
            } else if (i == 230) {
                TippingConfirmDialog.this.showJoinCommunityDialog();
            } else {
                NVToast.makeText(TippingConfirmDialog.this.getContext(), str, 0).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPurchaseCoinDialog(boolean z) {
        PurchaseCoinFragment.show(this.nvContext, z);
    }

    private void fetchTipperMembers() {
        if (this.isFetchTipperList) {
            return;
        }
        Object obj = this.tippable;
        if (obj instanceof NVObject) {
            this.isFetchTipperList = true;
            NVObject nVObject = (NVObject) obj;
            ApiRequest.Builder builderParam = ApiRequest.builder().path(nVObject.apiTypeName() + "/" + nVObject.id() + "/tipping/tipped-users-summary").param(TtmlNode.START, 0).param("size", 15);
            Tippable tippable = this.tippable;
            if (tippable instanceof CommunityObjectInGlobal) {
                builderParam.communityId(((CommunityObjectInGlobal) tippable).getNdcId());
            }
            ((ApiService) this.nvContext.getService("api")).exec(builderParam.build(), new ApiResponseListener<TipLogListResponse>(TipLogListResponse.class) { // from class: com.narvii.monetization.store.TippingConfirmDialog.6
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

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    TippingConfirmDialog.this.updateTippingMembers();
                }
            });
        }
    }

    private boolean isGlobalScope() {
        if (Utils.isGlobalInteractionScope(this.nvContext)) {
            Tippable tippable = this.tippable;
            if ((tippable instanceof Blog) && ((Blog) tippable).type == 9) {
                return true;
            }
        }
        return false;
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
                        TippingConfirmDialog.this.nvContext.startActivity(intent);
                    }
                });
            }
        });
        aCMAlertDialog.show();
    }

    private int getTargetTippingPrice() {
        return getTargetTippingPrice(this.curSelect);
    }

    private int getTargetTippingPrice(int i) {
        if (i == TIPPING_SELECT_CUSTOM) {
            try {
                return Integer.parseInt(this.customTippingPriceInput.getText().toString());
            } catch (Exception unused) {
                return Integer.MAX_VALUE;
            }
        }
        if (i < 0 || i >= this.defaultTippingPrice.size()) {
            return 0;
        }
        return this.defaultTippingPrice.get(i).value;
    }
}
