package com.narvii.location.picker;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Log;
import java.text.DecimalFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleMapPickerFragment extends NVFragment {
    final DecimalFormat FMT = new DecimalFormat("0.000000");
    WebView webview;

    private class MyWebViewClient extends WebViewClient {
        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            try {
                Uri uri = Uri.parse(str);
                return ((uri.getScheme().equals(ProxyConfig.MATCH_HTTP) || uri.getScheme().equals(ProxyConfig.MATCH_HTTPS)) && uri.getHost().contains(".google.")) ? false : true;
            } catch (Exception unused) {
                return true;
            }
        }

        private MyWebViewClient() {
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(R.string.post_pick_location);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.location_picker_layout, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            String url = this.webview.getUrl();
            Matcher matcher = Pattern.compile("(?:@|center=)(-?\\d{1,2}\\.\\d{1,7}),(-?\\d{1,3}\\.\\d{1,7})").matcher(url);
            if (matcher.find()) {
                float f = Float.parseFloat(matcher.group(1));
                float f6 = Float.parseFloat(matcher.group(2));
                Intent intent = new Intent();
                intent.putExtra("lat", Math.round(f * 1000000.0f));
                intent.putExtra("lng", Math.round(f6 * 1000000.0f));
                setResult(-1, intent);
            } else {
                Log.e("unrecognized google map url: " + url);
            }
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Bundle bundle2 = new Bundle();
        this.webview.saveState(bundle2);
        bundle.putBundle("webviewState", bundle2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        WebView webView = (WebView) view.findViewById(R.id.webview);
        this.webview = webView;
        webView.setFocusable(true);
        this.webview.setFocusableInTouchMode(true);
        this.webview.getSettings().setJavaScriptEnabled(true);
        this.webview.getSettings().setDomStorageEnabled(false);
        this.webview.getSettings().setDatabaseEnabled(false);
        this.webview.setScrollBarStyle(0);
        Bundle bundle2 = null;
        this.webview.setWebViewClient(new MyWebViewClient());
        if (bundle != null) {
            bundle2 = bundle.getBundle("webviewState");
        }
        if (bundle2 != null) {
            this.webview.restoreState(bundle2);
            return;
        }
        this.webview.loadUrl("https://www.google.com/maps/@?api=1&map_action=map&center=" + this.FMT.format(((double) getIntParam("lat")) * 1.0E-6d) + b.COMMA + this.FMT.format(((double) getIntParam("lng")) * 1.0E-6d) + "&zoom=12&basemap=roadmap");
    }
}
