package com.narvii.share.elements;

import android.content.ClipboardManager;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.share.SharePayload;
import com.narvii.share.ShareableTarget;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.dialog.ShareTutorialDialog;

/* loaded from: classes3.dex */
public abstract class BaseElement implements ShareableTarget {
    protected NVContext context;

    public abstract int color();

    public abstract Drawable icon();

    public boolean needDownloadImage() {
        return false;
    }

    public abstract String packageName();

    public abstract int priority();

    public abstract String targetName();

    public int textColor() {
        return -1;
    }

    public BaseElement(NVContext nVContext) {
        this.context = nVContext;
    }

    public boolean isAvailable() {
        String strPackageName = packageName();
        return TextUtils.isEmpty(strPackageName) || new PackageUtils(this.context.getContext()).isInstalled(strPackageName);
    }

    public String label() {
        String strPackageName = packageName();
        if (TextUtils.isEmpty(strPackageName)) {
            return null;
        }
        return new PackageUtils(this.context.getContext()).getAppName(strPackageName);
    }

    protected String joinTextWithUrl(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return str2 == null ? "" : str2;
        }
        if (str2 == null || str.contains(str2)) {
            return str;
        }
        return str + str3 + str2;
    }

    protected void showNotFoundPakage() {
        NVToast.makeText(this.context.getContext(), this.context.getContext().getString(R.string.share_app_not_installed, label()), 0).show();
    }

    protected boolean containActivityCanHanleIntent(Intent intent) {
        return containActivityCanHanleIntent(intent, packageName());
    }

    protected boolean containActivityCanHanleIntent(Intent intent, String str) {
        for (ResolveInfo resolveInfo : this.context.getContext().getPackageManager().queryIntentActivities(intent, 0)) {
            if (resolveInfo.activityInfo.packageName.equals(str)) {
                intent.setPackage(resolveInfo.activityInfo.packageName);
                return true;
            }
        }
        return false;
    }

    protected void showTutorialDialog(View.OnClickListener onClickListener, String... strArr) {
        ShareTutorialDialog shareTutorialDialog = new ShareTutorialDialog(this.context.getContext());
        shareTutorialDialog.setElement(this);
        for (String str : strArr) {
            shareTutorialDialog.addTutorialItem(str);
        }
        shareTutorialDialog.addButton(R.string.next, 4, onClickListener);
        shareTutorialDialog.show();
    }

    protected void copyLink(SharePayload sharePayload) {
        try {
            ((ClipboardManager) this.context.getContext().getSystemService("clipboard")).setText(sharePayload.url);
        } catch (Exception unused) {
        }
    }

    protected void copyText(String str) {
        try {
            ((ClipboardManager) this.context.getContext().getSystemService("clipboard")).setText(str);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.String generateShareStringWithTag(com.narvii.share.SharePayload r11, com.narvii.app.NVContext r12) {
        /*
            r10 = this;
            r0 = 0
            if (r12 == 0) goto Le4
            if (r11 != 0) goto L7
            goto Le4
        L7:
            java.lang.String r1 = "config"
            java.lang.Object r1 = r12.getService(r1)
            com.narvii.config.ConfigService r1 = (com.narvii.config.ConfigService) r1
            java.lang.String r2 = "community"
            java.lang.Object r2 = r12.getService(r2)
            com.narvii.community.CommunityService r2 = (com.narvii.community.CommunityService) r2
            int r1 = r1.getCommunityId()
            com.narvii.model.Community r1 = r2.getCommunity(r1)
            if (r1 != 0) goto L23
            r1 = r0
            goto L3e
        L23:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "#"
            r2.append(r3)
            java.lang.String r1 = r1.name
            java.lang.String r3 = " "
            java.lang.String r4 = ""
            java.lang.String r1 = r1.replace(r3, r4)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
        L3e:
            android.content.Context r2 = r12.getContext()
            int r3 = com.narvii.lib.R.string.share_tag_quiz
            java.lang.String r2 = r2.getString(r3)
            java.lang.String r3 = "#aminoapps"
            com.narvii.model.NVObject r4 = r11.object
            boolean r5 = r4 instanceof com.narvii.model.Blog
            if (r5 == 0) goto Le4
            com.narvii.model.Blog r4 = (com.narvii.model.Blog) r4
            int r4 = r4.type
            r5 = 6
            if (r4 != r5) goto Le4
            r0 = 0
            java.lang.String r4 = r11.text     // Catch: java.lang.Exception -> L7b
            boolean r4 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L7b
            if (r4 != 0) goto L7b
            java.lang.String r4 = "\\d+"
            java.util.regex.Pattern r4 = java.util.regex.Pattern.compile(r4)     // Catch: java.lang.Exception -> L7b
            java.lang.String r11 = r11.text     // Catch: java.lang.Exception -> L7b
            java.util.regex.Matcher r11 = r4.matcher(r11)     // Catch: java.lang.Exception -> L7b
            boolean r4 = r11.find()     // Catch: java.lang.Exception -> L7b
            if (r4 == 0) goto L7b
            java.lang.String r11 = r11.group()     // Catch: java.lang.Exception -> L7b
            int r11 = java.lang.Integer.parseInt(r11)     // Catch: java.lang.Exception -> L7b
            goto L7c
        L7b:
            r11 = 0
        L7c:
            java.lang.String r4 = "@aminoapps"
            r5 = 1
            if (r11 <= 0) goto Lbd
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            android.content.Context r12 = r12.getContext()
            android.content.res.Resources r12 = r12.getResources()
            int r7 = com.narvii.lib.R.string.share_quiz_link_instagram_hint1
            r8 = 2
            java.lang.Object[] r8 = new java.lang.Object[r8]
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            r9.append(r11)
            java.lang.String r11 = "%"
            r9.append(r11)
            java.lang.String r11 = r9.toString()
            r8[r0] = r11
            r8[r5] = r4
            java.lang.String r11 = r12.getString(r7, r8)
            r6.append(r11)
            r6.append(r1)
            r6.append(r2)
            r6.append(r3)
            java.lang.String r0 = r6.toString()
            goto Le4
        Lbd:
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            android.content.Context r12 = r12.getContext()
            android.content.res.Resources r12 = r12.getResources()
            int r6 = com.narvii.lib.R.string.share_quiz_link_instagram_hint2
            java.lang.Object[] r5 = new java.lang.Object[r5]
            r5[r0] = r4
            java.lang.String r12 = r12.getString(r6, r5)
            r11.append(r12)
            r11.append(r1)
            r11.append(r2)
            r11.append(r3)
            java.lang.String r0 = r11.toString()
        Le4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.share.elements.BaseElement.generateShareStringWithTag(com.narvii.share.SharePayload, com.narvii.app.NVContext):java.lang.String");
    }

    protected void startShare(Intent intent) {
        if (intent == null) {
            return;
        }
        if (Build.VERSION.SDK_INT > 24) {
            intent.setFlags(3);
        }
        this.context.startActivity(intent);
    }
}
