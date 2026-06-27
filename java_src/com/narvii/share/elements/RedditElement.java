package com.narvii.share.elements;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import android.view.View;
import com.google.android.exoplayer2.C;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.Community;
import com.narvii.share.SharePayload;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes3.dex */
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

    public RedditElement(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.share.elements.BaseElement
    public String label() {
        return this.context.getContext().getString(R.string.share_reddit);
    }

    @Override // com.narvii.share.ShareableTarget
    public void share(SharePayload sharePayload) {
        Context context;
        int i;
        if (sharePayload == null) {
            return;
        }
        copyText(joinTextWithUrl(sharePayload.text, sharePayload.url, "\n"));
        boolean z = sharePayload.object instanceof Community;
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.share.elements.RedditElement.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent;
                Intent intent2 = new Intent("android.intent.action.MAIN");
                intent2.addCategory("android.intent.category.LAUNCHER");
                boolean z2 = false;
                Iterator<ResolveInfo> it = RedditElement.this.context.getContext().getPackageManager().queryIntentActivities(intent2, 0).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        intent = null;
                        break;
                    }
                    ResolveInfo next = it.next();
                    if (next.activityInfo.packageName.toLowerCase(Locale.US).equals(RedditElement.this.packageName())) {
                        intent2.setPackage(next.activityInfo.packageName);
                        ComponentName componentName = new ComponentName(next.activityInfo.packageName, next.activityInfo.name);
                        intent = new Intent("android.intent.action.MAIN");
                        intent.addCategory("android.intent.category.LAUNCHER");
                        intent.setFlags(C.ENCODING_PCM_MU_LAW);
                        intent.setComponent(componentName);
                        z2 = true;
                        break;
                    }
                }
                if (!z2) {
                    RedditElement.this.showNotFoundPakage();
                    return;
                }
                try {
                    RedditElement.this.context.startActivity(intent);
                } catch (Exception unused) {
                    Log.d("share", "open error");
                }
            }
        };
        String[] strArr = new String[2];
        if (z) {
            context = this.context.getContext();
            i = R.string.share_reddit_hint_community;
        } else {
            context = this.context.getContext();
            i = R.string.share_reddit_hint1;
        }
        strArr[0] = context.getString(i);
        strArr[1] = this.context.getContext().getString(R.string.share_reddit_hint2);
        showTutorialDialog(onClickListener, strArr);
    }

    @Override // com.narvii.share.elements.BaseElement
    public Drawable icon() {
        return ContextCompat.getDrawable(this.context.getContext(), R.drawable.ic_share_reddit);
    }
}
