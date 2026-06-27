package com.narvii.webview;

import android.annotation.SuppressLint;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.narvii.account.AccountService;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.widget.SmoothProgressBar;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;
import java.lang.reflect.InvocationTargetException;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public class WebViewFragment extends NVFragment implements View.OnClickListener, FragmentOnBackListener {
    static final int PROGRESS_MAX = 100;
    private static long initCookieTime;
    private static ValueCallback<Uri[]> mUploadMessageAboveL;
    protected int errorCode;
    private boolean hideToolbar;
    protected boolean isLoading;
    private SoftKeyboard.KeyboardObserver keyboardObserver;
    private Uri mCapturedImageURI;
    private ValueCallback<Uri> mUploadMessage;
    private int prevGoBackCount;
    private long prevGoBackTime;
    private String prevGoBackUrl;
    SmoothProgressBar progressBar;
    private boolean showProgress;
    protected View toolbar;
    private TintButton toolbarAction;
    private TintButton toolbarBack;
    private TintButton toolbarForward;
    private TintButton toolbarRefresh;
    private SpinningView toolbarStop;
    private String url;
    protected WebView webview;
    private int FILECHOOSER_RESULTCODE = 1011;
    private final Runnable updateToolbarRunnable = new Runnable() { // from class: com.narvii.webview.WebViewFragment.3
        @Override // java.lang.Runnable
        public void run() {
            WebViewFragment.this.updateToolbar(true);
        }
    };

    @Override // com.narvii.app.NVFragment
    public boolean hideCBBInHomeFragment() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    public boolean onBackPressed(NVActivity nVActivity) {
        return false;
    }

    protected void onRawHtmlResult(String str) {
    }

    public void setShowProgress(boolean z) {
        this.showProgress = z;
        SmoothProgressBar smoothProgressBar = this.progressBar;
        if (smoothProgressBar != null) {
            smoothProgressBar.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        if (this.hideToolbar) {
            return 0;
        }
        return getResources().getDimensionPixelSize(R.dimen.webview_toolbar_height);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (TextUtils.isEmpty(getStringParam("url"))) {
            return;
        }
        Log.d("webview opening url " + getStringParam("url"));
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.webview_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setTitle((CharSequence) null);
    }

    private boolean darkTheme() {
        ((ConfigService) getService("config")).getCommunityId();
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Bundle bundle2;
        int iColorPrimary;
        super.onViewCreated(view, bundle);
        this.progressBar = (SmoothProgressBar) view.findViewById(R.id.progress_bar);
        this.progressBar.setOnProgressFinishListener(new SmoothProgressBar.OnProgressFinishListener() { // from class: com.narvii.webview.WebViewFragment.1
            @Override // com.narvii.widget.SmoothProgressBar.OnProgressFinishListener
            public void onProgressFinish() {
                WebViewFragment.this.progressBar.setVisibility(8);
            }
        });
        if (bundle != null) {
            this.hideToolbar = bundle.getBoolean("hideToolbar");
            bundle2 = bundle.getBundle("webviewState");
        } else {
            bundle2 = null;
        }
        if (this.url == null) {
            this.url = getStringParam("url");
        }
        if (TextUtils.isEmpty(this.url) && getActivity().getIntent().getDataString() != null) {
            this.url = getActivity().getIntent().getDataString();
        }
        initCookie();
        this.webview = (WebView) view.findViewById(R.id.webview);
        initWebViewSettings(this.webview);
        this.toolbar = view.findViewById(R.id.webview_toolbar);
        ConfigService configService = (ConfigService) getService("config");
        if (configService.getCommunityId() != 0) {
            iColorPrimary = configService.getTheme().colorPrimary();
        } else {
            iColorPrimary = NVApplication.CLIENT_TYPE == 200 ? -9945367 : -14540732;
        }
        this.toolbar.setBackgroundColor(iColorPrimary);
        this.toolbarBack = (TintButton) this.toolbar.findViewById(R.id.webview_back);
        this.toolbarBack.setOnClickListener(this);
        this.toolbarBack.setImageResource(Utils.isRtl() ? R.drawable.ic_webview_toolbar_forward : R.drawable.ic_webview_toolbar_back);
        this.toolbarForward = (TintButton) this.toolbar.findViewById(R.id.webview_forward);
        this.toolbarForward.setImageResource(Utils.isRtl() ? R.drawable.ic_webview_toolbar_back : R.drawable.ic_webview_toolbar_forward);
        this.toolbarForward.setOnClickListener(this);
        this.toolbarStop = (SpinningView) this.toolbar.findViewById(R.id.webview_stop);
        this.toolbarStop.setOnClickListener(this);
        this.toolbarRefresh = (TintButton) this.toolbar.findViewById(R.id.webview_refresh);
        this.toolbarRefresh.setOnClickListener(this);
        this.toolbarAction = (TintButton) this.toolbar.findViewById(R.id.webview_action);
        this.toolbarAction.setOnClickListener(this);
        if (this.hideToolbar) {
            this.toolbar.setVisibility(8);
        }
        updateToolbar(true);
        if (bundle2 != null) {
            this.webview.restoreState(bundle2);
        } else {
            String str = this.url;
            if (str != null) {
                this.webview.loadUrl(getTransformUrl(str), getHeaders(this.url));
            }
        }
        this.keyboardObserver = SoftKeyboard.observeKeyboard(this.webview, new Callback<Boolean>() { // from class: com.narvii.webview.WebViewFragment.2
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                WebViewFragment.this.toolbar.setVisibility((bool.booleanValue() || WebViewFragment.this.hideToolbar) ? 8 : 0);
            }
        });
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Bundle bundle2 = new Bundle();
        this.webview.saveState(bundle2);
        bundle.putBundle("webviewState", bundle2);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        this.webview.onResume();
        super.onResume();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        this.webview.onPause();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        WebView webView = this.webview;
        if (webView != null) {
            webView.destroy();
            this.webview = null;
        }
        SoftKeyboard.KeyboardObserver keyboardObserver = this.keyboardObserver;
        if (keyboardObserver != null) {
            keyboardObserver.dispose();
        }
        super.onDestroy();
    }

    public void loadUrl(String str) {
        this.url = str;
        WebView webView = this.webview;
        if (webView != null) {
            webView.loadUrl(getTransformUrl(str), getHeaders(str));
            updateToolbar(false);
        }
    }

    protected String getTransformUrl(String str) {
        boolean zIsPermalinkHost = false;
        Uri uri = null;
        if (str != null) {
            try {
                uri = Uri.parse(str);
                zIsPermalinkHost = new PackageUtils(getContext()).isPermalinkHost(uri.getHost());
            } catch (Exception unused) {
            }
        }
        if (!zIsPermalinkHost || uri == null) {
            return str;
        }
        Uri.Builder builderEncodedFragment = new Uri.Builder().scheme(uri.getScheme()).authority(uri.getAuthority()).path(uri.getPath()).encodedFragment(uri.getEncodedFragment());
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        if (queryParameterNames != null) {
            for (String str2 : queryParameterNames) {
                builderEncodedFragment.appendQueryParameter(str2, uri.getQueryParameter(str2));
            }
        }
        builderEncodedFragment.appendQueryParameter("from_aminoapp", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        return builderEncodedFragment.build().toString();
    }

    protected Map<String, String> getHeaders(String str) {
        boolean zIsPermalinkHost;
        if (str != null) {
            try {
                zIsPermalinkHost = new PackageUtils(getContext()).isPermalinkHost(Uri.parse(str).getHost());
            } catch (Exception unused) {
            }
        } else {
            zIsPermalinkHost = false;
        }
        HashMap map = new HashMap();
        if (getBooleanParam("addAcceptLanguage")) {
            map.put("Accept-Language", Locale.getDefault().getLanguage());
        }
        if (zIsPermalinkHost) {
            AccountService accountService = (AccountService) getService("account");
            if (accountService.hasAccount()) {
                map.put("NDCAUTH", "sid=" + accountService.getPrefs().getString("sid", null));
            }
        }
        return map;
    }

    public boolean canGoBack() {
        WebView webView = this.webview;
        return webView != null && webView.canGoBack();
    }

    public boolean tryGoBack() {
        WebView webView = this.webview;
        if (webView == null || !webView.canGoBack()) {
            return false;
        }
        String url = this.webview.getUrl();
        boolean z = true;
        if (Utils.isStringEquals(this.prevGoBackUrl, url)) {
            this.prevGoBackCount++;
            if (this.prevGoBackCount > 2 || SystemClock.elapsedRealtime() - this.prevGoBackTime > 1000) {
                z = false;
            }
        } else {
            this.prevGoBackUrl = url;
            this.prevGoBackCount = 1;
            this.prevGoBackTime = SystemClock.elapsedRealtime();
        }
        this.webview.goBack();
        updateToolbar(false);
        return z;
    }

    public void hideToolbar(boolean z) {
        this.hideToolbar = z;
        View view = this.toolbar;
        if (view != null) {
            view.setVisibility(z ? 8 : 0);
        }
    }

    protected void updateToolbar(boolean z) {
        if (z) {
            boolean zDarkTheme = darkTheme();
            int i = zDarkTheme ? -1 : -10395295;
            int color = zDarkTheme ? Utils.getColor(-1, 0.5f) : -2697514;
            WebView webView = this.webview;
            boolean z2 = webView != null && webView.canGoBack();
            this.toolbarBack.setEnabled(z2);
            this.toolbarBack.setTintColor(z2 ? i : color);
            WebView webView2 = this.webview;
            boolean z3 = webView2 != null && webView2.canGoForward();
            this.toolbarForward.setEnabled(z3);
            TintButton tintButton = this.toolbarForward;
            if (z3) {
                color = i;
            }
            tintButton.setTintColor(color);
            this.toolbarStop.setVisibility(this.isLoading ? 0 : 8);
            this.toolbarStop.setSpinColor(i);
            this.toolbarRefresh.setVisibility(this.isLoading ? 8 : 0);
            this.toolbarRefresh.setTintColor(i);
            this.toolbarAction.setTintColor(i);
            return;
        }
        Utils.handler.removeCallbacks(this.updateToolbarRunnable);
        Utils.postDelayed(this.updateToolbarRunnable, 100L);
    }

    public void onClick(View view) {
        if (view == this.toolbarBack) {
            this.webview.goBack();
            this.prevGoBackUrl = null;
            return;
        }
        if (view == this.toolbarForward) {
            this.webview.goForward();
            return;
        }
        if (view == this.toolbarStop) {
            this.webview.stopLoading();
            return;
        }
        if (view == this.toolbarRefresh) {
            this.webview.reload();
        } else if (view == this.toolbarAction) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.open_in_browser, false);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.webview.WebViewFragment.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == 0) {
                        WebViewFragment.this.openInExternalWebBrowser();
                    }
                }
            });
            actionSheetDialog.show();
        }
    }

    protected void openInExternalWebBrowser() {
        WebView webView = this.webview;
        if (webView == null || TextUtils.isEmpty(webView.getUrl())) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.webview.getUrl()));
            intent.putExtra("_noMapping", true);
            startActivity(intent);
        } catch (Exception unused) {
        }
    }

    protected void initWebViewSettings(WebView webView) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        webView.setFocusable(true);
        webView.setFocusableInTouchMode(true);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setCacheMode(2);
        webView.getSettings().setDomStorageEnabled(true);
        webView.getSettings().setDatabaseEnabled(true);
        webView.getSettings().setAppCacheEnabled(true);
        webView.setScrollBarStyle(0);
        webView.getSettings().setDatabaseEnabled(true);
        webView.getSettings().setUseWideViewPort(true);
        webView.getSettings().setLoadWithOverviewMode(true);
        webView.setWebViewClient(createWebViewClient());
        webView.setWebChromeClient(createWebChromeClient());
        if (NVApplication.DEBUG) {
            try {
                WebView.class.getMethod("setWebContentsDebuggingEnabled", Boolean.TYPE).invoke(null, Boolean.TRUE);
            } catch (Exception unused) {
            }
        }
    }

    protected WebViewClient createWebViewClient() {
        return new MyWebViewClient();
    }

    protected WebChromeClient createWebChromeClient() {
        return new MyWebChromeClient();
    }

    protected void startActivityFromWebView(Intent intent) {
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public class MyWebViewClient extends WebViewClient {
        protected MyWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            WebViewFragment webViewFragment = WebViewFragment.this;
            webViewFragment.errorCode = 0;
            webViewFragment.isLoading = true;
            webViewFragment.updateToolbar(false);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            WebViewFragment webViewFragment = WebViewFragment.this;
            webViewFragment.isLoading = false;
            webViewFragment.updateToolbar(false);
            SmoothProgressBar smoothProgressBar = WebViewFragment.this.progressBar;
            if (smoothProgressBar == null || smoothProgressBar.getProgress() == 100) {
                return;
            }
            WebViewFragment.this.progressBar.setProgress(100);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            WebViewFragment webViewFragment = WebViewFragment.this;
            webViewFragment.errorCode = i;
            webViewFragment.isLoading = false;
            NVToast.makeText(webViewFragment.getContext(), str, 0).show();
            WebViewFragment.this.updateToolbar(false);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) throws URISyntaxException {
            try {
                if (str.startsWith("intent://")) {
                    Context context = webView.getContext();
                    new Intent();
                    Intent uri = Intent.parseUri(str, 1);
                    if (uri != null) {
                        webView.stopLoading();
                        if (context.getPackageManager().resolveActivity(uri, 65536) != null) {
                            uri.putExtra("_noMapping", true);
                            WebViewFragment.this.startActivityFromWebView(uri);
                        } else {
                            webView.loadUrl(uri.getStringExtra("browser_fallback_url"), WebViewFragment.this.getHeaders(str));
                        }
                        return true;
                    }
                }
                Uri uri2 = Uri.parse(str);
                Intent intent = new Intent("android.intent.action.VIEW", uri2);
                if ("http".equals(uri2.getScheme()) || "https".equals(uri2.getScheme())) {
                    if (!"play.google.com".equals(uri2.getHost()) || !"/store/apps/details".equals(uri2.getPath())) {
                        return false;
                    }
                    intent.putExtra("_noMapping", true);
                }
                WebViewFragment.this.startActivityFromWebView(intent);
                return true;
            } catch (ActivityNotFoundException | Exception unused) {
                return true;
            }
        }
    }

    protected class MyWebChromeClient extends WebChromeClient {
        protected MyWebChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            String strMessage = consoleMessage.message();
            if (strMessage != null && strMessage.startsWith("##rawhtml##")) {
                WebViewFragment.this.onRawHtmlResult(strMessage.substring(11));
                return true;
            }
            Log.i("webview: " + strMessage);
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            WebViewFragment.this.setTitle(str);
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            SmoothProgressBar smoothProgressBar;
            super.onProgressChanged(webView, i);
            if (!WebViewFragment.this.showProgress || (smoothProgressBar = WebViewFragment.this.progressBar) == null) {
                return;
            }
            if (i != 100) {
                smoothProgressBar.setVisibility(0);
            }
            WebViewFragment.this.progressBar.setProgress(i);
        }

        @Override // android.webkit.WebChromeClient
        @SuppressLint({"NewApi"})
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            if (WebViewFragment.mUploadMessageAboveL != null) {
                WebViewFragment.mUploadMessageAboveL.onReceiveValue(null);
            }
            ValueCallback unused = WebViewFragment.mUploadMessageAboveL = valueCallback;
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            try {
                if (fileChooserParams != null) {
                    WebViewFragment.this.startActivityForResult(Intent.createChooser(fileChooserParams.createIntent(), "File Chooser"), WebViewFragment.this.FILECHOOSER_RESULTCODE);
                } else {
                    intent.setType("*/*");
                    WebViewFragment.this.startActivityForResult(Intent.createChooser(intent, "File Chooser"), WebViewFragment.this.FILECHOOSER_RESULTCODE);
                }
                return true;
            } catch (Exception e) {
                Log.e(e.getMessage());
                return true;
            }
        }

        public void openFileChooser(ValueCallback<Uri> valueCallback, String str, String str2) {
            if (WebViewFragment.this.mUploadMessage != null) {
                WebViewFragment.this.mUploadMessage.onReceiveValue(null);
            }
            WebViewFragment.this.mUploadMessage = valueCallback;
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.addCategory("android.intent.category.OPENABLE");
            if (TextUtils.isEmpty(str)) {
                str = "*/*";
            }
            intent.setType(str);
            WebViewFragment.this.startActivityForResult(Intent.createChooser(intent, "File Chooser"), WebViewFragment.this.FILECHOOSER_RESULTCODE);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri[] uriArr;
        Uri[] uriArr2;
        if (i == this.FILECHOOSER_RESULTCODE) {
            if (this.mUploadMessage != null) {
                Uri data = (intent == null || i2 != -1) ? null : intent.getData();
                if (data != null) {
                    this.mUploadMessage.onReceiveValue(data);
                } else {
                    this.mUploadMessage.onReceiveValue(Uri.EMPTY);
                }
                this.mUploadMessage = null;
            } else if (mUploadMessageAboveL != null) {
                if (((intent == null || i2 != -1) ? null : intent.getData()) != null) {
                    if (intent != null) {
                        String dataString = intent.getDataString();
                        ClipData clipData = intent.getClipData();
                        if (clipData != null) {
                            uriArr2 = new Uri[clipData.getItemCount()];
                            for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
                                uriArr2[i3] = clipData.getItemAt(i3).getUri();
                            }
                        } else {
                            uriArr2 = null;
                        }
                        uriArr = dataString != null ? new Uri[]{Uri.parse(dataString)} : uriArr2;
                    } else {
                        uriArr = null;
                    }
                    mUploadMessageAboveL.onReceiveValue(uriArr);
                    mUploadMessageAboveL = null;
                } else {
                    mUploadMessageAboveL.onReceiveValue(new Uri[0]);
                }
                mUploadMessageAboveL = null;
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    public void fetchRawHtml() {
        WebView webView = this.webview;
        if (webView == null) {
            return;
        }
        webView.loadUrl("javascript:console.log('##rawhtml##'+document.documentElement.outerHTML);");
    }

    protected void initCookie() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime > initCookieTime + 3600000) {
            try {
                CookieSyncManager.createInstance(getContext());
                CookieManager cookieManager = CookieManager.getInstance();
                cookieManager.setAcceptCookie(true);
                String permalinkHost = new PackageUtils(getContext()).getPermalinkHost(true);
                cookieManager.setCookie(permalinkHost, "x-no-frame=true;");
                if (NVApplication.DEBUG) {
                    String string = getContext().getString(R.string.pebkit_cookie);
                    if (!TextUtils.isEmpty(string)) {
                        cookieManager.setCookie(permalinkHost, string);
                    }
                }
                CookieSyncManager.getInstance().sync();
                initCookieTime = jElapsedRealtime;
            } catch (Exception e) {
                Log.e("fail to setup cookie", e);
            }
        }
    }
}
