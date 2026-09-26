package com.narvii.monetization.avatarframe;

import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.monetization.store.data.StoreItemAvailableCommunity;
import com.narvii.monetization.store.data.StoreItemCommunityCheckResponse;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.text.NVText;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AvatarFrameHelper {
    private ApiService apiService;
    private ConfigService config;
    public boolean isGlobal;
    private OnAvatarFrameChangedListener listener;
    private NVContext nvContext;
    private SetAvatarFrameDialog setAvatarFrameDialog;
    public String source;

    public interface OnAvatarFrameChangedListener {
        void onAvatarFrameChanged();
    }

    public class SetAvatarFrameDialog extends AlertDialog implements View.OnClickListener {
        private final View aminoMembershipBadge;
        private AvatarFrame avatarFrame;
        private final View btnClose;
        private final View btnSetForAll;
        private final View btnSetForOne;
        private final NVImageView imgPreview;
        private boolean isGlobal;
        private final TextView itemName;

        public SetAvatarFrameDialog(AvatarFrameHelper avatarFrameHelper) {
            this(false);
        }

        public void updateView() {
        }

        public SetAvatarFrameDialog(boolean z6) {
            super(AvatarFrameHelper.this.nvContext.getContext());
            setContentView(R.layout.dialog_set_avatar_frame_hint);
            View viewFindViewById = findViewById(R.id.close);
            this.btnClose = viewFindViewById;
            viewFindViewById.setOnClickListener(this);
            View viewFindViewById2 = findViewById(R.id.set_for_this_amino);
            this.btnSetForOne = viewFindViewById2;
            viewFindViewById2.setOnClickListener(this);
            if ((viewFindViewById2 instanceof TextView) && z6) {
                ((TextView) viewFindViewById2).setText(R.string.set_for_global);
            }
            View viewFindViewById3 = findViewById(R.id.set_for_all_amino);
            this.btnSetForAll = viewFindViewById3;
            viewFindViewById3.setOnClickListener(this);
            this.imgPreview = (NVImageView) findViewById(R.id.item_preview);
            this.itemName = (TextView) findViewById(R.id.item_name);
            this.aminoMembershipBadge = findViewById(R.id.amino_plus_badge);
        }

        public void show(AvatarFrame avatarFrame) {
            this.avatarFrame = avatarFrame;
            if (avatarFrame == null) {
                return;
            }
            this.imgPreview.setImageUrl(avatarFrame.getStoreIcon());
            this.itemName.setText(avatarFrame.getName());
            this.aminoMembershipBadge.setVisibility((avatarFrame.getRestrictionInfo() == null || avatarFrame.getRestrictionInfo().restrictType != 2) ? 8 : 0);
            show();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z6;
            switch (view.getId()) {
                case R.id.close /* 2131362593 */:
                    dismiss();
                    break;
                case R.id.set_for_all_amino /* 2131365085 */:
                case R.id.set_for_this_amino /* 2131365086 */:
                    AvatarFrame avatarFrame = this.avatarFrame;
                    if (avatarFrame != null) {
                        AvatarFrameHelper avatarFrameHelper = AvatarFrameHelper.this;
                        if (view.getId() == R.id.set_for_all_amino) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        avatarFrameHelper.sendChangeAvatarSettingRequest(avatarFrame, z6, new Callback<Boolean>() { // from class: com.narvii.monetization.avatarframe.AvatarFrameHelper.SetAvatarFrameDialog.1
                            @Override // com.narvii.util.Callback
                            public void call(Boolean bool) {
                                if (bool.booleanValue()) {
                                    SetAvatarFrameDialog.this.dismiss();
                                    if (AvatarFrameHelper.this.nvContext.getContext() instanceof NVActivity) {
                                        ((NVActivity) AvatarFrameHelper.this.nvContext.getContext()).toastImageWithText(ContextCompat.getDrawable(SetAvatarFrameDialog.this.getContext(), R.drawable.check), AvatarFrameHelper.this.nvContext.getContext().getString(R.string.set_successfully), R.anim.toast_scale_in, 600L);
                                    } else {
                                        NVToast.makeText(SetAvatarFrameDialog.this.getContext(), R.string.success, 1).show();
                                    }
                                    if (AvatarFrameHelper.this.listener != null) {
                                        AvatarFrameHelper.this.listener.onAvatarFrameChanged();
                                    }
                                }
                            }
                        });
                    }
                    break;
            }
        }
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void setAvatarFrameListener(OnAvatarFrameChangedListener onAvatarFrameChangedListener) {
        this.listener = onAvatarFrameChangedListener;
    }

    public void showAvatarSetDialog(AvatarFrame avatarFrame) {
        showAvatarSetDialog(avatarFrame, false);
    }

    private void checkCommunityJoined(final AvatarFrame avatarFrame) {
        final ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        progressDialog.show();
        this.apiService.exec(new ApiRequest.Builder().path("/store/recommend-store-by-product").param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, avatarFrame.id()).param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, 122).build(), new ApiResponseListener<StoreItemCommunityCheckResponse>(StoreItemCommunityCheckResponse.class) { // from class: com.narvii.monetization.avatarframe.AvatarFrameHelper.3
            public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StoreItemCommunityCheckResponse storeItemCommunityCheckResponse) throws Exception {
                StoreItemAvailableCommunity storeItemAvailableCommunity;
                super.onFinish(apiRequest, storeItemCommunityCheckResponse);
                progressDialog.dismiss();
                if (storeItemCommunityCheckResponse == null || (storeItemAvailableCommunity = storeItemCommunityCheckResponse.availableCommunity) == null) {
                    return;
                }
                if (!storeItemCommunityCheckResponse.joined) {
                    AvatarFrameHelper.this.showJoinCommunityDialog(storeItemAvailableCommunity.name, storeItemAvailableCommunity.ndcId);
                    return;
                }
                Intent intent = FragmentWrapperActivity.intent(MonetizationStoreAvatarFrameFragment.class);
                intent.putExtra("id", avatarFrame.id());
                intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(avatarFrame));
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, AvatarFrameHelper.this.source);
                intent.putExtra("__communityId", storeItemCommunityCheckResponse.availableCommunity.ndcId);
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(AvatarFrameHelper.this.nvContext, intent);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                progressDialog.dismiss();
                NVToast.makeText(AvatarFrameHelper.this.nvContext.getContext(), str, 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showJoinCommunityDialog(String str, final int i10) {
        NVText nVText = new NVText(this.nvContext.getContext().getString(R.string.join_amio_hint));
        nVText.format(TextUtils.getBoldSpannableString(str));
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.nvContext.getContext());
        aCMAlertDialog.setMessage(nVText);
        aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, -4473925);
        aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.monetization.avatarframe.AvatarFrameHelper.4
            public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", i10);
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(AvatarFrameHelper.this.nvContext, intent);
            }
        }, -16745729);
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUserProfile() {
        AccountService accountService = (AccountService) this.nvContext.getService("account");
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().path("/user-profile/" + accountService.getUserId()).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.monetization.avatarframe.AvatarFrameHelper.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                super.onFinish(apiRequest, userResponse);
                AccountService accountService2 = (AccountService) AvatarFrameHelper.this.nvContext.getService("account");
                if (Utils.isEqualsNotNull(accountService2.getUserId(), userResponse.user.uid)) {
                    accountService2.updateProfile(userResponse.user, userResponse.timestamp, true);
                }
            }
        });
    }

    public void jumpToStoreWithCommunityCheck(AvatarFrame avatarFrame) {
        int communityId = this.config.getCommunityId();
        if (!avatarFrame.availableInAnyStore()) {
            Intent intent = FragmentWrapperActivity.intent(MonetizationStoreAvatarFrameFragment.class);
            intent.putExtra("id", avatarFrame.id());
            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(avatarFrame));
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.nvContext, intent);
            return;
        }
        if (!avatarFrame.availableInStore(communityId)) {
            checkCommunityJoined(avatarFrame);
            return;
        }
        Intent intent2 = FragmentWrapperActivity.intent(MonetizationStoreAvatarFrameFragment.class);
        intent2.putExtra("id", avatarFrame.id());
        intent2.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(avatarFrame));
        intent2.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.nvContext, intent2);
    }

    public void sendChangeAvatarSettingRequest(final AvatarFrame avatarFrame, boolean z6, final Callback<Boolean> callback) {
        ApiRequest.Builder builder = new ApiRequest.Builder();
        builder.post();
        builder.path("avatar-frame/apply");
        String strId = null;
        if (avatarFrame != null && !Utils.isEqualsNotNull(avatarFrame.id(), "default")) {
            strId = avatarFrame.id();
        }
        builder.param("frameId", strId);
        builder.param("applyToAll", Integer.valueOf(z6 ? 1 : 0));
        this.apiService.exec(builder.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.avatarframe.AvatarFrameHelper.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                NVToast.makeText(AvatarFrameHelper.this.nvContext.getContext(), str, 0).show();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.FALSE);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                AvatarFrame avatarFrame2 = avatarFrame;
                if (avatarFrame2 != null) {
                    avatarFrame2.isActivated = true;
                }
                AvatarFrameHelper.this.updateUserProfile();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
            }
        });
        ((StatisticsService) this.nvContext.getService("statistics")).event("Picks a Profile Frame").source(this.source).userPropInc("Picks a Profile Frame Total");
    }

    public void showAvatarSetDialog(AvatarFrame avatarFrame, boolean z6) {
        if (this.setAvatarFrameDialog == null) {
            this.setAvatarFrameDialog = new SetAvatarFrameDialog(z6);
        }
        this.setAvatarFrameDialog.show(avatarFrame);
        this.isGlobal = z6;
    }

    public AvatarFrameHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.config = (ConfigService) nVContext.getService("config");
        this.apiService = (ApiService) nVContext.getService("api");
    }
}
