package com.narvii.catalog.review;

import a0.a;
import a0.b;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.narvii.account.AccountService;
import com.narvii.account.AuidService;
import com.narvii.amino.master.R;
import com.narvii.config.ConfigService;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.IAntiFraud;
import com.narvii.webview.WebViewFragment;
import java.util.HashMap;
import java.util.Map;
import qa.y;

/* JADX INFO: loaded from: classes9.dex */
public class SubmissionDiffFragment extends WebViewFragment {
    private Pair<String, String> getAuid() {
        return new Pair<>("AUID", ((AuidService) getService("auid")).getAuid());
    }

    @NonNull
    private Map<String, String> getHeaders() {
        HashMap map = new HashMap();
        Pair<String, String> nDCAuth = getNDCAuth();
        Pair<String, String> sMDeviceID = getSMDeviceID();
        Pair<String, String> ndcDeviceId = getNdcDeviceId();
        Pair<String, String> auid = getAuid();
        map.put((String) nDCAuth.first, (String) nDCAuth.second);
        map.put((String) sMDeviceID.first, (String) sMDeviceID.second);
        map.put((String) ndcDeviceId.first, (String) ndcDeviceId.second);
        map.put((String) auid.first, (String) auid.second);
        return map;
    }

    private Pair<String, String> getNDCAuth() {
        return new Pair<>("NDCAUTH", "sid=" + ((AccountService) getService("account")).getPrefs().getString(CmcdConfiguration.KEY_SESSION_ID, null));
    }

    private Pair<String, String> getNdcDeviceId() {
        return new Pair<>(a.l, b.k());
    }

    private Pair<String, String> getSMDeviceID() {
        return new Pair<>(a.m, ((IAntiFraud) getService("antiFraud")).getDeviceId());
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        hideToolbar(true);
        setTitle(R.string.show_diff_title);
        ItemSubmission itemSubmission = (ItemSubmission) JacksonUtils.readAs(getStringParam("itemSubmission"), ItemSubmission.class);
        ConfigService configService = (ConfigService) getService("config");
        loadUrl(y.HTTP + configService.getServiceHost() + "/api/v1/x" + configService.getCommunityId() + "/s/item/" + itemSubmission.originalItem.itemId + "/compare?destinationItemId=" + itemSubmission.item.itemId, getHeaders());
    }
}
