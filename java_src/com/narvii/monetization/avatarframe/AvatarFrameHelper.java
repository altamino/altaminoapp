package com.narvii.monetization.avatarframe;

import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
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
import com.narvii.util.text.NVText;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import java.util.List;

/* loaded from: classes3.dex */
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

    public AvatarFrameHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.config = (ConfigService) nVContext.getService("config");
        this.apiService = (ApiService) nVContext.getService("api");
    }

    public void showAvatarSetDialog(AvatarFrame avatarFrame) {
        showAvatarSetDialog(avatarFrame, false);
    }

    public void showAvatarSetDialog(AvatarFrame avatarFrame, boolean z) {
        if (this.setAvatarFrameDialog == null) {
            this.setAvatarFrameDialog = new SetAvatarFrameDialog(z);
        }
        this.setAvatarFrameDialog.show(avatarFrame);
        this.isGlobal = z;
    }

    public void sendChangeAvatarSettingRequest(final AvatarFrame avatarFrame, boolean z, final Callback<Boolean> callback) {
        ApiRequest.Builder builder = new ApiRequest.Builder();
        builder.post();
        builder.path("avatar-frame/apply");
        String strId = null;
        if (avatarFrame != null && !Utils.isEqualsNotNull(avatarFrame.id(), "default")) {
            strId = avatarFrame.id();
        }
        builder.param("frameId", strId);
        builder.param("applyToAll", Integer.valueOf(z ? 1 : 0));
        this.apiService.exec(builder.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.monetization.avatarframe.AvatarFrameHelper.1
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
                    callback2.call(true);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                NVToast.makeText(AvatarFrameHelper.this.nvContext.getContext(), str, 0).show();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(false);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUserProfile() {
        AccountService accountService = (AccountService) this.nvContext.getService("account");
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().path("/user-profile/" + accountService.getUserId()).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.monetization.avatarframe.AvatarFrameHelper.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) userResponse);
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
            intent.putExtra("Source", this.source);
            this.nvContext.startActivity(intent);
            return;
        }
        if (avatarFrame.availableInStore(communityId)) {
            Intent intent2 = FragmentWrapperActivity.intent(MonetizationStoreAvatarFrameFragment.class);
            intent2.putExtra("id", avatarFrame.id());
            intent2.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(avatarFrame));
            intent2.putExtra("Source", this.source);
            this.nvContext.startActivity(intent2);
            return;
        }
        checkCommunityJoined(avatarFrame);
    }

    private void checkCommunityJoined(final AvatarFrame avatarFrame) {
        final ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        progressDialog.show();
        this.apiService.exec(new ApiRequest.Builder().path("/store/recommend-store-by-product").param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, avatarFrame.id()).param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, 122).build(), new ApiResponseListener<StoreItemCommunityCheckResponse>(StoreItemCommunityCheckResponse.class) { // from class: com.narvii.monetization.avatarframe.AvatarFrameHelper.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StoreItemCommunityCheckResponse storeItemCommunityCheckResponse) throws Exception {
                StoreItemAvailableCommunity storeItemAvailableCommunity;
                super.onFinish(apiRequest, (ApiRequest) storeItemCommunityCheckResponse);
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
                intent.putExtra("Source", AvatarFrameHelper.this.source);
                intent.putExtra("__communityId", storeItemCommunityCheckResponse.availableCommunity.ndcId);
                AvatarFrameHelper.this.nvContext.startActivity(intent);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                progressDialog.dismiss();
                NVToast.makeText(AvatarFrameHelper.this.nvContext.getContext(), str, 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showJoinCommunityDialog(String str, final int i) {
        NVText nVText = new NVText(this.nvContext.getContext().getString(R.string.join_amio_hint));
        nVText.format(TextUtils.getBoldSpannableString(str));
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.nvContext.getContext());
        aCMAlertDialog.setMessage(nVText);
        aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, -4473925);
        aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.monetization.avatarframe.AvatarFrameHelper.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", i);
                AvatarFrameHelper.this.nvContext.startActivity(intent);
            }
        }, -16745729);
        aCMAlertDialog.show();
    }

    public void setAvatarFrameListener(OnAvatarFrameChangedListener onAvatarFrameChangedListener) {
        this.listener = onAvatarFrameChangedListener;
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

        public void updateView() {
        }

        public SetAvatarFrameDialog(AvatarFrameHelper avatarFrameHelper) {
            this(false);
        }

        public SetAvatarFrameDialog(boolean z) {
            super(AvatarFrameHelper.this.nvContext.getContext());
            setContentView(R.layout.dialog_set_avatar_frame_hint);
            this.btnClose = findViewById(R.id.close);
            this.btnClose.setOnClickListener(this);
            this.btnSetForOne = findViewById(R.id.set_for_this_amino);
            this.btnSetForOne.setOnClickListener(this);
            View view = this.btnSetForOne;
            if ((view instanceof TextView) && z) {
                ((TextView) view).setText(R.string.set_for_global);
            }
            this.btnSetForAll = findViewById(R.id.set_for_all_amino);
            this.btnSetForAll.setOnClickListener(this);
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
            switch (view.getId()) {
                case R.id.close /* 2131296862 */:
                    dismiss();
                    break;
                case R.id.set_for_all_amino /* 2131298837 */:
                case R.id.set_for_this_amino /* 2131298838 */:
                    AvatarFrame avatarFrame = this.avatarFrame;
                    if (avatarFrame != null) {
                        AvatarFrameHelper.this.sendChangeAvatarSettingRequest(avatarFrame, view.getId() == R.id.set_for_all_amino, new Callback<Boolean>() { // from class: com.narvii.monetization.avatarframe.AvatarFrameHelper.SetAvatarFrameDialog.1
                            @Override // com.narvii.util.Callback
                            public void call(Boolean bool) throws Resources.NotFoundException {
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
                        break;
                    }
                    break;
            }
        }
    }
}
