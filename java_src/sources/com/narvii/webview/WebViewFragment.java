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
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.common.internal.ImagesContract;
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
import com.safedk.android.utils.Logger;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
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
    private final Runnable updateToolbarRunnable = new Runnable() { // from class: com.narvii.webview.WebViewFragment.1
        @Override // java.lang.Runnable
        public void run() {
            WebViewFragment.this.updateToolbar(true);
        }
    };

    protected class MyWebChromeClient extends WebChromeClient {
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        protected MyWebChromeClient() {
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
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(WebViewFragment.this, Intent.createChooser(intent, "File Chooser"), WebViewFragment.this.FILECHOOSER_RESULTCODE);
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
        public void onProgressChanged(WebView webView, int i10) {
            SmoothProgressBar smoothProgressBar;
            super.onProgressChanged(webView, i10);
            if (WebViewFragment.this.showProgress && (smoothProgressBar = WebViewFragment.this.progressBar) != null) {
                if (i10 != 100) {
                    smoothProgressBar.setVisibility(0);
                }
                WebViewFragment.this.progressBar.setProgress(i10);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            WebViewFragment.this.setTitle(str);
        }

        @Override // android.webkit.WebChromeClient
        @SuppressLint({"NewApi"})
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            if (WebViewFragment.mUploadMessageAboveL != null) {
                WebViewFragment.mUploadMessageAboveL.onReceiveValue(null);
            }
            WebViewFragment.mUploadMessageAboveL = valueCallback;
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            try {
                if (fileChooserParams != null) {
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(WebViewFragment.this, Intent.createChooser(fileChooserParams.createIntent(), "File Chooser"), WebViewFragment.this.FILECHOOSER_RESULTCODE);
                } else {
                    intent.setType("*/*");
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(WebViewFragment.this, Intent.createChooser(intent, "File Chooser"), WebViewFragment.this.FILECHOOSER_RESULTCODE);
                }
                return true;
            } catch (Exception e) {
                Log.e(e.getMessage());
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public class MyWebViewClient extends WebViewClient {
        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        /* JADX WARN: Code duplicated, block: B:30:0x00a4 A[Catch: ActivityNotFoundException | Exception -> 0x00ab, ActivityNotFoundException | Exception -> 0x00ab, TRY_LEAVE, TryCatch #0 {ActivityNotFoundException | Exception -> 0x00ab, blocks: (B:3:0x0001, B:6:0x000b, B:6:0x000b, B:8:0x001a, B:8:0x001a, B:10:0x0029, B:10:0x0029, B:11:0x0032, B:11:0x0032, B:13:0x0042, B:13:0x0042, B:15:0x005a, B:15:0x005a, B:18:0x0067, B:18:0x0067, B:20:0x0073, B:20:0x0073, B:28:0x009d, B:28:0x009d, B:30:0x00a4, B:30:0x00a4, B:23:0x0081, B:23:0x0081, B:25:0x008d, B:25:0x008d, B:27:0x0099, B:27:0x0099), top: B:34:0x0001 }] */
        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
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
                boolean z6 = false;
                if (!ProxyConfig.MATCH_HTTP.equals(uri2.getScheme()) && !ProxyConfig.MATCH_HTTPS.equals(uri2.getScheme())) {
                    if ("market".equals(uri2.getScheme()) && "details".equals(uri2.getHost())) {
                    }
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(WebViewFragment.this, intent);
                    if (z6) {
                        WebViewFragment.this.finish();
                    }
                    return true;
                }
                if (!"play.google.com".equals(uri2.getHost()) || !"/store/apps/details".equals(uri2.getPath())) {
                    return false;
                }
                intent.putExtra("_noMapping", true);
                z6 = true;
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(WebViewFragment.this, intent);
                if (z6) {
                    WebViewFragment.this.finish();
                }
                return true;
            } catch (ActivityNotFoundException | Exception unused) {
                return true;
            }
        }

        protected MyWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            WebViewFragment webViewFragment = WebViewFragment.this;
            webViewFragment.isLoading = false;
            webViewFragment.updateToolbar(false);
            SmoothProgressBar smoothProgressBar = WebViewFragment.this.progressBar;
            if (smoothProgressBar != null && smoothProgressBar.getProgress() != 100) {
                WebViewFragment.this.progressBar.setProgress(100);
            }
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
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            super.onReceivedError(webView, i10, str, str2);
            WebViewFragment webViewFragment = WebViewFragment.this;
            webViewFragment.errorCode = i10;
            webViewFragment.isLoading = false;
            NVToast.makeText(webViewFragment.getContext(), str, 0).show();
            WebViewFragment.this.updateToolbar(false);
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
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
        builderEncodedFragment.appendQueryParameter("from_aminoapp", "1");
        return builderEncodedFragment.build().toString();
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.NVFragment
    public boolean hideCBBInHomeFragment() {
        return true;
    }

    protected void initWebViewSettings(WebView webView) {
        webView.setFocusable(true);
        webView.setFocusableInTouchMode(true);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setCacheMode(2);
        webView.getSettings().setDomStorageEnabled(true);
        webView.getSettings().setDatabaseEnabled(true);
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

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    public void loadUrl(String str) {
        this.url = str;
        WebView webView = this.webview;
        if (webView != null) {
            webView.loadUrl(getTransformUrl(str), getHeaders(str));
            updateToolbar(false);
        }
    }

    public boolean onBackPressed(NVActivity nVActivity) {
        return false;
    }

    protected void onRawHtmlResult(String str) {
    }

    private boolean darkTheme() {
        ((ConfigService) getService("config")).getCommunityId();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0() {
        this.progressBar.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$1(Boolean bool) {
        this.toolbar.setVisibility((bool.booleanValue() || this.hideToolbar) ? 8 : 0);
    }

    public boolean canGoBack() {
        WebView webView = this.webview;
        return webView != null && webView.canGoBack();
    }

    protected WebChromeClient createWebChromeClient() {
        return new MyWebChromeClient();
    }

    protected WebViewClient createWebViewClient() {
        return new MyWebViewClient();
    }

    public void fetchRawHtml() {
        WebView webView = this.webview;
        if (webView == null) {
            return;
        }
        webView.loadUrl("javascript:console.log('##rawhtml##'+document.documentElement.outerHTML);");
    }

    protected Map<String, String> getHeaders(String str) {
        boolean zIsPermalinkHost;
        if (str != null) {
            try {
                zIsPermalinkHost = new PackageUtils(getContext()).isPermalinkHost(Uri.parse(str).getHost());
            } catch (Exception unused) {
                zIsPermalinkHost = false;
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
                map.put("NDCAUTH", "sid=" + accountService.getPrefs().getString(CmcdConfiguration.KEY_SESSION_ID, null));
            }
        }
        return map;
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        if (this.hideToolbar) {
            return 0;
        }
        return getResources().getDimensionPixelSize(R.dimen.webview_toolbar_height);
    }

    public void hideToolbar(boolean z6) {
        this.hideToolbar = z6;
        View view = this.toolbar;
        if (view != null) {
            view.setVisibility(z6 ? 8 : 0);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        Uri[] uriArr;
        if (i10 == this.FILECHOOSER_RESULTCODE) {
            if (this.mUploadMessage != null) {
                Uri data = (intent == null || i11 != -1) ? null : intent.getData();
                if (data != null) {
                    this.mUploadMessage.onReceiveValue(data);
                } else {
                    this.mUploadMessage.onReceiveValue(Uri.EMPTY);
                }
                this.mUploadMessage = null;
            } else if (mUploadMessageAboveL != null) {
                if (((intent == null || i11 != -1) ? null : intent.getData()) != null) {
                    if (intent != null) {
                        String dataString = intent.getDataString();
                        ClipData clipData = intent.getClipData();
                        if (clipData != null) {
                            uriArr = new Uri[clipData.getItemCount()];
                            for (int i12 = 0; i12 < clipData.getItemCount(); i12++) {
                                uriArr[i12] = clipData.getItemAt(i12).getUri();
                            }
                        } else {
                            uriArr = null;
                        }
                        if (dataString != null) {
                            uriArr = new Uri[]{Uri.parse(dataString)};
                        }
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
        super.onActivityResult(i10, i11, intent);
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
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.webview.WebViewFragment.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    if (i10 == 0) {
                        WebViewFragment.this.openInExternalWebBrowser();
                    }
                }
            });
            actionSheetDialog.show();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.webview_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        this.webview.onResume();
        super.onResume();
    }

    protected void openInExternalWebBrowser() {
        WebView webView = this.webview;
        if (webView == null || TextUtils.isEmpty(webView.getUrl())) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.webview.getUrl()));
            intent.putExtra("_noMapping", true);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        } catch (Exception unused) {
        }
    }

    public void setShowProgress(boolean z6) {
        this.showProgress = z6;
        SmoothProgressBar smoothProgressBar = this.progressBar;
        if (smoothProgressBar != null) {
            smoothProgressBar.setVisibility(z6 ? 0 : 8);
        }
    }

    public boolean tryGoBack() {
        WebView webView = this.webview;
        if (webView == null || !webView.canGoBack()) {
            return false;
        }
        String url = this.webview.getUrl();
        boolean z6 = true;
        if (Utils.isStringEquals(this.prevGoBackUrl, url)) {
            int i10 = this.prevGoBackCount + 1;
            this.prevGoBackCount = i10;
            if (i10 > 2 || SystemClock.elapsedRealtime() - this.prevGoBackTime > 1000) {
                z6 = false;
            }
        } else {
            this.prevGoBackUrl = url;
            this.prevGoBackCount = 1;
            this.prevGoBackTime = SystemClock.elapsedRealtime();
        }
        this.webview.goBack();
        updateToolbar(false);
        return z6;
    }

    protected void updateToolbar(boolean z6) {
        if (!z6) {
            Utils.handler.removeCallbacks(this.updateToolbarRunnable);
            Utils.postDelayed(this.updateToolbarRunnable, 100L);
            return;
        }
        boolean zDarkTheme = darkTheme();
        int i10 = zDarkTheme ? -1 : -10395295;
        int color = zDarkTheme ? Utils.getColor(-1, 0.5f) : -2697514;
        WebView webView = this.webview;
        boolean z10 = webView != null && webView.canGoBack();
        this.toolbarBack.setEnabled(z10);
        this.toolbarBack.setTintColor(z10 ? i10 : color);
        WebView webView2 = this.webview;
        boolean z11 = webView2 != null && webView2.canGoForward();
        this.toolbarForward.setEnabled(z11);
        TintButton tintButton = this.toolbarForward;
        if (z11) {
            color = i10;
        }
        tintButton.setTintColor(color);
        this.toolbarStop.setVisibility(this.isLoading ? 0 : 8);
        this.toolbarStop.setSpinColor(i10);
        this.toolbarRefresh.setVisibility(this.isLoading ? 8 : 0);
        this.toolbarRefresh.setTintColor(i10);
        this.toolbarAction.setTintColor(i10);
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
                    String string = getContext().getString(R.string.pabkit_cookie);
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

    public void loadUrl(String str, Map<String, String> map) {
        this.url = str;
        WebView webView = this.webview;
        if (webView != null) {
            webView.loadUrl(getTransformUrl(str), map);
            updateToolbar(false);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        setTitle((CharSequence) null);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!TextUtils.isEmpty(getStringParam(ImagesContract.URL))) {
            Log.d("webview opening url " + getStringParam(ImagesContract.URL));
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.webview.onPause();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Bundle bundle2 = new Bundle();
        this.webview.saveState(bundle2);
        bundle.putBundle("webviewState", bundle2);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Bundle bundle2;
        int iColorPrimary;
        int i10;
        int i11;
        super.onViewCreated(view, bundle);
        SmoothProgressBar smoothProgressBar = (SmoothProgressBar) view.findViewById(R.id.progress_bar);
        this.progressBar = smoothProgressBar;
        smoothProgressBar.setOnProgressFinishListener(new SmoothProgressBar.OnProgressFinishListener() { // from class: com.narvii.webview.a
            @Override // com.narvii.widget.SmoothProgressBar.OnProgressFinishListener
            public final void onProgressFinish() {
                this.f3064a.lambda$onViewCreated$0();
            }
        });
        if (bundle != null) {
            this.hideToolbar = bundle.getBoolean("hideToolbar");
            bundle2 = bundle.getBundle("webviewState");
        } else {
            bundle2 = null;
        }
        if (this.url == null) {
            this.url = getStringParam(ImagesContract.URL);
        }
        if (TextUtils.isEmpty(this.url) && getActivity().getIntent().getDataString() != null) {
            this.url = getActivity().getIntent().getDataString();
        }
        initCookie();
        WebView webView = (WebView) view.findViewById(R.id.webview);
        this.webview = webView;
        initWebViewSettings(webView);
        this.toolbar = view.findViewById(R.id.webview_toolbar);
        ConfigService configService = (ConfigService) getService("config");
        if (configService.getCommunityId() != 0) {
            iColorPrimary = configService.getTheme().colorPrimary();
        } else if (NVApplication.CLIENT_TYPE == 200) {
            iColorPrimary = -9945367;
        } else {
            iColorPrimary = -14540732;
        }
        this.toolbar.setBackgroundColor(iColorPrimary);
        TintButton tintButton = (TintButton) this.toolbar.findViewById(R.id.webview_back);
        this.toolbarBack = tintButton;
        tintButton.setOnClickListener(this);
        TintButton tintButton2 = this.toolbarBack;
        if (Utils.isRtl()) {
            i10 = R.drawable.ic_webview_toolbar_forward;
        } else {
            i10 = R.drawable.ic_webview_toolbar_back;
        }
        tintButton2.setImageResource(i10);
        TintButton tintButton3 = (TintButton) this.toolbar.findViewById(R.id.webview_forward);
        this.toolbarForward = tintButton3;
        if (Utils.isRtl()) {
            i11 = R.drawable.ic_webview_toolbar_back;
        } else {
            i11 = R.drawable.ic_webview_toolbar_forward;
        }
        tintButton3.setImageResource(i11);
        this.toolbarForward.setOnClickListener(this);
        SpinningView spinningView = (SpinningView) this.toolbar.findViewById(R.id.webview_stop);
        this.toolbarStop = spinningView;
        spinningView.setOnClickListener(this);
        TintButton tintButton4 = (TintButton) this.toolbar.findViewById(R.id.webview_refresh);
        this.toolbarRefresh = tintButton4;
        tintButton4.setOnClickListener(this);
        TintButton tintButton5 = (TintButton) this.toolbar.findViewById(R.id.webview_action);
        this.toolbarAction = tintButton5;
        tintButton5.setOnClickListener(this);
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
        this.keyboardObserver = SoftKeyboard.observeKeyboard(this.webview, new Callback() { // from class: com.narvii.webview.b
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f3065a.lambda$onViewCreated$1((Boolean) obj);
            }
        });
    }

    protected void startActivityFromWebView(Intent intent) {
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }
}
