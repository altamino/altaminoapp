package com.narvii.app;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.LruCache;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.narvii.amino.HomeFragment;
import com.narvii.amino.mastes.R;
import com.narvii.community.CBBHost;
import com.narvii.livelayer.LiveLayerHost;
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
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.logging.LoggingService;
import com.narvii.webview.WebViewFragment;
import java.util.ArrayList;

/* loaded from: classes2.dex */
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

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment
    public boolean isModel() {
        return false;
    }

    @Override // com.narvii.webview.WebViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.webview_ex_layout, viewGroup, false);
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.blockView = view.findViewById(R.id.webview_block);
        AndroidBug5497Workaround.assistActivity(getActivity());
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        super.onActiveChanged(z);
        if (z) {
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
            if (z) {
                this.loggingActiveTime = SystemClock.elapsedRealtime();
            } else if (this.loggingActiveTime > 0) {
                long jElapsedRealtime = SystemClock.elapsedRealtime() - this.loggingActiveTime;
                this.loggingActiveTime = 0L;
                arrayList.add("duration");
                arrayList.add(Long.valueOf(jElapsedRealtime));
            }
            loggingService.lambda$logEvent$0$LoggingServiceImpl(z ? "WebContentEntered" : "WebContentQuited", arrayList.toArray());
        }
    }

    @Override // com.narvii.webview.WebViewFragment
    public void hideToolbar(boolean z) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        super.hideToolbar(z);
        if (getActivity() instanceof DrawerActivity) {
            if (!(getParentFragment() instanceof HomeFragment) || ((HomeFragment) getParentFragment()).isFragmentSelected(this)) {
                PostEntryView postEntryView = ((DrawerActivity) getActivity()).getPostEntryView();
                if (postEntryView != null) {
                    postEntryView.setLift1(getPostEntryLift(), false);
                }
                LiveLayerHost liveLayerHost = (LiveLayerHost) getService("liveLayerHost");
                if (liveLayerHost == null || liveLayerHost.onlineBar != null) {
                }
                if (((CBBHost) getService("cbbHost")) != null) {
                }
            }
        }
    }

    void setSafeValue(Integer num) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
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
    protected WebViewClient createWebViewClient() {
        return new AminoWebViewClient();
    }

    protected class AminoWebViewClient extends WebViewFragment.MyWebViewClient {
        ApiService api;
        long initFinishTime;
        String pendingSafeUrl;
        final ApiJsonResponseListener<ApiResponse> safeListener;
        ApiRequest safeRequest;
        final Runnable sendSafeRequest;
        boolean started;

        AminoWebViewClient() {
            super();
            this.sendSafeRequest = new Runnable() { // from class: com.narvii.app.AminoWebViewFragment.AminoWebViewClient.1
                @Override // java.lang.Runnable
                public void run() {
                    AminoWebViewClient aminoWebViewClient = AminoWebViewClient.this;
                    if (aminoWebViewClient.pendingSafeUrl == null || AminoWebViewFragment.this.isDestoryed()) {
                        return;
                    }
                    AminoWebViewClient.this.safeRequest = ApiRequest.builder().global().post().path("safe-browsing").param("url", AminoWebViewClient.this.pendingSafeUrl).tag(AminoWebViewClient.this.pendingSafeUrl).build();
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

        /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
        @Override // com.narvii.webview.WebViewFragment.MyWebViewClient, android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onPageStarted(android.webkit.WebView r9, java.lang.String r10, android.graphics.Bitmap r11) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, android.content.res.Resources.NotFoundException, java.lang.IllegalArgumentException {
            /*
                r8 = this;
                super.onPageStarted(r9, r10, r11)
                boolean r9 = r8.started
                r11 = 1
                r9 = r9 ^ r11
                r8.started = r11
                r0 = 0
                android.net.Uri r1 = android.net.Uri.parse(r10)     // Catch: java.lang.Exception -> L22
                com.narvii.util.PackageUtils r2 = new com.narvii.util.PackageUtils     // Catch: java.lang.Exception -> L22
                com.narvii.app.AminoWebViewFragment r3 = com.narvii.app.AminoWebViewFragment.this     // Catch: java.lang.Exception -> L22
                android.content.Context r3 = r3.getContext()     // Catch: java.lang.Exception -> L22
                r2.<init>(r3)     // Catch: java.lang.Exception -> L22
                java.lang.String r1 = r1.getHost()     // Catch: java.lang.Exception -> L22
                boolean r0 = r2.isPermalinkHost(r1)     // Catch: java.lang.Exception -> L22
                goto L23
            L22:
            L23:
                r1 = 0
                if (r0 == 0) goto L31
                com.narvii.app.AminoWebViewFragment r10 = com.narvii.app.AminoWebViewFragment.this
                java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
                r10.setSafeValue(r11)
            L2f:
                r10 = r1
                goto L5e
            L31:
                java.lang.String r10 = com.narvii.app.AminoWebViewFragment.trimSafeBrowsingUrl(r10)
                android.util.LruCache<java.lang.String, com.narvii.app.AminoWebViewFragment$SafeBrowsingResult> r11 = com.narvii.app.AminoWebViewFragment.safeBrowsingCache
                java.lang.Object r11 = r11.get(r10)
                com.narvii.app.AminoWebViewFragment$SafeBrowsingResult r11 = (com.narvii.app.AminoWebViewFragment.SafeBrowsingResult) r11
                if (r11 == 0) goto L59
                long r2 = r11.time
                long r4 = android.os.SystemClock.elapsedRealtime()
                r6 = 300000(0x493e0, double:1.482197E-318)
                long r4 = r4 - r6
                int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r0 <= 0) goto L59
                com.narvii.app.AminoWebViewFragment r10 = com.narvii.app.AminoWebViewFragment.this
                int r11 = r11.value
                java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
                r10.setSafeValue(r11)
                goto L2f
            L59:
                com.narvii.app.AminoWebViewFragment r11 = com.narvii.app.AminoWebViewFragment.this
                r11.setSafeValue(r1)
            L5e:
                if (r9 != 0) goto L68
                java.lang.String r11 = r8.pendingSafeUrl
                boolean r11 = com.narvii.util.Utils.isStringEquals(r10, r11)
                if (r11 != 0) goto L93
            L68:
                r8.pendingSafeUrl = r10
                com.narvii.util.http.ApiRequest r10 = r8.safeRequest
                if (r10 == 0) goto L77
                com.narvii.util.http.ApiService r11 = r8.api
                com.narvii.util.http.ApiJsonResponseListener<com.narvii.model.api.ApiResponse> r0 = r8.safeListener
                r11.abort(r10, r0)
                r8.safeRequest = r1
            L77:
                android.os.Handler r10 = com.narvii.util.Utils.handler
                java.lang.Runnable r11 = r8.sendSafeRequest
                r10.removeCallbacks(r11)
                java.lang.String r10 = r8.pendingSafeUrl
                if (r10 == 0) goto L93
                if (r9 == 0) goto L8a
                java.lang.Runnable r9 = r8.sendSafeRequest
                r9.run()
                goto L93
            L8a:
                android.os.Handler r9 = com.narvii.util.Utils.handler
                java.lang.Runnable r10 = r8.sendSafeRequest
                r0 = 500(0x1f4, double:2.47E-321)
                r9.postDelayed(r10, r0)
            L93:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.app.AminoWebViewFragment.AminoWebViewClient.onPageStarted(android.webkit.WebView, java.lang.String, android.graphics.Bitmap):void");
        }

        @Override // com.narvii.webview.WebViewFragment.MyWebViewClient, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (this.initFinishTime == 0) {
                this.initFinishTime = SystemClock.uptimeMillis();
            }
        }

        @Override // com.narvii.webview.WebViewFragment.MyWebViewClient, android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (this.initFinishTime != 0 && SystemClock.uptimeMillis() > this.initFinishTime + 1000) {
                if (ForwardActivity.translateLinkQuery(str) != null || ForwardActivity.isInviteLink(str) || ForwardActivity.isCommunityLink(str)) {
                    try {
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        intent.setClass(AminoWebViewFragment.this.getContext(), ForwardActivity.class);
                        AminoWebViewFragment.this.startActivity(intent);
                        return true;
                    } catch (Exception unused) {
                    }
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }

    static String trimSafeBrowsingUrl(String str) {
        int iIndexOf = str.indexOf(35);
        return iIndexOf > 0 ? str.substring(0, iIndexOf) : str;
    }

    static class SafeBrowsingResult {
        long time;
        String url;
        int value;

        SafeBrowsingResult() {
        }
    }
}
