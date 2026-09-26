package com.narvii.share.elements;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.Community;
import com.narvii.share.SharePayload;
import com.safedk.android.utils.Logger;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public class RedditElement extends BaseElement {
    @Override // com.narvii.share.elements.BaseElement
    public int color() {
        return -766401;
    }

    @Override // com.narvii.share.elements.BaseElement
    public boolean needDownloadImage() {
        return true;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String packageName() {
        return "com.reddit.frontpage";
    }

    @Override // com.narvii.share.elements.BaseElement
    public int priority() {
        return 6;
    }

    @Override // com.narvii.share.elements.BaseElement
    public String targetName() {
        return "Reddit";
    }

    @Override // com.narvii.share.elements.BaseElement
    public Drawable icon() {
        return ContextCompat.getDrawable(this.context.getContext(), R.drawable.ic_share_reddit);
    }

    @Override // com.narvii.share.elements.BaseElement
    public String label() {
        return this.context.getContext().getString(R.string.share_reddit);
    }

    @Override // com.narvii.share.ShareableTarget
    public void share(SharePayload sharePayload) {
        Context context;
        int i10;
        if (sharePayload == null) {
            return;
        }
        copyText(joinTextWithUrl(sharePayload.text, sharePayload.url, "\n"));
        boolean z6 = sharePayload.object instanceof Community;
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.share.elements.RedditElement.1
            public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent;
                Intent intent2 = new Intent("android.intent.action.MAIN");
                intent2.addCategory("android.intent.category.LAUNCHER");
                boolean z10 = false;
                Iterator<ResolveInfo> it = RedditElement.this.context.getContext().getPackageManager().queryIntentActivities(intent2, 0).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        intent = null;
                        break;
                    }
                    ResolveInfo next = it.next();
                    if (next.activityInfo.packageName.toLowerCase(Locale.US).equals(RedditElement.this.packageName())) {
                        intent2.setPackage(next.activityInfo.packageName);
                        ActivityInfo activityInfo = next.activityInfo;
                        ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
                        intent = new Intent("android.intent.action.MAIN");
                        intent.addCategory("android.intent.category.LAUNCHER");
                        intent.setFlags(268435456);
                        intent.setComponent(componentName);
                        z10 = true;
                        break;
                    }
                }
                if (!z10) {
                    RedditElement.this.showNotFoundPakage();
                    return;
                }
                try {
                    safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(RedditElement.this.context, intent);
                } catch (Exception unused) {
                    Log.d("share", "open error");
                }
            }
        };
        String[] strArr = new String[2];
        if (z6) {
            context = this.context.getContext();
            i10 = R.string.share_reddit_hint_community;
        } else {
            context = this.context.getContext();
            i10 = R.string.share_reddit_hint1;
        }
        strArr[0] = context.getString(i10);
        strArr[1] = this.context.getContext().getString(R.string.share_reddit_hint2);
        showTutorialDialog(onClickListener, strArr);
    }

    public RedditElement(NVContext nVContext) {
        super(nVContext);
    }
}
