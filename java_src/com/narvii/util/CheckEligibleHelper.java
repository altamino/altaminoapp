package com.narvii.util;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.narvii.account.AccountService;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.api.ApiResponse;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes3.dex */
public class CheckEligibleHelper {
    NVContext nvContext;
    public ApiRequest req;

    public CheckEligibleHelper(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public void checkEligible(String str, String str2, final Callback callback) {
        final ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        progressDialog.show();
        progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.util.CheckEligibleHelper.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                CheckEligibleHelper checkEligibleHelper = CheckEligibleHelper.this;
                if (checkEligibleHelper.req != null) {
                    ((ApiService) checkEligibleHelper.nvContext.getService("api")).abort(CheckEligibleHelper.this.req);
                }
            }
        });
        AccountService accountService = (AccountService) this.nvContext.getService("account");
        if (!accountService.hasAccount()) {
            if (this.nvContext.getContext() instanceof NVActivity) {
                ((NVActivity) this.nvContext.getContext()).ensureLogin(new Intent(CommunityDetailFragment.KEY_LOGIN_AHEAD));
                return;
            }
            return;
        }
        ApiRequest.Builder builderParam = ApiRequest.builder().path("user-profile/" + accountService.getUserId() + "/compose-eligible-check").param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, str);
        if (!TextUtils.isEmpty(str2)) {
            builderParam.param("objectSubtype", str2);
        }
        builderParam.userInteraction();
        this.req = builderParam.build();
        ((ApiService) this.nvContext.getService("api")).exec(this.req, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.util.CheckEligibleHelper.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(null);
                }
                try {
                    progressDialog.dismiss();
                } catch (Exception unused) {
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                try {
                    progressDialog.dismiss();
                } catch (Exception unused) {
                }
                if ((i != 238 || CheckEligibleHelper.this.checkActivation()) && i != 0 && ApiService.shouldShowErrMessage(CheckEligibleHelper.this.nvContext.getContext())) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(CheckEligibleHelper.this.nvContext.getContext());
                    builder.setMessage(str3);
                    builder.setNegativeButton(R.string.close, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                    builder.show();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkActivation() {
        AccountService accountService = (AccountService) Utils.getNVContext(this.nvContext.getContext()).getService("account");
        if (!accountService.hasAccount() || accountService.hasActivation()) {
            return true;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.nvContext.getContext());
        builder.setTitle(R.string.post_not_eligible);
        builder.setMessage(R.string.post_activate_account_first);
        builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        builder.setPositiveButton(R.string.post_activate_account, new DialogInterface.OnClickListener() { // from class: com.narvii.util.CheckEligibleHelper.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
                try {
                    CheckEligibleHelper.this.nvContext.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("ndc://activation")));
                } catch (Exception unused) {
                }
            }
        });
        builder.show();
        return false;
    }
}
