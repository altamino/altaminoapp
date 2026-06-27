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
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Log;
import java.text.DecimalFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class GoogleMapPickerFragment extends NVFragment {
    final DecimalFormat FMT = new DecimalFormat("0.000000");
    WebView webview;

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(R.string.post_pick_location);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.location_picker_layout, viewGroup, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.webview = (WebView) view.findViewById(R.id.webview);
        this.webview.setFocusable(true);
        this.webview.setFocusableInTouchMode(true);
        this.webview.getSettings().setJavaScriptEnabled(true);
        this.webview.getSettings().setDomStorageEnabled(false);
        this.webview.getSettings().setDatabaseEnabled(false);
        this.webview.getSettings().setAppCacheEnabled(false);
        this.webview.setScrollBarStyle(0);
        this.webview.setWebViewClient(new MyWebViewClient());
        Bundle bundle2 = bundle != null ? bundle.getBundle("webviewState") : null;
        if (bundle2 != null) {
            this.webview.restoreState(bundle2);
            return;
        }
        StringBuilder sb = new StringBuilder("https://www.google.com/maps/@?api=1&map_action=map&center=");
        DecimalFormat decimalFormat = this.FMT;
        double intParam = getIntParam("lat");
        Double.isNaN(intParam);
        sb.append(decimalFormat.format(intParam * 1.0E-6d));
        sb.append(',');
        DecimalFormat decimalFormat2 = this.FMT;
        double intParam2 = getIntParam("lng");
        Double.isNaN(intParam2);
        sb.append(decimalFormat2.format(intParam2 * 1.0E-6d));
        sb.append("&zoom=12&basemap=roadmap");
        this.webview.loadUrl(sb.toString());
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Bundle bundle2 = new Bundle();
        this.webview.saveState(bundle2);
        bundle.putBundle("webviewState", bundle2);
    }

    private class MyWebViewClient extends WebViewClient {
        private MyWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            try {
                Uri uri = Uri.parse(str);
                if (uri.getScheme().equals("http") || uri.getScheme().equals("https")) {
                    return !uri.getHost().contains(".google.");
                }
                return true;
            } catch (Exception unused) {
                return true;
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) throws NumberFormatException {
        if (menuItem.getItemId() == 17039370) {
            String url = this.webview.getUrl();
            Matcher matcher = Pattern.compile("(?:@|center=)(-?\\d{1,2}\\.\\d{1,7}),(-?\\d{1,3}\\.\\d{1,7})").matcher(url);
            if (matcher.find()) {
                float f = Float.parseFloat(matcher.group(1));
                float f2 = Float.parseFloat(matcher.group(2));
                Intent intent = new Intent();
                intent.putExtra("lat", Math.round(f * 1000000.0f));
                intent.putExtra("lng", Math.round(f2 * 1000000.0f));
                setResult(-1, intent);
            } else {
                Log.e("unrecognized google map url: " + url);
            }
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
