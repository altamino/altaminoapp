package com.narvii.wallet.optinads;

import android.content.Intent;
import android.content.SharedPreferences;
import android.view.View;
import com.narvii.account.AccountResponseListener;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.membership.MembershipActivity;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class OptinAdsUtil {

    /* JADX INFO: renamed from: com.narvii.wallet.optinads.OptinAdsUtil$1, reason: invalid class name */
    class AnonymousClass1 extends AccountResponseListener {
        final /* synthetic */ String val$area;
        final /* synthetic */ Callback val$callback;
        final /* synthetic */ int val$level;
        final /* synthetic */ NVContext val$nvContext;
        final /* synthetic */ ProgressDialog val$progressDialog;
        final /* synthetic */ String val$source;

        public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(NVContext nVContext, ProgressDialog progressDialog, Callback callback, NVContext nVContext2, int i10, String str, String str2) {
            super(nVContext);
            this.val$progressDialog = progressDialog;
            this.val$callback = callback;
            this.val$nvContext = nVContext2;
            this.val$level = i10;
            this.val$source = str;
            this.val$area = str2;
        }

        @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
            ((SharedPreferences) NVApplication.instance().getService(IncubatorApplication.PREFS_SERVICE_KEY)).edit().remove("optinAds").apply();
            super.onFinish(apiRequest, accountResponse);
            this.val$progressDialog.dismiss();
            Callback callback = this.val$callback;
            if (callback != null) {
                callback.call(accountResponse);
            }
            ((StatisticsService) this.val$nvContext.getService("statistics")).event("Opt-in Ads Toggle").param("Toggle", this.val$level > 0 ? "On" : "Off").source(this.val$source).userProp("Opt-in Ads", this.val$level > 0).userPropInc("Opt-in Ads On Total");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onFail$0(View view) {
            LogEvent.clickBuilder(NVApplication.instance(), ActSemantic.cancelJoinAminoPlusTurnOffAds).allowNoPage().send();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onFail$1(NVContext nVContext, View view) {
            LogEvent.clickBuilder(NVApplication.instance(), ActSemantic.joinAminoPlusTurnOffAds).allowNoPage().send();
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, MembershipActivity.createMembershipIntent());
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i10, list, str, apiResponse, th);
            this.val$progressDialog.dismiss();
            if (i10 == 295) {
                AlertDialog alertDialog = new AlertDialog(this.val$nvContext.getContext());
                alertDialog.setMessage(str);
                alertDialog.addButton(R.string.cancel, 0, new View.OnClickListener() { // from class: com.narvii.wallet.optinads.h
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        OptinAdsUtil.AnonymousClass1.lambda$onFail$0(view);
                    }
                });
                final NVContext nVContext = this.val$nvContext;
                alertDialog.addButton(R.string.membership_join_now, 2, new View.OnClickListener() { // from class: com.narvii.wallet.optinads.i
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        OptinAdsUtil.AnonymousClass1.lambda$onFail$1(nVContext, view);
                    }
                });
                alertDialog.show();
                if (this.val$area != null) {
                    LogEvent.clickBuilder(this.val$nvContext, ActSemantic.requestAminoPlus).area(this.val$area).send();
                }
            } else {
                Utils.showShortToast(this.val$nvContext.getContext(), str);
            }
            Callback callback = this.val$callback;
            if (callback != null) {
                callback.call(null);
            }
        }
    }

    public static void optinAdsLevel(NVContext nVContext, int i10, String str, Callback<AccountResponse> callback) {
        optinAdsLevel(nVContext, i10, str, callback, null);
    }

    public static NVAdapter setupAdapter(NVContext nVContext, NVAdapter nVAdapter, String str, boolean z6) {
        return setupAdapter(nVContext, nVAdapter, 5, 5, str, z6);
    }

    public static List<String> breakParagraph(String str) {
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 1;
        while (i10 < length) {
            if (str.charAt(i10) == '\n') {
                i13++;
                if (i13 >= 10) {
                    arrayList.add(str.substring(i11, i10));
                    i12 = 0;
                    i13 = 0;
                    i11 = i10;
                } else {
                    i12 = 0;
                }
            } else {
                i12++;
                if (i12 >= 44) {
                    i13++;
                    i12 = 0;
                }
            }
            i10++;
        }
        if (i10 > i11) {
            String strSubstring = str.substring(i11, i10);
            if (strSubstring.trim().length() > 0) {
                arrayList.add(strSubstring);
            }
        }
        return arrayList;
    }

    public static void optinAdsLevel(NVContext nVContext, int i10, String str, Callback<AccountResponse> callback, String str2) {
        ProgressDialog progressDialog = new ProgressDialog(nVContext.getContext());
        progressDialog.show();
        ((ApiService) nVContext.getService("api")).exec(ApiRequest.builder().global().path("/wallet/ads/config").post().param("adsLevel", Integer.valueOf(i10)).build(), new AnonymousClass1(nVContext, progressDialog, callback, nVContext, i10, str, str2));
    }

    public static NVAdapter setupAdapter(NVContext nVContext, NVAdapter nVAdapter, int i10, int i11, String str, boolean z6) {
        if (!OptinAds.optin(nVContext, 1)) {
            return nVAdapter;
        }
        OptinAdsAdapter optinAdsAdapter = new OptinAdsAdapter(nVContext, i10, i11, str);
        optinAdsAdapter.addDivider = z6;
        optinAdsAdapter.setDarkTheme(Utils.isDarkTheme(nVContext));
        optinAdsAdapter.setAdapter(nVAdapter);
        return optinAdsAdapter;
    }

    public static int getBannerLift(NVContext nVContext, int i10) {
        if (OptinAds.optin(nVContext, i10)) {
            if (!(nVContext instanceof NVFragment) || !((NVFragment) nVContext).isEmbedFragment()) {
                return Utils.dpToPxInt(nVContext.getContext(), 50.0f);
            }
            return 0;
        }
        return 0;
    }
}
