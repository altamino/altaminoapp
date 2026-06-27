package com.narvii.share;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.util.NVToast;

/* loaded from: classes3.dex */
public class ShareUtils {
    private NVContext context;

    protected Intent process(Intent intent) {
        return intent;
    }

    public ShareUtils(NVContext nVContext) {
        this.context = nVContext;
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

    public boolean shareEmail(String str, String str2, String str3, Uri uri) {
        return shareEmail(str, str2, str3, uri, null);
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
        this.context.startActivity(intentEmailIntent);
        return true;
    }
}
