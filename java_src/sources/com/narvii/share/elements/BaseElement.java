package com.narvii.share.elements;

import android.content.ClipboardManager;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.share.SharePayload;
import com.narvii.share.ShareableTarget;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.dialog.ShareTutorialDialog;
import com.safedk.android.utils.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes9.dex */
public abstract class BaseElement implements ShareableTarget {
    protected NVContext context;

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public abstract int color();

    protected boolean containActivityCanHanleIntent(Intent intent) {
        return containActivityCanHanleIntent(intent, packageName());
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0079  */
    protected String generateShareStringWithTag(SharePayload sharePayload, NVContext nVContext) {
        String str;
        int i10;
        if (nVContext == null || sharePayload == null) {
            return null;
        }
        Community community = ((CommunityService) nVContext.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(((ConfigService) nVContext.getService("config")).getCommunityId());
        if (community == null) {
            str = null;
        } else {
            str = "#" + community.name.replace(" ", "");
        }
        String string = nVContext.getContext().getString(R.string.share_tag_quiz);
        NVObject nVObject = sharePayload.object;
        if (!(nVObject instanceof Blog) || ((Blog) nVObject).type != 6) {
            return null;
        }
        try {
            if (TextUtils.isEmpty(sharePayload.text)) {
                i10 = 0;
            } else {
                Matcher matcher = Pattern.compile("\\d+").matcher(sharePayload.text);
                if (matcher.find()) {
                    i10 = Integer.parseInt(matcher.group());
                } else {
                    i10 = 0;
                }
            }
        } catch (Exception unused) {
        }
        if (i10 <= 0) {
            return nVContext.getContext().getResources().getString(R.string.share_quiz_link_instagram_hint2, "@aminoapps") + str + string + "#aminoapps";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(nVContext.getContext().getResources().getString(R.string.share_quiz_link_instagram_hint1, i10 + "%", "@aminoapps"));
        sb.append(str);
        sb.append(string);
        sb.append("#aminoapps");
        return sb.toString();
    }

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

    protected boolean containActivityCanHanleIntent(Intent intent, String str) {
        for (ResolveInfo resolveInfo : this.context.getContext().getPackageManager().queryIntentActivities(intent, 0)) {
            if (resolveInfo.activityInfo.packageName.equals(str)) {
                intent.setPackage(resolveInfo.activityInfo.packageName);
                return true;
            }
        }
        return false;
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

    protected void showNotFoundPakage() {
        NVToast.makeText(this.context.getContext(), this.context.getContext().getString(R.string.share_app_not_installed, label()), 0).show();
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

    protected void startShare(Intent intent) {
        if (intent == null) {
            return;
        }
        if (Build.VERSION.SDK_INT > 24) {
            intent.setFlags(3);
        }
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
    }

    public BaseElement(NVContext nVContext) {
        this.context = nVContext;
    }

    public boolean isAvailable() {
        String strPackageName = packageName();
        if (!TextUtils.isEmpty(strPackageName) && !new PackageUtils(this.context.getContext()).isInstalled(strPackageName)) {
            return false;
        }
        return true;
    }

    protected String joinTextWithUrl(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            if (str2 == null) {
                return "";
            }
            return str2;
        }
        if (str2 != null && !str.contains(str2)) {
            return str + str3 + str2;
        }
        return str;
    }

    public String label() {
        String strPackageName = packageName();
        if (TextUtils.isEmpty(strPackageName)) {
            return null;
        }
        return new PackageUtils(this.context.getContext()).getAppName(strPackageName);
    }
}
