package com.narvii.util.crashlytics;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ChangedPackages;
import android.content.pm.FeatureInfo;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.SharedLibraryInfo;
import android.content.pm.VersionedPackage;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class FakePackageManager extends PackageManager {
    private final String fakePackageName;
    private final PackageManager orig;
    private final String origPackageName;

    @Override // android.content.pm.PackageManager
    public void extendVerificationTimeout(int i, int i2, long j) {
    }

    @Override // android.content.pm.PackageManager
    public boolean isPermissionRevokedByPolicy(String str, String str2) {
        return false;
    }

    public FakePackageManager(PackageManager packageManager, String str, String str2) {
        this.orig = packageManager;
        this.origPackageName = str;
        this.fakePackageName = str2;
    }

    private String pn(String str) {
        return str.equals(this.fakePackageName) ? this.origPackageName : str;
    }

    @Override // android.content.pm.PackageManager
    public PackageInfo getPackageInfo(String str, int i) throws PackageManager.NameNotFoundException {
        return this.orig.getPackageInfo(pn(str), i);
    }

    @Override // android.content.pm.PackageManager
    public PackageInfo getPackageInfo(VersionedPackage versionedPackage, int i) throws PackageManager.NameNotFoundException {
        return this.orig.getPackageInfo(versionedPackage, i);
    }

    @Override // android.content.pm.PackageManager
    public String[] currentToCanonicalPackageNames(String[] strArr) {
        return this.orig.currentToCanonicalPackageNames(strArr);
    }

    @Override // android.content.pm.PackageManager
    public String[] canonicalToCurrentPackageNames(String[] strArr) {
        return this.orig.canonicalToCurrentPackageNames(strArr);
    }

    @Override // android.content.pm.PackageManager
    public Intent getLaunchIntentForPackage(String str) {
        return this.orig.getLaunchIntentForPackage(pn(str));
    }

    @Override // android.content.pm.PackageManager
    public Intent getLeanbackLaunchIntentForPackage(String str) {
        return this.orig.getLeanbackLaunchIntentForPackage(str);
    }

    @Override // android.content.pm.PackageManager
    public int[] getPackageGids(String str) throws PackageManager.NameNotFoundException {
        return this.orig.getPackageGids(pn(str));
    }

    @Override // android.content.pm.PackageManager
    public int[] getPackageGids(String str, int i) throws PackageManager.NameNotFoundException {
        return this.orig.getPackageGids(str, i);
    }

    @Override // android.content.pm.PackageManager
    public int getPackageUid(String str, int i) throws PackageManager.NameNotFoundException {
        return this.orig.getPackageUid(str, i);
    }

    @Override // android.content.pm.PackageManager
    public PermissionInfo getPermissionInfo(String str, int i) throws PackageManager.NameNotFoundException {
        return this.orig.getPermissionInfo(str, i);
    }

    @Override // android.content.pm.PackageManager
    public List<PermissionInfo> queryPermissionsByGroup(String str, int i) throws PackageManager.NameNotFoundException {
        return this.orig.queryPermissionsByGroup(str, i);
    }

    @Override // android.content.pm.PackageManager
    public PermissionGroupInfo getPermissionGroupInfo(String str, int i) throws PackageManager.NameNotFoundException {
        return this.orig.getPermissionGroupInfo(str, i);
    }

    @Override // android.content.pm.PackageManager
    public List<PermissionGroupInfo> getAllPermissionGroups(int i) {
        return this.orig.getAllPermissionGroups(i);
    }

    @Override // android.content.pm.PackageManager
    public ApplicationInfo getApplicationInfo(String str, int i) throws PackageManager.NameNotFoundException {
        return this.orig.getApplicationInfo(pn(str), i);
    }

    @Override // android.content.pm.PackageManager
    public ActivityInfo getActivityInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
        return getActivityInfo(componentName, i);
    }

    @Override // android.content.pm.PackageManager
    public ActivityInfo getReceiverInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
        return this.orig.getReceiverInfo(componentName, i);
    }

    @Override // android.content.pm.PackageManager
    public ServiceInfo getServiceInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
        return this.orig.getServiceInfo(componentName, i);
    }

    @Override // android.content.pm.PackageManager
    public ProviderInfo getProviderInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
        return this.orig.getProviderInfo(componentName, i);
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getInstalledPackages(int i) {
        return this.orig.getInstalledPackages(i);
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getPackagesHoldingPermissions(String[] strArr, int i) {
        return Collections.emptyList();
    }

    @Override // android.content.pm.PackageManager
    public int checkPermission(String str, String str2) {
        return this.orig.checkPermission(str, str2);
    }

    @Override // android.content.pm.PackageManager
    public boolean addPermission(PermissionInfo permissionInfo) {
        return this.orig.addPermission(permissionInfo);
    }

    @Override // android.content.pm.PackageManager
    public boolean addPermissionAsync(PermissionInfo permissionInfo) {
        return this.orig.addPermissionAsync(permissionInfo);
    }

    @Override // android.content.pm.PackageManager
    public void removePermission(String str) {
        this.orig.removePermission(str);
    }

    @Override // android.content.pm.PackageManager
    public int checkSignatures(String str, String str2) {
        return this.orig.checkSignatures(pn(str), pn(str2));
    }

    @Override // android.content.pm.PackageManager
    public int checkSignatures(int i, int i2) {
        return this.orig.checkSignatures(i, i2);
    }

    @Override // android.content.pm.PackageManager
    public String[] getPackagesForUid(int i) {
        return this.orig.getPackagesForUid(i);
    }

    @Override // android.content.pm.PackageManager
    public String getNameForUid(int i) {
        return this.orig.getNameForUid(i);
    }

    @Override // android.content.pm.PackageManager
    public List<ApplicationInfo> getInstalledApplications(int i) {
        return this.orig.getInstalledApplications(i);
    }

    @Override // android.content.pm.PackageManager
    public boolean isInstantApp() {
        return this.orig.isInstantApp();
    }

    @Override // android.content.pm.PackageManager
    public boolean isInstantApp(String str) {
        return this.orig.isInstantApp(str);
    }

    @Override // android.content.pm.PackageManager
    public int getInstantAppCookieMaxBytes() {
        return this.orig.getInstantAppCookieMaxBytes();
    }

    @Override // android.content.pm.PackageManager
    public byte[] getInstantAppCookie() {
        return this.orig.getInstantAppCookie();
    }

    @Override // android.content.pm.PackageManager
    public void clearInstantAppCookie() {
        this.orig.clearInstantAppCookie();
    }

    @Override // android.content.pm.PackageManager
    public void updateInstantAppCookie(byte[] bArr) {
        this.orig.updateInstantAppCookie(bArr);
    }

    @Override // android.content.pm.PackageManager
    public String[] getSystemSharedLibraryNames() {
        return this.orig.getSystemSharedLibraryNames();
    }

    @Override // android.content.pm.PackageManager
    public List<SharedLibraryInfo> getSharedLibraries(int i) {
        return this.orig.getSharedLibraries(i);
    }

    @Override // android.content.pm.PackageManager
    public ChangedPackages getChangedPackages(int i) {
        return this.orig.getChangedPackages(i);
    }

    @Override // android.content.pm.PackageManager
    public FeatureInfo[] getSystemAvailableFeatures() {
        return this.orig.getSystemAvailableFeatures();
    }

    @Override // android.content.pm.PackageManager
    public boolean hasSystemFeature(String str) {
        return this.orig.hasSystemFeature(str);
    }

    @Override // android.content.pm.PackageManager
    public boolean hasSystemFeature(String str, int i) {
        return this.orig.hasSystemFeature(str, i);
    }

    @Override // android.content.pm.PackageManager
    public ResolveInfo resolveActivity(Intent intent, int i) {
        return this.orig.resolveActivity(intent, i);
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentActivities(Intent intent, int i) {
        return this.orig.queryIntentActivities(intent, i);
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentActivityOptions(ComponentName componentName, Intent[] intentArr, Intent intent, int i) {
        return this.orig.queryIntentActivityOptions(componentName, intentArr, intent, i);
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i) {
        return this.orig.queryBroadcastReceivers(intent, i);
    }

    @Override // android.content.pm.PackageManager
    public ResolveInfo resolveService(Intent intent, int i) {
        return this.orig.resolveService(intent, i);
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentServices(Intent intent, int i) {
        return this.orig.queryIntentServices(intent, i);
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentContentProviders(Intent intent, int i) {
        return Collections.emptyList();
    }

    @Override // android.content.pm.PackageManager
    public ProviderInfo resolveContentProvider(String str, int i) {
        return this.orig.resolveContentProvider(str, i);
    }

    @Override // android.content.pm.PackageManager
    public List<ProviderInfo> queryContentProviders(String str, int i, int i2) {
        return this.orig.queryContentProviders(str, i, i2);
    }

    @Override // android.content.pm.PackageManager
    public InstrumentationInfo getInstrumentationInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
        return this.orig.getInstrumentationInfo(componentName, i);
    }

    @Override // android.content.pm.PackageManager
    public List<InstrumentationInfo> queryInstrumentation(String str, int i) {
        return this.orig.queryInstrumentation(pn(str), i);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getDrawable(String str, int i, ApplicationInfo applicationInfo) {
        return this.orig.getDrawable(pn(str), i, applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityIcon(ComponentName componentName) throws PackageManager.NameNotFoundException {
        return this.orig.getActivityIcon(componentName);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityIcon(Intent intent) throws PackageManager.NameNotFoundException {
        return this.orig.getActivityIcon(intent);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityBanner(ComponentName componentName) throws PackageManager.NameNotFoundException {
        return this.orig.getActivityBanner(componentName);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityBanner(Intent intent) throws PackageManager.NameNotFoundException {
        return this.orig.getActivityBanner(intent);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getDefaultActivityIcon() {
        return this.orig.getDefaultActivityIcon();
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationIcon(ApplicationInfo applicationInfo) {
        return this.orig.getApplicationIcon(applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationIcon(String str) throws PackageManager.NameNotFoundException {
        return this.orig.getApplicationIcon(pn(str));
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationBanner(ApplicationInfo applicationInfo) {
        return this.orig.getApplicationBanner(applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationBanner(String str) throws PackageManager.NameNotFoundException {
        return this.orig.getApplicationBanner(str);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityLogo(ComponentName componentName) throws PackageManager.NameNotFoundException {
        return this.orig.getActivityLogo(componentName);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityLogo(Intent intent) throws PackageManager.NameNotFoundException {
        return this.orig.getActivityLogo(intent);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationLogo(ApplicationInfo applicationInfo) {
        return this.orig.getApplicationLogo(applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationLogo(String str) throws PackageManager.NameNotFoundException {
        return this.orig.getApplicationLogo(pn(str));
    }

    @Override // android.content.pm.PackageManager
    public Drawable getUserBadgedIcon(Drawable drawable, UserHandle userHandle) {
        return this.orig.getUserBadgedIcon(drawable, userHandle);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getUserBadgedDrawableForDensity(Drawable drawable, UserHandle userHandle, Rect rect, int i) {
        return this.orig.getUserBadgedDrawableForDensity(drawable, userHandle, rect, i);
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getUserBadgedLabel(CharSequence charSequence, UserHandle userHandle) {
        return this.orig.getUserBadgedLabel(charSequence, userHandle);
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getText(String str, int i, ApplicationInfo applicationInfo) {
        return this.orig.getText(pn(str), i, applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public XmlResourceParser getXml(String str, int i, ApplicationInfo applicationInfo) {
        return this.orig.getXml(pn(str), i, applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getApplicationLabel(ApplicationInfo applicationInfo) {
        return this.orig.getApplicationLabel(applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForActivity(ComponentName componentName) throws PackageManager.NameNotFoundException {
        return this.orig.getResourcesForActivity(componentName);
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForApplication(ApplicationInfo applicationInfo) throws PackageManager.NameNotFoundException {
        return this.orig.getResourcesForApplication(applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForApplication(String str) throws PackageManager.NameNotFoundException {
        return this.orig.getResourcesForApplication(pn(str));
    }

    @Override // android.content.pm.PackageManager
    public void verifyPendingInstall(int i, int i2) {
        this.orig.verifyPendingInstall(i, i2);
    }

    @Override // android.content.pm.PackageManager
    public void setInstallerPackageName(String str, String str2) {
        this.orig.setInstallerPackageName(pn(str), pn(str2));
    }

    @Override // android.content.pm.PackageManager
    public String getInstallerPackageName(String str) {
        return this.orig.getInstallerPackageName(pn(str));
    }

    @Override // android.content.pm.PackageManager
    @Deprecated
    public void addPackageToPreferred(String str) {
        this.orig.addPackageToPreferred(pn(str));
    }

    @Override // android.content.pm.PackageManager
    @Deprecated
    public void removePackageFromPreferred(String str) {
        this.orig.removePackageFromPreferred(pn(str));
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getPreferredPackages(int i) {
        return this.orig.getPreferredPackages(i);
    }

    @Override // android.content.pm.PackageManager
    @Deprecated
    public void addPreferredActivity(IntentFilter intentFilter, int i, ComponentName[] componentNameArr, ComponentName componentName) {
        this.orig.addPreferredActivity(intentFilter, i, componentNameArr, componentName);
    }

    @Override // android.content.pm.PackageManager
    public void clearPackagePreferredActivities(String str) {
        this.orig.clearPackagePreferredActivities(pn(str));
    }

    @Override // android.content.pm.PackageManager
    public int getPreferredActivities(List<IntentFilter> list, List<ComponentName> list2, String str) {
        return this.orig.getPreferredActivities(list, list2, pn(str));
    }

    @Override // android.content.pm.PackageManager
    public void setComponentEnabledSetting(ComponentName componentName, int i, int i2) {
        this.orig.setComponentEnabledSetting(componentName, i, i2);
    }

    @Override // android.content.pm.PackageManager
    public int getComponentEnabledSetting(ComponentName componentName) {
        return this.orig.getComponentEnabledSetting(componentName);
    }

    @Override // android.content.pm.PackageManager
    public void setApplicationEnabledSetting(String str, int i, int i2) {
        this.orig.setApplicationEnabledSetting(pn(str), i, i2);
    }

    @Override // android.content.pm.PackageManager
    public int getApplicationEnabledSetting(String str) {
        return this.orig.getApplicationEnabledSetting(pn(str));
    }

    @Override // android.content.pm.PackageManager
    public boolean isSafeMode() {
        return this.orig.isSafeMode();
    }

    @Override // android.content.pm.PackageManager
    public void setApplicationCategoryHint(String str, int i) {
        this.orig.setApplicationCategoryHint(str, i);
    }

    @Override // android.content.pm.PackageManager
    public PackageInstaller getPackageInstaller() {
        return this.orig.getPackageInstaller();
    }

    @Override // android.content.pm.PackageManager
    public boolean canRequestPackageInstalls() {
        return this.orig.canRequestPackageInstalls();
    }
}
