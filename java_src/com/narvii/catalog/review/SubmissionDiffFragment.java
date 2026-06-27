package com.narvii.catalog.review;

import android.os.Bundle;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.config.ConfigService;
import com.narvii.util.JacksonUtils;
import com.narvii.webview.WebViewFragment;

/* loaded from: classes2.dex */
public class SubmissionDiffFragment extends WebViewFragment {
    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        hideToolbar(true);
        setTitle(R.string.show_diff_title);
        ItemSubmission itemSubmission = (ItemSubmission) JacksonUtils.readAs(getStringParam("itemSubmission"), ItemSubmission.class);
        ConfigService configService = (ConfigService) getService("config");
        loadUrl("http://" + configService.getServiceHost() + "/api/v1/x" + configService.getCommunityId() + "/s/item/" + itemSubmission.originalItem.itemId + "/compare?destinationItemId=" + itemSubmission.item.itemId);
    }
}
