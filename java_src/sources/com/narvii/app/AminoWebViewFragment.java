package com.narvii.app;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.util.LruCache;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.internal.ImagesContract;
import com.narvii.amino.HomeFragment;
import com.narvii.amino.master.R;
import com.narvii.community.CBBHost;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.livelayer.LiveLayerHost;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.model.api.ApiResponse;
import com.narvii.post.entry.PostEntryView;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.webview.WebViewFragment;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class AminoWebViewFragment extends WebViewFragment {
    static final LruCache<String, SafeBrowsingResult> safeBrowsingCache = new LruCache<>(64);
    View blockView;
    final Callback<Boolean> keyboardCallback = new Callback<Boolean>() { // from class: com.narvii.app.AminoWebViewFragment.1
        @Override // com.narvii.util.Callback
        public void call(Boolean bool) {
            Integer num = AminoWebViewFragment.this.safeValue;
            if ((num == null || num.intValue() == 0) && bool == Boolean.TRUE) {
                SoftKeyboard.hideSoftKeyboard(AminoWebViewFragment.this.getActivity());
                ((WebViewFragment) AminoWebViewFragment.this).webview.clearFocus();
                NVToast.makeText(AminoWebViewFragment.this.getContext(), R.string.webview_keyboard_blocked, 0).show();
            }
        }
    };
    SoftKeyboard.KeyboardObserver keyboardObserver;
    long loggingActiveTime;
    Integer safeValue;

    protected class AminoWebViewClient extends WebViewFragment.MyWebViewClient {
        ApiService api;
        long initFinishTime;
        String pendingSafeUrl;
        final ApiJsonResponseListener<ApiResponse> safeListener;
        ApiRequest safeRequest;
        final Runnable sendSafeRequest;
        boolean started;

        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        AminoWebViewClient() {
            super();
            this.sendSafeRequest = new Runnable() { // from class: com.narvii.app.AminoWebViewFragment.AminoWebViewClient.1
                @Override // java.lang.Runnable
                public void run() {
                    AminoWebViewClient aminoWebViewClient = AminoWebViewClient.this;
                    if (aminoWebViewClient.pendingSafeUrl == null || AminoWebViewFragment.this.isDestoryed()) {
                        return;
                    }
                    AminoWebViewClient.this.safeRequest = ApiRequest.builder().global().post().path("safe-browsing").param(ImagesContract.URL, AminoWebViewClient.this.pendingSafeUrl).tag(AminoWebViewClient.this.pendingSafeUrl).build();
                    AminoWebViewClient aminoWebViewClient2 = AminoWebViewClient.this;
                    aminoWebViewClient2.api.exec(aminoWebViewClient2.safeRequest, aminoWebViewClient2.safeListener);
                }
            };
            this.safeListener = new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.app.AminoWebViewFragment.AminoWebViewClient.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    int iNodeInt = JacksonUtils.nodeInt(json(), "value");
                    String str = (String) apiRequest.tag();
                    SafeBrowsingResult safeBrowsingResult = new SafeBrowsingResult();
                    safeBrowsingResult.url = str;
                    safeBrowsingResult.value = iNodeInt;
                    safeBrowsingResult.time = SystemClock.elapsedRealtime();
                    AminoWebViewFragment.safeBrowsingCache.put(str, safeBrowsingResult);
                    AminoWebViewFragment.this.setSafeValue(Integer.valueOf(iNodeInt));
                }
            };
            this.api = (ApiService) AminoWebViewFragment.this.getService("api");
        }

        @Override // com.narvii.webview.WebViewFragment.MyWebViewClient, android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Integer num = AminoWebViewFragment.this.safeValue;
            if (num != null && num.intValue() < 0) {
                return true;
            }
            if (this.initFinishTime == 0 || SystemClock.uptimeMillis() <= this.initFinishTime + 1000) {
                return super.shouldOverrideUrlLoading(webView, str);
            }
            if (ForwardActivity.translateLinkQuery(str) != null || ForwardActivity.isInviteLink(str) || ForwardActivity.isCommunityLink(str)) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    intent.setClass(AminoWebViewFragment.this.getContext(), ForwardActivity.class);
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(AminoWebViewFragment.this, intent);
                    return true;
                } catch (Exception unused) {
                }
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }

        @Override // com.narvii.webview.WebViewFragment.MyWebViewClient, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (this.initFinishTime == 0) {
                this.initFinishTime = SystemClock.uptimeMillis();
            }
        }

        /* JADX WARN: Code duplicated, block: B:21:0x006d  */
        /* JADX WARN: Code duplicated, block: B:24:0x0081 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:25:0x0083  */
        /* JADX WARN: Code duplicated, block: B:26:0x0089  */
        /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
        @Override // com.narvii.webview.WebViewFragment.MyWebViewClient, android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            boolean zIsPermalinkHost;
            String strTrimSafeBrowsingUrl;
            ApiRequest apiRequest;
            Handler handler;
            super.onPageStarted(webView, str, bitmap);
            boolean z6 = !this.started;
            this.started = true;
            try {
                zIsPermalinkHost = new PackageUtils(AminoWebViewFragment.this.getContext()).isPermalinkHost(Uri.parse(str).getHost());
            } catch (Exception unused) {
                zIsPermalinkHost = false;
            }
            if (zIsPermalinkHost) {
                AminoWebViewFragment.this.setSafeValue(1);
            } else {
                strTrimSafeBrowsingUrl = AminoWebViewFragment.trimSafeBrowsingUrl(str);
                SafeBrowsingResult safeBrowsingResult = AminoWebViewFragment.safeBrowsingCache.get(strTrimSafeBrowsingUrl);
                if (safeBrowsingResult != null && safeBrowsingResult.time > SystemClock.elapsedRealtime() - 300000) {
                    AminoWebViewFragment.this.setSafeValue(Integer.valueOf(safeBrowsingResult.value));
                } else {
                    AminoWebViewFragment.this.setSafeValue(null);
                }
                if (!z6 || !Utils.isStringEquals(strTrimSafeBrowsingUrl, this.pendingSafeUrl)) {
                    this.pendingSafeUrl = strTrimSafeBrowsingUrl;
                    apiRequest = this.safeRequest;
                    if (apiRequest != null) {
                        this.api.abort(apiRequest, this.safeListener);
                        this.safeRequest = null;
                    }
                    handler = Utils.handler;
                    handler.removeCallbacks(this.sendSafeRequest);
                    if (this.pendingSafeUrl != null) {
                        if (z6) {
                            this.sendSafeRequest.run();
                        } else {
                            handler.postDelayed(this.sendSafeRequest, 500L);
                        }
                    }
                }
                return;
            }
            strTrimSafeBrowsingUrl = null;
            if (!z6) {
            }
            this.pendingSafeUrl = strTrimSafeBrowsingUrl;
            apiRequest = this.safeRequest;
            if (apiRequest != null) {
                this.api.abort(apiRequest, this.safeListener);
                this.safeRequest = null;
            }
            handler = Utils.handler;
            handler.removeCallbacks(this.sendSafeRequest);
            if (this.pendingSafeUrl != null) {
                if (z6) {
                    this.sendSafeRequest.run();
                } else {
                    handler.postDelayed(this.sendSafeRequest, 500L);
                }
            }
        }
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment
    public boolean isModel() {
        return false;
    }

    static class SafeBrowsingResult {
        long time;
        String url;
        int value;

        SafeBrowsingResult() {
        }
    }

    static String trimSafeBrowsingUrl(String str) {
        int iIndexOf = str.indexOf(35);
        return iIndexOf > 0 ? str.substring(0, iIndexOf) : str;
    }

    @Override // com.narvii.webview.WebViewFragment
    protected WebViewClient createWebViewClient() {
        return new AminoWebViewClient();
    }

    void setSafeValue(Integer num) {
        Integer num2 = this.safeValue;
        if (num2 != null && num2.intValue() < 0) {
            WebView webView = this.webview;
            if (webView != null) {
                webView.stopLoading();
                return;
            }
            return;
        }
        int iIntValue = num == null ? 0 : num.intValue();
        this.safeValue = num;
        WebView webView2 = this.webview;
        if (webView2 != null) {
            webView2.setVisibility(iIntValue >= 0 ? 0 : 4);
        }
        hideToolbar(iIntValue < 0);
        this.blockView.setVisibility(iIntValue >= 0 ? 4 : 0);
        if (iIntValue <= 0 && isActive()) {
            SoftKeyboard.hideSoftKeyboard(getActivity());
        }
        if (iIntValue < 0) {
            setTitle((CharSequence) null);
        }
    }

    @Override // com.narvii.webview.WebViewFragment
    protected void startActivityFromWebView(Intent intent) {
        PackageUtils packageUtils = new PackageUtils(getContext());
        if (intent.getData() != null && packageUtils.isNativeAminoScheme(intent.getScheme())) {
            super.startActivityFromWebView(intent);
            return;
        }
        Log.w("block native launch in webview " + intent);
    }

    @Override // com.narvii.webview.WebViewFragment
    public void hideToolbar(boolean z6) {
        LiveLayerOnlineBar liveLayerOnlineBar;
        super.hideToolbar(z6);
        if (getActivity() instanceof DrawerActivity) {
            if ((getParentFragment() instanceof HomeFragment) && !((HomeFragment) getParentFragment()).isFragmentSelected(this)) {
                return;
            }
            PostEntryView postEntryView = ((DrawerActivity) getActivity()).getPostEntryView();
            if (postEntryView != null) {
                postEntryView.setLift1(getPostEntryLift(), false);
            }
            LiveLayerHost liveLayerHost = (LiveLayerHost) getService("liveLayerHost");
            if (liveLayerHost != null && (liveLayerOnlineBar = liveLayerHost.onlineBar) != null) {
                liveLayerOnlineBar.setLift(getOnlineBarLift());
            }
            CBBHost cBBHost = (CBBHost) getService("cbbHost");
            if (cBBHost != null) {
                cBBHost.setLift(getCBBLift());
            }
        }
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        String str;
        super.onActiveChanged(z6);
        if (z6) {
            if (this.keyboardObserver == null) {
                this.keyboardObserver = SoftKeyboard.observeKeyboard(this.blockView, this.keyboardCallback);
            }
            setSafeValue(this.safeValue);
        } else {
            SoftKeyboard.KeyboardObserver keyboardObserver = this.keyboardObserver;
            if (keyboardObserver != null) {
                keyboardObserver.dispose();
                this.keyboardObserver = null;
            }
        }
        String stringParam = getStringParam("loggingObjectId");
        if (stringParam != null) {
            LoggingService loggingService = (LoggingService) getService("logging");
            ArrayList arrayList = new ArrayList();
            arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID);
            arrayList.add(stringParam);
            int intParam = getIntParam("loggingObjectType");
            arrayList.add(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE);
            arrayList.add(Integer.valueOf(intParam));
            if (intParam == 1) {
                arrayList.add("blogType");
                arrayList.add(Integer.valueOf(getIntParam("loggingBlogType")));
            }
            if (z6) {
                this.loggingActiveTime = SystemClock.elapsedRealtime();
            } else if (this.loggingActiveTime > 0) {
                long jElapsedRealtime = SystemClock.elapsedRealtime() - this.loggingActiveTime;
                this.loggingActiveTime = 0L;
                arrayList.add(TypedValues.TransitionType.S_DURATION);
                arrayList.add(Long.valueOf(jElapsedRealtime));
            }
            if (z6) {
                str = "WebContentEntered";
            } else {
                str = "WebContentQuited";
            }
            loggingService.lambda$logEvent$0(str, arrayList.toArray());
        }
    }

    @Override // com.narvii.webview.WebViewFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.webview_ex_layout, viewGroup, false);
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.blockView = view.findViewById(R.id.webview_block);
        AndroidBug5497Workaround.assistActivity(getActivity());
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Custom Web Page Opened").userPropInc("Custom Web Page Opened Total").source(getStringParam(ExternalPostPreviewFragment.SOURCE));
        }
    }
}
