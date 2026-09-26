package com.narvii.util.text;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityHelper;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.master.search.GlobalHashTagFragment;
import com.narvii.modulization.page.PageManager;
import com.narvii.search.SearchPagesFragment;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.safedk.android.utils.Logger;
import qa.y;

/* JADX INFO: loaded from: classes7.dex */
public class DefaultTagClickListener implements OnTagClickListener {
    public static final OnTagClickListener instance = new DefaultTagClickListener();

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_DefaultTagClickListener_startActivity_126d0229878165d186706706669a12b2(DefaultTagClickListener p0, View p1, Intent p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/util/text/DefaultTagClickListener;->startActivity(Landroid/view/View;Landroid/content/Intent;)V");
        if (p5 == null) {
            return;
        }
        p0.startActivity(p1, p5);
    }

    @Override // com.narvii.util.text.OnTagClickListener
    public void onClick(View view, NVText nVText, int i10, String str) {
        if (i10 == 1) {
            NVContext nVContext = view == null ? null : Utils.getNVContext(view.getContext());
            if (nVContext != null) {
                int communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
                if (communityId == 0) {
                    Intent intent = FragmentWrapperActivity.intent(GlobalHashTagFragment.class);
                    intent.putExtra("hashTag", str);
                    intent.putExtra("title", "#" + str);
                    safedk_DefaultTagClickListener_startActivity_126d0229878165d186706706669a12b2(this, view, intent);
                    return;
                }
                if (communityId <= 0 || !new CommunityHelper(nVContext).checkCurrentCommunityJoined()) {
                    return;
                }
                Intent intent2 = FragmentWrapperActivity.intent(SearchPagesFragment.class);
                intent2.putExtra("q", str);
                intent2.putExtra("title", "#" + str);
                safedk_DefaultTagClickListener_startActivity_126d0229878165d186706706669a12b2(this, view, intent2);
                return;
            }
            return;
        }
        if (i10 != 5) {
            Log.w("unknown tag type " + i10 + ", " + str);
            return;
        }
        if ("[Guidelines]".equals(str) || "[guidelines]".equals(str)) {
            str = PageManager.PAGE_GUIDELINES_URI;
        } else if ("[TOS]".equals(str)) {
            str = "ndc://tos";
        }
        try {
            if (str.trim().startsWith("ndc://fragment")) {
                return;
            }
            Uri uri = Uri.parse(str.trim());
            if (android.text.TextUtils.isEmpty(uri.getScheme())) {
                uri = Uri.parse(y.HTTP + str);
            }
            Intent intent3 = new Intent("android.intent.action.VIEW", uri);
            intent3.putExtra("fromLink", true);
            intent3.putExtra(ExternalPostPreviewFragment.SOURCE, "Link");
            safedk_DefaultTagClickListener_startActivity_126d0229878165d186706706669a12b2(this, view, intent3);
        } catch (Exception unused) {
            Log.w("fail to start activity for url: " + str);
        }
    }

    protected void startActivity(View view, Intent intent) {
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(view.getContext(), intent);
    }
}
