package com.narvii.util;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.narvii.amino.BuildConfig;
import com.narvii.app.NVApplication;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class PackageUtils {
    private static final Comparator<AminoPackage> AMINO_PACKAGE_COMP = new Comparator<AminoPackage>() { // from class: com.narvii.util.PackageUtils.1
        @Override // java.util.Comparator
        public int compare(AminoPackage aminoPackage, AminoPackage aminoPackage2) {
            int i = aminoPackage.communityId - aminoPackage2.communityId;
            if (i != 0) {
                return i;
            }
            int i2 = aminoPackage.appId;
            if (i2 == 0) {
                return aminoPackage2.appId == 0 ? 0 : -1;
            }
            int i3 = aminoPackage2.appId;
            if (i3 == 0) {
                return 1;
            }
            return i3 - i2;
        }
    };
    private static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    private Context context;
    private AminoPackage[] listPackageCache;
    private PackageManager pm;

    public int getVersionCode() {
        return 34745;
    }

    public String getVersionName() {
        return "3.5.34745";
    }

    public boolean verifyPackageSignature(String str) {
        return true;
    }

    public PackageUtils(Context context) {
        this.context = context;
        this.pm = context == null ? null : context.getPackageManager();
    }

    public static int compareVersionName(String str, String str2) {
        ArrayList<String> arrayListSplit = StringUtils.split(str, ".");
        ArrayList<String> arrayListSplit2 = StringUtils.split(str2, ".");
        int iMin = Math.min(arrayListSplit.size(), arrayListSplit2.size());
        for (int i = 0; i < iMin; i++) {
            int versionSec = parseVersionSec(arrayListSplit.get(i));
            int versionSec2 = parseVersionSec(arrayListSplit2.get(i));
            int i2 = versionSec < versionSec2 ? -1 : versionSec == versionSec2 ? 0 : 1;
            if (i2 != 0) {
                return i2;
            }
        }
        return 0;
    }

    private static int parseVersionSec(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            i++;
        }
        if (i == 0) {
            return 0;
        }
        return Integer.parseInt(str.substring(0, i));
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

    public String getPackageSuffix() {
        return this.context.getPackageName().endsWith(".dev") ? ".dev" : "";
    }

    public boolean isDevPackage(String str) {
        return str.endsWith(".dev");
    }

    public String getPackageName(int i) {
        if (i == 0) {
            return getMasterPackageName();
        }
        if (this.listPackageCache == null) {
            this.listPackageCache = listAminoPackages();
        }
        for (AminoPackage aminoPackage : this.listPackageCache) {
            if (aminoPackage.communityId == i) {
                return aminoPackage.packageName;
            }
        }
        return "com.narvii.amino.x" + i + getPackageSuffix();
    }

    public String getAcmPackageName() {
        return "com.narvii.amino.manager" + getPackageSuffix();
    }

    public String getMasterPackageName() {
        return BuildConfig.APPLICATION_ID + getPackageSuffix();
    }

    public String getStoryboardName() {
        return "org.creativekit.storyboardeditor" + getPackageSuffix();
    }

    public boolean isPermalinkHost(String str) {
        return ("." + str).endsWith(getPermalinkHost(false));
    }

    public String getPermalinkHost(boolean z) {
        String str = NVApplication.DEBUG ? NVApplication.MAIN_HOST : BuildConfig.MAIN_HOST;
        return z ? str.substring(1) : str;
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

    public int getCommunityIdFromPackageName(String str) {
        int iLastIndexOf = str.lastIndexOf(".x");
        if (iLastIndexOf < 0) {
            return 0;
        }
        int iIndexOf = str.indexOf(46, iLastIndexOf + 3);
        int i = iLastIndexOf + 2;
        String strSubstring = iIndexOf < 0 ? str.substring(i) : str.substring(i, iIndexOf);
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

    public int getCommunityIdFromPackageName() {
        return getCommunityIdFromPackageName(this.context.getPackageName());
    }

    public int getAppIdFromPackageName(String str) {
        int iLastIndexOf = str.lastIndexOf(".x");
        if (iLastIndexOf < 0) {
            return 0;
        }
        int iIndexOf = str.indexOf(46, iLastIndexOf + 3);
        int i = iLastIndexOf + 2;
        String strSubstring = iIndexOf < 0 ? str.substring(i) : str.substring(i, iIndexOf);
        int iIndexOf2 = strSubstring.indexOf(95);
        if (iIndexOf2 > 0) {
            try {
                return Integer.parseInt(strSubstring.substring(iIndexOf2 + 1));
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    private String getSchemePrefix() {
        return NVApplication.DEBUG ? "pebkitapp" : "narviiapp";
    }

    public String getScheme(int i) {
        return getSchemePrefix() + i;
    }

    public String getMasterScheme() {
        return NVApplication.DEBUG ? "pebkitapp" : "narviiapp";
    }

    public String getAcmScheme() {
        return NVApplication.DEBUG ? "pebkitmanager" : "narviimanager";
    }

    public String getStoryEditorScheme() {
        return NVApplication.DEBUG ? "pebkitstoryeditor" : "narviistoryeditor";
    }

    public int getCommunityIdFromScheme(String str) {
        String schemePrefix = getSchemePrefix();
        if (!str.startsWith(schemePrefix)) {
            return 0;
        }
        try {
            return Integer.parseInt(str.substring(schemePrefix.length()));
        } catch (Exception unused) {
            return 0;
        }
    }

    public boolean isNativeAminoScheme(String str) {
        String schemePrefix = getSchemePrefix();
        if (str == null || !str.startsWith(schemePrefix)) {
            return getAcmScheme().equals(str);
        }
        String strSubstring = str.substring(schemePrefix.length());
        if (strSubstring.length() == 0) {
            return true;
        }
        try {
            return Integer.parseInt(strSubstring) > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public String getAppName(String str) throws PackageManager.NameNotFoundException {
        try {
            PackageManager packageManager = this.context.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            return (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : null);
        } catch (Exception unused) {
            return null;
        }
    }

    public String getAppName() throws PackageManager.NameNotFoundException {
        String appName = getAppName(this.context.getPackageName());
        return TextUtils.isEmpty(appName) ? "Amino" : appName;
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

    public boolean isMasterInstalled() {
        return isPackageInstalled(getMasterPackageName());
    }

    public boolean isCommunityInstalled(int i) {
        return isPackageInstalled(getPackageName(i));
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
            intent2.setFlags(C.ENCODING_PCM_MU_LAW);
            this.context.startActivity(intent2);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void openGooglePlay(String str) {
        openGooglePlayWithNativeLink(str, null, null);
    }

    public void openGooglePlayWithNativeLink(String str, String str2, String str3) {
        openGooglePlayWithNativeLink(str, str2, str3, null);
    }

    public void openGooglePlayWithNativeLink(String str, String str2, String str3, String str4) {
        String str5;
        String str6 = null;
        try {
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
            this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str8)));
        } catch (ActivityNotFoundException unused) {
            this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + str)));
        }
    }

    public boolean isGooglePlayInstalled() {
        return isPackageInstalled("com.android.vending");
    }

    public boolean isInstalledFromGooglePlay() {
        return "com.android.vending".equals(this.context.getPackageManager().getInstallerPackageName(this.context.getPackageName()));
    }

    public Locale getForceLocale() throws PackageManager.NameNotFoundException {
        try {
            ApplicationInfo applicationInfo = this.context.getPackageManager().getApplicationInfo(this.context.getPackageName(), 128);
            if (applicationInfo.metaData != null) {
                String string = applicationInfo.metaData.getString("com.narvii.forceLang");
                if (TextUtils.isEmpty(string)) {
                    return null;
                }
                String string2 = applicationInfo.metaData.getString("com.narvii.forceCountry");
                if (TextUtils.isEmpty(string2)) {
                    return new Locale(string);
                }
                return new Locale(string, string2);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* loaded from: classes3.dex */
    public static class AminoPackage {
        public final int appId;
        public final int communityId;
        public final String packageName;

        public AminoPackage(int i, int i2, String str) {
            this.communityId = i;
            this.appId = i2;
            this.packageName = str;
        }
    }

    public AminoPackage[] listAminoPackages() {
        try {
            PackageManager packageManager = this.context.getPackageManager();
            List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(128);
            boolean z = NVApplication.DEBUG;
            HashSet hashSet = new HashSet();
            for (ApplicationInfo applicationInfo : installedApplications) {
                if (applicationInfo.packageName.startsWith("com.narvii.amino.") && isDevPackage(applicationInfo.packageName) == z) {
                    hashSet.add(applicationInfo.packageName);
                }
            }
            if (hashSet.size() <= 1) {
                hashSet.clear();
                for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(new Intent("com.narvii.intent.action.MAIN"), 131072)) {
                    String str = resolveInfo.activityInfo == null ? null : resolveInfo.activityInfo.packageName;
                    if (str != null && str.startsWith("com.narvii.amino.") && isDevPackage(str) == z) {
                        hashSet.add(str);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
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
            return communityIdFromPackageName2 > 0 ? new AminoPackage[]{new AminoPackage(communityIdFromPackageName2, getAppIdFromPackageName(packageName), packageName)} : (communityIdFromPackageName2 == 0 && packageName.equals(getMasterPackageName())) ? new AminoPackage[]{new AminoPackage(communityIdFromPackageName2, 0, packageName)} : new AminoPackage[0];
        }
    }

    public boolean installedAcm() throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo;
        try {
            packageInfo = this.pm.getPackageInfo(new PackageUtils(this.context).getAcmPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public void launchAcm() {
        try {
            this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(getAcmScheme() + "://default")));
        } catch (Exception unused) {
        }
    }

    public void createAmino(int i) {
        try {
            this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(getAcmScheme() + "://template/" + i)));
        } catch (Exception unused) {
        }
    }

    public void downloadAcm() {
        String acmPackageName = getAcmPackageName();
        try {
            this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + acmPackageName)));
        } catch (ActivityNotFoundException unused) {
            this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + acmPackageName)));
        }
    }

    public boolean acmBroadcast() {
        ResolveInfo resolveInfoResolveActivity = this.context.getPackageManager().resolveActivity(new Intent("com.narvii.amino.acm.BROADCAST"), 0);
        return (resolveInfoResolveActivity == null || resolveInfoResolveActivity.activityInfo == null) ? false : true;
    }

    public boolean isInstalled(String str) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo;
        try {
            packageInfo = this.pm.getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public static boolean isTrustingPackage(String str) {
        return str != null && str.startsWith("com.narvii");
    }
}
