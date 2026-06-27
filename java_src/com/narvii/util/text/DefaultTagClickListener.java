package com.narvii.util.text;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityHelper;
import com.narvii.config.ConfigService;
import com.narvii.master.search.GlobalHashTagFragment;
import com.narvii.modulization.page.PageManager;
import com.narvii.search.SearchPagesFragment;
import com.narvii.util.Log;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class DefaultTagClickListener implements OnTagClickListener {
    public static final OnTagClickListener instance = new DefaultTagClickListener();

    @Override // com.narvii.util.text.OnTagClickListener
    public void onClick(View view, NVText nVText, int i, String str) {
        if (i == 1) {
            NVContext nVContext = view == null ? null : Utils.getNVContext(view.getContext());
            if (nVContext != null) {
                int communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
                if (communityId == 0) {
                    Intent intent = FragmentWrapperActivity.intent(GlobalHashTagFragment.class);
                    intent.putExtra("hashTag", str);
                    intent.putExtra("title", "#" + str);
                    startActivity(view, intent);
                    return;
                }
                if (communityId <= 0 || !new CommunityHelper(nVContext).checkCurrentCommunityJoined()) {
                    return;
                }
                Intent intent2 = FragmentWrapperActivity.intent(SearchPagesFragment.class);
                intent2.putExtra("q", str);
                intent2.putExtra("title", "#" + str);
                startActivity(view, intent2);
                return;
            }
            return;
        }
        if (i == 5) {
            if ("[Guidelines]".equals(str) || "[guidelines]".equals(str)) {
                str = PageManager.PAGE_GUIDELINES_URI;
            } else if ("[TOS]".equals(str)) {
                str = "ndc://tos";
            }
            try {
                Uri uri = Uri.parse(str.trim());
                if (android.text.TextUtils.isEmpty(uri.getScheme())) {
                    uri = Uri.parse("http://" + str);
                }
                Intent intent3 = new Intent("android.intent.action.VIEW", uri);
                intent3.putExtra("fromLink", true);
                intent3.putExtra("Source", "Link");
                startActivity(view, intent3);
                return;
            } catch (Exception unused) {
                Log.w("fail to start activity for url: " + str);
                return;
            }
        }
        Log.w("unknown tag type " + i + ", " + str);
    }

    protected void startActivity(View view, Intent intent) {
        view.getContext().startActivity(intent);
    }
}
