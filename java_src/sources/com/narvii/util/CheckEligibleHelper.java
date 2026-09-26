package com.narvii.util;

import android.app.AlertDialog;
import android.content.Context;
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
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class CheckEligibleHelper {
    NVContext nvContext;
    public ApiRequest req;

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
            public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                dialogInterface.cancel();
                try {
                    safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(CheckEligibleHelper.this.nvContext.getContext(), new Intent("android.intent.action.VIEW", Uri.parse("ndc://activation")));
                } catch (Exception unused) {
                }
            }
        });
        builder.show();
        return false;
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
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                try {
                    progressDialog.dismiss();
                } catch (Exception unused) {
                }
                if ((i10 != 238 || CheckEligibleHelper.this.checkActivation()) && i10 != 0 && ApiService.shouldShowErrMessage(CheckEligibleHelper.this.nvContext.getContext())) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(CheckEligibleHelper.this.nvContext.getContext());
                    builder.setMessage(str3);
                    builder.setNegativeButton(R.string.close, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                    builder.show();
                }
            }

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
        });
    }

    public CheckEligibleHelper(NVContext nVContext) {
        this.nvContext = nVContext;
    }
}
