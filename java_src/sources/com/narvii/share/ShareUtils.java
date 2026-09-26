package com.narvii.share;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.share.elements.BaseElement;
import com.narvii.util.NVToast;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes7.dex */
public class ShareUtils {
    private NVContext context;

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    protected Intent process(Intent intent) {
        return intent;
    }

    public boolean shareEmail(String str, String str2, String str3, Uri uri) {
        return shareEmail(str, str2, str3, uri, null);
    }

    public StatisticsEventBuilder statistics(String str, BaseElement baseElement, String str2) {
        return statistics(str, baseElement.targetName(), baseElement.packageName(), str2);
    }

    public Intent emailIntent(String str, String str2, String str3, Uri uri) {
        if (str == null) {
            str = "";
        }
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.fromParts("mailto", str, null));
        intent.putExtra("android.intent.extra.SUBJECT", str2);
        intent.putExtra("android.intent.extra.TEXT", str3);
        if (uri != null) {
            intent.putExtra("android.intent.extra.STREAM", uri);
        }
        intent.setType("*/*");
        Intent intentProcess = process(intent);
        PackageManager packageManager = this.context.getContext().getPackageManager();
        if (packageManager.resolveActivity(intentProcess, 65536) == null) {
            Intent intent2 = new Intent("android.intent.action.SEND");
            intent2.setType("message/rfc822");
            intent2.putExtra("android.intent.extra.SUBJECT", str2);
            intent2.putExtra("android.intent.extra.TEXT", str3);
            if (uri != null) {
                intent2.putExtra("android.intent.extra.STREAM", uri);
            }
            intent2.setType("*/*");
            intentProcess = process(intent2);
            if (packageManager.resolveActivity(intentProcess, 65536) == null) {
                return null;
            }
        }
        intentProcess.putExtra("_noMapping", true);
        return intentProcess;
    }

    public boolean shareEmail(String str, String str2, String str3, Uri uri, String str4) {
        Intent intentEmailIntent = emailIntent(str, str2, str3, uri);
        if (intentEmailIntent == null) {
            NVToast.makeText(this.context.getContext(), R.string.application_not_found, 0).show();
            return false;
        }
        if (str4 != null) {
            intentEmailIntent = Intent.createChooser(intentEmailIntent, str4);
        }
        if (Build.VERSION.SDK_INT > 24) {
            intentEmailIntent.setFlags(3);
        }
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intentEmailIntent);
        return true;
    }

    public StatisticsEventBuilder statistics(String str, String str2, String str3, String str4) {
        return ((StatisticsService) this.context.getService("statistics")).event("Share " + str).param("Target", str2).param("Target PackageName", str3).source(str4).userPropInc("Share " + str + " Total");
    }

    public ShareUtils(NVContext nVContext) {
        this.context = nVContext;
    }
}
