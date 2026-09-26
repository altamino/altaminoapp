package com.narvii.poweruser;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentTransaction;
import com.google.firebase.sessions.settings.c;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Feed;
import com.narvii.model.ItemCategory;
import com.narvii.model.LinkSummary;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.share.ShareLinkHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.crawler.TextCrawler;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class SendBroadcastHelper {
    public static final int API_ERR_PUSH_SERVER_LIMITATION_APART = 2501;
    public static final int API_ERR_PUSH_SERVER_LIMITATION_COUNT = 2502;
    public static final int API_ERR_PUSH_SERVER_LIMITATION_TIME = 2504;
    public static final int API_ERR_PUSH_SERVER_LINK_NOT_IN_COMMUNITY = 2503;
    public ApiRequest apiRequest;
    private ConfigService configService;
    String linkUrl;
    boolean loading = false;
    private NVContext nvContext;
    PackageUtils packageUtils;
    private ProgressDialog progressDialog;
    private ShareLinkHelper shareLinkHelper;
    private TextCrawler textCrawler;

    private void checkIfCanPush(final NVObject nVObject) {
        ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        this.progressDialog = progressDialog;
        progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.poweruser.SendBroadcastHelper.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                SendBroadcastHelper sendBroadcastHelper = SendBroadcastHelper.this;
                sendBroadcastHelper.loading = false;
                if (sendBroadcastHelper.apiRequest != null) {
                    ((ApiService) sendBroadcastHelper.nvContext.getService("api")).abort(SendBroadcastHelper.this.apiRequest);
                }
            }
        });
        this.progressDialog.show();
        this.loading = true;
        ApiService apiService = (ApiService) this.nvContext.getService("api");
        ApiRequest apiRequestBuild = ApiRequest.builder().path("/push/check").build();
        this.apiRequest = apiRequestBuild;
        apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.poweruser.SendBroadcastHelper.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                SendBroadcastHelper sendBroadcastHelper = SendBroadcastHelper.this;
                if (sendBroadcastHelper.loading) {
                    sendBroadcastHelper.safeCloseProgressDialog();
                    SendBroadcastHelper.this.processError(i10, str, new View.OnClickListener() { // from class: com.narvii.poweruser.SendBroadcastHelper.2.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                        }
                    });
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                String strTitle;
                List<Media> list;
                super.onFinish(apiRequest, apiResponse);
                SendBroadcastHelper sendBroadcastHelper = SendBroadcastHelper.this;
                if (!sendBroadcastHelper.loading) {
                    return;
                }
                int communityId = ((ConfigService) sendBroadcastHelper.nvContext.getService("config")).getCommunityId();
                String strObjectTypeName = NVObject.objectTypeName(nVObject.objectType());
                String strId = nVObject.id();
                if (communityId != 0 && strObjectTypeName != null && strId != null) {
                    SendBroadcastHelper.this.linkUrl = "ndc://x" + communityId + c.FORWARD_SLASH_STRING + strObjectTypeName + c.FORWARD_SLASH_STRING + strId;
                    SendBroadcastHelper.this.safeCloseProgressDialog();
                    LinkSummary linkSummary = new LinkSummary();
                    NVObject nVObject2 = nVObject;
                    if (nVObject2 instanceof Feed) {
                        strTitle = ((Feed) nVObject2).title();
                        list = ((Feed) nVObject).mediaList;
                    } else if (nVObject2 instanceof ItemCategory) {
                        String str = ((ItemCategory) nVObject2).label;
                        list = ((ItemCategory) nVObject2).mediaList;
                        strTitle = str;
                    } else {
                        strTitle = null;
                        list = null;
                    }
                    linkSummary.title = strTitle;
                    linkSummary.mediaList = list;
                    SendBroadcastHelper sendBroadcastHelper2 = SendBroadcastHelper.this;
                    sendBroadcastHelper2.showSendBroadcastDialog(linkSummary, sendBroadcastHelper2.linkUrl);
                    return;
                }
                NVToast.makeText(SendBroadcastHelper.this.nvContext.getContext(), R.string.goto_link_invalid, 0).show();
                SendBroadcastHelper.this.safeCloseProgressDialog();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void safeCloseProgressDialog() {
        try {
            ProgressDialog progressDialog = this.progressDialog;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSendBroadcastDialog(LinkSummary linkSummary, String str) {
        SendBroadcastDialogFragment sendBroadcastDialogFragment = new SendBroadcastDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("membersCount", ((CommunityService) this.nvContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(((ConfigService) this.nvContext.getService("config")).getCommunityId()).membersCount);
        bundle.putString("linkUrl", str);
        bundle.putString("linkSummary", JacksonUtils.writeAsString(linkSummary));
        sendBroadcastDialogFragment.setArguments(bundle);
        if (!(this.nvContext.getContext() instanceof NVActivity)) {
            Log.e("send broadcast fail - not activity");
            return;
        }
        try {
            FragmentTransaction fragmentTransactionQ = ((NVActivity) this.nvContext.getContext()).getSupportFragmentManager().q();
            fragmentTransactionQ.e(sendBroadcastDialogFragment, "send_broadcast");
            fragmentTransactionQ.k();
        } catch (Exception unused) {
        }
    }

    public void processError(int i10, String str, final View.OnClickListener onClickListener) {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.nvContext.getContext());
        switch (i10) {
            case API_ERR_PUSH_SERVER_LIMITATION_APART /* 2501 */:
            case API_ERR_PUSH_SERVER_LIMITATION_COUNT /* 2502 */:
            case API_ERR_PUSH_SERVER_LIMITATION_TIME /* 2504 */:
                aCMAlertDialog.setTitle(R.string.sorry);
                break;
            case API_ERR_PUSH_SERVER_LINK_NOT_IN_COMMUNITY /* 2503 */:
                aCMAlertDialog.setTitle(R.string.link_required);
                break;
            default:
                NVToast.makeText(this.nvContext.getContext(), str, 1).show();
                return;
        }
        aCMAlertDialog.setMessage(str);
        aCMAlertDialog.addButton(android.R.string.ok, onClickListener);
        aCMAlertDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.poweruser.SendBroadcastHelper.3
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                View.OnClickListener onClickListener2 = onClickListener;
                if (onClickListener2 != null) {
                    onClickListener2.onClick(null);
                }
            }
        });
        aCMAlertDialog.show();
    }

    public void sendBroadcast(NVObject nVObject) {
        if (nVObject == null) {
            return;
        }
        checkIfCanPush(nVObject);
    }

    public SendBroadcastHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.shareLinkHelper = new ShareLinkHelper(nVContext);
        this.configService = (ConfigService) nVContext.getService("config");
        this.packageUtils = new PackageUtils(nVContext.getContext());
        this.textCrawler = new TextCrawler(nVContext);
    }
}
