package com.narvii.util;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.narvii.amino.BuildConfig;
import com.narvii.app.NVApplication;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class PackageUtils {
    private static final Comparator<AminoPackage> AMINO_PACKAGE_COMP = new Comparator<AminoPackage>() { // from class: com.narvii.util.PackageUtils.1
        @Override // java.util.Comparator
        public int compare(AminoPackage aminoPackage, AminoPackage aminoPackage2) {
            int i10 = aminoPackage.communityId - aminoPackage2.communityId;
            if (i10 != 0) {
                return i10;
            }
            int i11 = aminoPackage.appId;
            if (i11 == 0) {
                return aminoPackage2.appId == 0 ? 0 : -1;
            }
            int i12 = aminoPackage2.appId;
            if (i12 == 0) {
                return 1;
            }
            return i12 - i11;
        }
    };
    private static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    private Context context;
    private AminoPackage[] listPackageCache;
    private PackageManager pm;

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public String getAppName(String str) {
        try {
            PackageManager packageManager = this.context.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            return (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : null);
        } catch (Exception unused) {
            return null;
        }
    }

    public int getCommunityIdFromPackageName(String str) {
        int iLastIndexOf = str.lastIndexOf(".x");
        if (iLastIndexOf < 0) {
            return 0;
        }
        int iIndexOf = str.indexOf(46, iLastIndexOf + 3);
        int i10 = iLastIndexOf + 2;
        String strSubstring = iIndexOf < 0 ? str.substring(i10) : str.substring(i10, iIndexOf);
        int iIndexOf2 = strSubstring.indexOf(95);
        if (iIndexOf2 > 0) {
            strSubstring = strSubstring.substring(0, iIndexOf2);
        }
        try {
            return Integer.parseInt(strSubstring);
        } catch (Exception unused) {
            return 0;
        }
    }

    public Locale getForceLocale() {
        try {
            ApplicationInfo applicationInfo = this.context.getPackageManager().getApplicationInfo(this.context.getPackageName(), 128);
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null) {
                String string = bundle.getString("com.narvii.forceLang");
                if (TextUtils.isEmpty(string)) {
                    return null;
                }
                String string2 = applicationInfo.metaData.getString("com.narvii.forceCountry");
                return TextUtils.isEmpty(string2) ? new Locale(string) : new Locale(string, string2);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public boolean installedAcm() {
        PackageInfo packageInfo;
        try {
            packageInfo = this.pm.getPackageInfo(new PackageUtils(this.context).getAcmPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public boolean isInstalled(String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = this.pm.getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public AminoPackage[] listAminoPackages() {
        try {
            PackageManager packageManager = this.context.getPackageManager();
            List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(128);
            boolean z6 = NVApplication.DEBUG;
            HashSet<String> hashSet = new HashSet();
            for (ApplicationInfo applicationInfo : installedApplications) {
                if (applicationInfo.packageName.startsWith("com.narvii.amino.") && isDevPackage(applicationInfo.packageName) == z6) {
                    hashSet.add(applicationInfo.packageName);
                }
            }
            if (hashSet.size() <= 1) {
                hashSet.clear();
                Iterator<ResolveInfo> it = packageManager.queryIntentActivities(new Intent("com.narvii.intent.action.MAIN"), 131072).iterator();
                while (it.hasNext()) {
                    ActivityInfo activityInfo = it.next().activityInfo;
                    String str = activityInfo == null ? null : activityInfo.packageName;
                    if (str != null && str.startsWith("com.narvii.amino.") && isDevPackage(str) == z6) {
                        hashSet.add(str);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (String str2 : hashSet) {
                int communityIdFromPackageName = getCommunityIdFromPackageName(str2);
                if (communityIdFromPackageName > 0) {
                    arrayList.add(new AminoPackage(communityIdFromPackageName, getAppIdFromPackageName(str2), str2));
                } else if (communityIdFromPackageName == 0 && str2.equals(getMasterPackageName())) {
                    arrayList.add(new AminoPackage(communityIdFromPackageName, 0, str2));
                }
            }
            Collections.sort(arrayList, AMINO_PACKAGE_COMP);
            return (AminoPackage[]) arrayList.toArray(new AminoPackage[arrayList.size()]);
        } catch (Throwable th) {
            Log.e("fail to list amino packages", th);
            String packageName = this.context.getPackageName();
            int communityIdFromPackageName2 = getCommunityIdFromPackageName(packageName);
            if (communityIdFromPackageName2 > 0) {
                return new AminoPackage[]{new AminoPackage(communityIdFromPackageName2, getAppIdFromPackageName(packageName), packageName)};
            }
            return (communityIdFromPackageName2 == 0 && packageName.equals(getMasterPackageName())) ? new AminoPackage[]{new AminoPackage(communityIdFromPackageName2, 0, packageName)} : new AminoPackage[0];
        }
    }

    public void openGooglePlay(String str) {
        openGooglePlayWithNativeLink(str, null, null);
    }

    public void openGooglePlayWithNativeLink(String str, String str2, String str3) {
        openGooglePlayWithNativeLink(str, str2, str3, null);
    }

    public static class AminoPackage {
        public final int appId;
        public final int communityId;
        public final String packageName;

        public AminoPackage(int i10, int i11, String str) {
            this.communityId = i10;
            this.appId = i11;
            this.packageName = str;
        }
    }

    public static int compareVersionName(String str, String str2) {
        ArrayList<String> arrayListSplit = StringUtils.split(str, ".");
        ArrayList<String> arrayListSplit2 = StringUtils.split(str2, ".");
        int iMin = Math.min(arrayListSplit.size(), arrayListSplit2.size());
        for (int i10 = 0; i10 < iMin; i10++) {
            int iCompare = Integer.compare(parseVersionSec(arrayListSplit.get(i10)), parseVersionSec(arrayListSplit2.get(i10)));
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return 0;
    }

    private String getSchemePrefix() {
        return NVApplication.DEBUG ? "pabkitapp" : "aminoapp";
    }

    public static boolean isTrustingPackage(String str) {
        return str != null && str.startsWith("com.narvii");
    }

    public boolean acmBroadcast() {
        ResolveInfo resolveInfoResolveActivity = this.context.getPackageManager().resolveActivity(new Intent("com.narvii.amino.acm.BROADCAST"), 0);
        return (resolveInfoResolveActivity == null || resolveInfoResolveActivity.activityInfo == null) ? false : true;
    }

    public void createAmino(int i10) {
        try {
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context, new Intent("android.intent.action.VIEW", Uri.parse(getAcmScheme() + "://template/" + i10)));
        } catch (Exception unused) {
        }
    }

    public void downloadAcm() {
        String acmPackageName = getAcmPackageName();
        try {
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context, new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + acmPackageName)));
        } catch (ActivityNotFoundException unused) {
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context, new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + acmPackageName)));
        }
    }

    public String getAcmPackageName() {
        return "com.narvii.amino.manager" + getPackageSuffix();
    }

    public String getAcmScheme() {
        return NVApplication.DEBUG ? "pabkitmanager" : "narviimanager";
    }

    public int getAppIdFromPackageName(String str) {
        int iLastIndexOf = str.lastIndexOf(".x");
        if (iLastIndexOf < 0) {
            return 0;
        }
        int iIndexOf = str.indexOf(46, iLastIndexOf + 3);
        int i10 = iLastIndexOf + 2;
        String strSubstring = iIndexOf < 0 ? str.substring(i10) : str.substring(i10, iIndexOf);
        int iIndexOf2 = strSubstring.indexOf(95);
        if (iIndexOf2 > 0) {
            try {
                return Integer.parseInt(strSubstring.substring(iIndexOf2 + 1));
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public String getGooglePlayStoreVersionName() {
        return getPackageVersionName("com.android.vending");
    }

    public String getKeychainAuthorities(AminoPackage aminoPackage) {
        StringBuilder sb = new StringBuilder("com.narvii.amino");
        sb.append(getPackageSuffix());
        sb.append(".account");
        if (aminoPackage.communityId == 0) {
            sb.append(".master");
        } else {
            sb.append(".x");
            sb.append(aminoPackage.communityId);
            if (aminoPackage.appId != 0) {
                sb.append('_');
                sb.append(aminoPackage.appId);
            }
        }
        return sb.toString();
    }

    public String getMasterPackageName() {
        return BuildConfig.APPLICATION_ID + getPackageSuffix();
    }

    public String getMasterScheme() {
        return NVApplication.DEBUG ? "pabkitapp" : "aminoapp";
    }

    public String getPackageName(int i10) {
        if (i10 == 0) {
            return getMasterPackageName();
        }
        if (this.listPackageCache == null) {
            this.listPackageCache = listAminoPackages();
        }
        for (AminoPackage aminoPackage : this.listPackageCache) {
            if (aminoPackage.communityId == i10) {
                return aminoPackage.packageName;
            }
        }
        return "com.narvii.amino.x" + i10 + getPackageSuffix();
    }

    public String getPackageSuffix() {
        return this.context.getPackageName().endsWith(".dev") ? ".dev" : "";
    }

    public String getPackageVersionName(String str) {
        try {
            PackageInfo packageInfo = this.pm.getPackageInfo(str, 128);
            if (packageInfo != null) {
                return packageInfo.versionName;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public String getPermalinkHost(boolean z6) {
        String str = NVApplication.DEBUG ? NVApplication.mainHost : ".altamino.top";
        return z6 ? str.substring(1) : str;
    }

    public String getScheme(int i10) {
        return getSchemePrefix() + i10;
    }

    public String getStoryboardName() {
        return "org.creativekit.storyboardeditor" + getPackageSuffix();
    }

    public int getVersionCode() {
        try {
            return this.pm.getPackageInfo(this.context.getPackageName(), 0).versionCode;
        } catch (Exception unused) {
            return 1;
        }
    }

    public String getVersionName() {
        try {
            return this.pm.getPackageInfo(this.context.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return "1.0.0";
        }
    }

    public boolean isDevPackage(String str) {
        return str.endsWith(".dev");
    }

    public boolean isGooglePlayInstalled() {
        return isPackageInstalled("com.android.vending");
    }

    public boolean isInstalledFromGooglePlay() {
        return "com.android.vending".equals(this.context.getPackageManager().getInstallerPackageName(this.context.getPackageName()));
    }

    public boolean isPackageInstalled(String str) {
        if (this.context.getPackageName().equals(str)) {
            return true;
        }
        try {
            return this.pm.getPackageInfo(str, 128) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean isPermalinkHost(String str) {
        return ("." + str).endsWith(getPermalinkHost(false));
    }

    public void launchAcm() {
        try {
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context, new Intent("android.intent.action.VIEW", Uri.parse(getAcmScheme() + "://default")));
        } catch (Exception unused) {
        }
    }

    public boolean openCommunity(String str) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(str);
        try {
            ResolveInfo resolveInfoResolveActivity = this.pm.resolveActivity(intent, 0);
            Intent intent2 = new Intent("android.intent.action.MAIN");
            intent2.addCategory("android.intent.category.LAUNCHER");
            intent2.setClassName(str, resolveInfoResolveActivity.activityInfo.name);
            intent2.setFlags(268435456);
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context, intent2);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void openGooglePlayWithNativeLink(String str, String str2, String str3, String str4) {
        String str5;
        try {
            String str6 = null;
            if (isGooglePlayInstalled()) {
                if (!TextUtils.isEmpty(str2)) {
                    str6 = "deferred_link=" + UriUtils.encodeURIComponent(str2.trim());
                }
                String str7 = "";
                if (!TextUtils.isEmpty(str3)) {
                    if (str6 == null) {
                        str5 = "";
                    } else {
                        str5 = str6 + "&";
                    }
                    str6 = str5 + "amino_tracking_id=" + UriUtils.encodeURIComponent(str3);
                }
                if (!TextUtils.isEmpty(str4)) {
                    if (str6 != null) {
                        str7 = str6 + "&";
                    }
                    str6 = str7 + str4;
                }
            }
            String str8 = "market://details?id=" + str;
            if (!TextUtils.isEmpty(str6)) {
                str8 = str8 + "&referrer=" + UriUtils.encodeURIComponent(str6);
            }
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context, new Intent("android.intent.action.VIEW", Uri.parse(str8)));
        } catch (ActivityNotFoundException unused) {
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context, new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + str)));
        }
    }

    public boolean verifyPackageSignature(String str) {
        PackageManager packageManager = this.context.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 64);
            if (packageInfo == null) {
                return false;
            }
            return packageManager.getPackageInfo(this.context.getPackageName(), 64).signatures[0].equals(packageInfo.signatures[0]);
        } catch (Exception unused) {
            return false;
        }
    }

    public PackageUtils(Context context) {
        PackageManager packageManager;
        this.context = context;
        if (context == null) {
            packageManager = null;
        } else {
            packageManager = context.getPackageManager();
        }
        this.pm = packageManager;
    }

    private static int parseVersionSec(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            i10++;
        }
        if (i10 == 0) {
            return 0;
        }
        return Integer.parseInt(str.substring(0, i10));
    }

    public int getCommunityIdFromScheme(String str) {
        String schemePrefix = getSchemePrefix();
        if (str.startsWith(schemePrefix)) {
            try {
                return Integer.parseInt(str.substring(schemePrefix.length()));
            } catch (Exception unused) {
                return 0;
            }
        }
        return 0;
    }

    public int getPrimaryVersion() {
        ArrayList<String> arrayListSplit = StringUtils.split(getVersionName(), ".");
        if (arrayListSplit.size() > 0) {
            return Integer.parseInt(arrayListSplit.get(0));
        }
        return 1;
    }

    public int getSecondaryVersion() {
        ArrayList<String> arrayListSplit = StringUtils.split(getVersionName(), ".");
        if (arrayListSplit.size() > 1) {
            return Integer.parseInt(arrayListSplit.get(1));
        }
        return 0;
    }

    public boolean isCommunityInstalled(int i10) {
        return isPackageInstalled(getPackageName(i10));
    }

    public boolean isMasterInstalled() {
        return isPackageInstalled(getMasterPackageName());
    }

    public boolean isNativeAminoScheme(String str) {
        String schemePrefix = getSchemePrefix();
        if (str != null && str.startsWith(schemePrefix)) {
            String strSubstring = str.substring(schemePrefix.length());
            if (strSubstring.length() == 0) {
                return true;
            }
            try {
                if (Integer.parseInt(strSubstring) <= 0) {
                    return false;
                }
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        if (!getAcmScheme().equals(str)) {
            return false;
        }
        return true;
    }

    public String getAppName() {
        String appName = getAppName(this.context.getPackageName());
        return TextUtils.isEmpty(appName) ? "Amino" : appName;
    }

    public int getCommunityIdFromPackageName() {
        return getCommunityIdFromPackageName(this.context.getPackageName());
    }
}
