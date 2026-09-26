package com.google.android.gms.dynamite;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes9.dex */
@KeepForSdk
public final class DynamiteModule {

    @KeepForSdk
    public static final int LOCAL = -1;

    @KeepForSdk
    public static final int NONE = 0;

    @KeepForSdk
    public static final int NO_SELECTION = 0;

    @KeepForSdk
    public static final int REMOTE = 1;

    @Nullable
    private static Boolean zzb = null;

    @Nullable
    private static String zzc = null;
    private static boolean zzd = false;
    private static int zze = -1;

    @Nullable
    private static Boolean zzf;

    @Nullable
    private static zzq zzk;

    @Nullable
    private static zzr zzl;
    private final Context zzj;
    private static final ThreadLocal zzg = new ThreadLocal();
    private static final ThreadLocal zzh = new zzd();
    private static final VersionPolicy.IVersions zzi = new zze();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE = new zzf();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_LOCAL = new zzg();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE_VERSION_NO_FORCE_STAGING = new zzh();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION = new zzi();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING = new zzj();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_REMOTE_VERSION = new zzk();

    @NonNull
    public static final VersionPolicy zza = new zzl();

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {

        @Nullable
        public static ClassLoader sClassLoader;
    }

    @KeepForSdk
    public static class LoadingException extends Exception {
        /* synthetic */ LoadingException(String str, zzp zzpVar) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, Throwable th, zzp zzpVar) {
            super(str, th);
        }
    }

    public interface VersionPolicy {

        @KeepForSdk
        public interface IVersions {
            int zza(@NonNull Context context, @NonNull String str);

            int zzb(@NonNull Context context, @NonNull String str, boolean z6) throws LoadingException;
        }

        @KeepForSdk
        public static class SelectionResult {

            @KeepForSdk
            public int localVersion = 0;

            @KeepForSdk
            public int remoteVersion = 0;

            @KeepForSdk
            public int selection = 0;
        }

        @NonNull
        @KeepForSdk
        SelectionResult selectModule(@NonNull Context context, @NonNull String str, @NonNull IVersions iVersions) throws LoadingException;
    }

    @KeepForSdk
    public static int getRemoteVersion(@NonNull Context context, @NonNull String str) {
        return zza(context, str, false);
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00e0  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    private static int zzb(Context context, String str, boolean z6, boolean z10) throws Throwable {
        Throwable th;
        Exception e;
        ?? r1 = 0;
        ?? r5 = 0;
        ?? r10 = 0;
        ?? r11 = 0;
        try {
            try {
                boolean z11 = true;
                Cursor cursorQuery = context.getContentResolver().query(new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").path(true != z6 ? "api" : "api_force_staging").appendPath(str).appendQueryParameter("requestStartTime", String.valueOf(((Long) zzh.get()).longValue())).build(), null, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            boolean z12 = false;
                            int i10 = cursorQuery.getInt(0);
                            if (i10 > 0) {
                                synchronized (DynamiteModule.class) {
                                    try {
                                        zzc = cursorQuery.getString(2);
                                        int columnIndex = cursorQuery.getColumnIndex("loaderVersion");
                                        if (columnIndex >= 0) {
                                            zze = cursorQuery.getInt(columnIndex);
                                        }
                                        int columnIndex2 = cursorQuery.getColumnIndex("disableStandaloneDynamiteLoader2");
                                        if (columnIndex2 >= 0) {
                                            if (cursorQuery.getInt(columnIndex2) == 0) {
                                                z11 = false;
                                            }
                                            zzd = z11;
                                            z12 = z11;
                                        }
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                                if (zze(cursorQuery)) {
                                    cursorQuery = null;
                                }
                            }
                            if (z10 && z12) {
                                throw new LoadingException("forcing fallback to container DynamiteLoader impl", r10 == true ? 1 : 0);
                            }
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return i10;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        if (e instanceof LoadingException) {
                            throw e;
                        }
                        throw new LoadingException("V2 version check failed: " + e.getMessage(), e, r5 == true ? 1 : 0);
                    }
                }
                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                throw new LoadingException("Failed to connect to dynamite module ContentResolver.", r11 == true ? 1 : 0);
            } catch (Throwable th3) {
                th = th3;
                r1 = context;
                if (r1 != 0) {
                    r1.close();
                }
                throw th;
            }
        } catch (Exception e6) {
            e = e6;
        } catch (Throwable th4) {
            th = th4;
            if (r1 != 0) {
                r1.close();
            }
            throw th;
        }
    }

    private static void zzd(ClassLoader classLoader) throws LoadingException {
        zzr zzrVar;
        zzp zzpVar = null;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzrVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzrVar = iInterfaceQueryLocalInterface instanceof zzr ? (zzr) iInterfaceQueryLocalInterface : new zzr(iBinder);
            }
            zzl = zzrVar;
        } catch (ClassNotFoundException e) {
            e = e;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzpVar);
        } catch (IllegalAccessException e2) {
            e = e2;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzpVar);
        } catch (InstantiationException e6) {
            e = e6;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzpVar);
        } catch (NoSuchMethodException e7) {
            e = e7;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzpVar);
        } catch (InvocationTargetException e10) {
            e = e10;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzpVar);
        }
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public Context getModuleContext() {
        return this.zzj;
    }

    @KeepForSdk
    public static int getLocalVersion(@NonNull Context context, @NonNull String str) {
        try {
            Class<?> clsLoadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (Objects.equal(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            Log.e("DynamiteModule", "Module descriptor id '" + String.valueOf(declaredField.get(null)) + "' didn't match expected id '" + str + "'");
            return 0;
        } catch (ClassNotFoundException unused) {
            Log.w("DynamiteModule", "Local module descriptor class for " + str + " not found.");
            return 0;
        } catch (Exception e) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e.getMessage())));
            return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x024b  */
    /* JADX WARN: Code duplicated, block: B:118:0x0251  */
    /* JADX WARN: Code duplicated, block: B:121:0x025e  */
    /* JADX WARN: Code duplicated, block: B:126:0x0270 A[Catch: all -> 0x0079, TryCatch #4 {all -> 0x0079, blocks: (B:5:0x0029, B:9:0x0073, B:16:0x0081, B:19:0x0087, B:22:0x0091, B:102:0x01fc, B:103:0x0207, B:106:0x020a, B:107:0x020b, B:108:0x0213, B:126:0x0270, B:127:0x0287, B:109:0x0214, B:111:0x0232, B:113:0x0241, B:124:0x0267, B:125:0x026f, B:128:0x0288, B:129:0x02b8), top: B:145:0x0029, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x00c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:146:0x0096 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:147:0x0091 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:19:0x0087 A[Catch: all -> 0x0079, TRY_LEAVE, TryCatch #4 {all -> 0x0079, blocks: (B:5:0x0029, B:9:0x0073, B:16:0x0081, B:19:0x0087, B:22:0x0091, B:102:0x01fc, B:103:0x0207, B:106:0x020a, B:107:0x020b, B:108:0x0213, B:126:0x0270, B:127:0x0287, B:109:0x0214, B:111:0x0232, B:113:0x0241, B:124:0x0267, B:125:0x026f, B:128:0x0288, B:129:0x02b8), top: B:145:0x0029, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x008f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x009c A[Catch: all -> 0x01ef, TryCatch #6 {, blocks: (B:25:0x0096, B:27:0x009c, B:28:0x009e, B:98:0x01f1, B:99:0x01f9), top: B:146:0x0096 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x00a1 A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TRY_ENTER, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00a8 A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00ce A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TRY_ENTER, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x014d A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0159 A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x017d A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0184 A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x018c A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x019b A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x01a4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x01a6 A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01b6 A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x01cb A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01d4 A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01dd A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01e6 A[Catch: all -> 0x010c, LoadingException -> 0x010f, RemoteException -> 0x0112, TryCatch #7 {RemoteException -> 0x0112, LoadingException -> 0x010f, all -> 0x010c, blocks: (B:24:0x0095, B:30:0x00a1, B:32:0x00a8, B:33:0x00c8, B:37:0x00ce, B:39:0x00d6, B:41:0x00da, B:42:0x00e5, B:49:0x00f2, B:51:0x00f8, B:59:0x0128, B:61:0x0130, B:63:0x0138, B:64:0x0140, B:58:0x0115, B:67:0x0143, B:68:0x0144, B:69:0x014c, B:70:0x014d, B:71:0x0155, B:74:0x0158, B:75:0x0159, B:77:0x017d, B:79:0x0184, B:81:0x018c, B:87:0x01c5, B:89:0x01cb, B:90:0x01d4, B:91:0x01dc, B:82:0x019b, B:83:0x01a3, B:85:0x01a6, B:86:0x01b6, B:92:0x01dd, B:93:0x01e5, B:94:0x01e6, B:95:0x01ee, B:101:0x01fb), top: B:148:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x01f1 A[Catch: all -> 0x01ef, TRY_ENTER, TryCatch #6 {, blocks: (B:25:0x0096, B:27:0x009c, B:28:0x009e, B:98:0x01f1, B:99:0x01f9), top: B:146:0x0096 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:126:0x0270, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x00a8, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:75:0x0159, please report this as an issue */
    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public static DynamiteModule load(@NonNull Context context, @NonNull VersionPolicy versionPolicy, @NonNull String str) throws LoadingException {
        DynamiteModule dynamiteModuleZzc;
        int i10;
        Boolean bool;
        zzq zzqVarZzg;
        int iZze;
        IObjectWrapper iObjectWrapperZzh;
        Object objUnwrap;
        DynamiteModule dynamiteModule;
        zzn zznVar;
        zzr zzrVar;
        zzn zznVar2;
        Boolean boolValueOf;
        IObjectWrapper iObjectWrapperZze;
        Cursor cursor;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new LoadingException("null application Context", null);
        }
        ThreadLocal threadLocal = zzg;
        zzn zznVar3 = (zzn) threadLocal.get();
        zzn zznVar4 = new zzn(null);
        threadLocal.set(zznVar4);
        ThreadLocal threadLocal2 = zzh;
        long jLongValue = ((Long) threadLocal2.get()).longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            VersionPolicy.SelectionResult selectionResultSelectModule = versionPolicy.selectModule(context, str, zzi);
            Log.i("DynamiteModule", "Considering local module " + str + ":" + selectionResultSelectModule.localVersion + " and remote module " + str + ":" + selectionResultSelectModule.remoteVersion);
            int i11 = selectionResultSelectModule.selection;
            if (i11 != 0) {
                if (i11 != -1) {
                    if (i11 == 1 || selectionResultSelectModule.remoteVersion != 0) {
                        if (i11 == -1) {
                            dynamiteModuleZzc = zzc(applicationContext, str);
                        } else {
                            if (i11 == 1) {
                                throw new LoadingException("VersionPolicy returned invalid code:" + i11, null);
                            }
                            try {
                                i10 = selectionResultSelectModule.remoteVersion;
                                try {
                                    synchronized (DynamiteModule.class) {
                                        if (zzf(context)) {
                                            throw new LoadingException("Remote loading disabled", null);
                                        }
                                        bool = zzb;
                                    }
                                    if (bool != null) {
                                        throw new LoadingException("Failed to determine which loading route to use.", null);
                                    }
                                    if (bool.booleanValue()) {
                                        Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i10);
                                        synchronized (DynamiteModule.class) {
                                            zzrVar = zzl;
                                        }
                                        if (zzrVar != null) {
                                            throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                                        }
                                        zznVar2 = (zzn) threadLocal.get();
                                        if (zznVar2 != null || zznVar2.zza == null) {
                                            throw new LoadingException("No result cursor", null);
                                        }
                                        Context applicationContext2 = context.getApplicationContext();
                                        Cursor cursor2 = zznVar2.zza;
                                        ObjectWrapper.wrap(null);
                                        synchronized (DynamiteModule.class) {
                                            boolValueOf = Boolean.valueOf(zze >= 2);
                                        }
                                        if (boolValueOf.booleanValue()) {
                                            Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                            iObjectWrapperZze = zzrVar.zzf(ObjectWrapper.wrap(applicationContext2), str, i10, ObjectWrapper.wrap(cursor2));
                                        } else {
                                            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                            iObjectWrapperZze = zzrVar.zze(ObjectWrapper.wrap(applicationContext2), str, i10, ObjectWrapper.wrap(cursor2));
                                        }
                                        Context context2 = (Context) ObjectWrapper.unwrap(iObjectWrapperZze);
                                        if (context2 == null) {
                                            throw new LoadingException("Failed to get module context", null);
                                        }
                                        dynamiteModule = new DynamiteModule(context2);
                                    } else {
                                        Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i10);
                                        zzqVarZzg = zzg(context);
                                        if (zzqVarZzg != null) {
                                            throw new LoadingException("Failed to create IDynamiteLoader.", null);
                                        }
                                        iZze = zzqVarZzg.zze();
                                        if (iZze >= 3) {
                                            zznVar = (zzn) threadLocal.get();
                                            if (zznVar != null) {
                                                throw new LoadingException("No cached result cursor holder", null);
                                            }
                                            iObjectWrapperZzh = zzqVarZzg.zzi(ObjectWrapper.wrap(context), str, i10, ObjectWrapper.wrap(zznVar.zza));
                                        } else if (iZze == 2) {
                                            Log.w("DynamiteModule", "IDynamite loader version = 2");
                                            iObjectWrapperZzh = zzqVarZzg.zzj(ObjectWrapper.wrap(context), str, i10);
                                        } else {
                                            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                            iObjectWrapperZzh = zzqVarZzg.zzh(ObjectWrapper.wrap(context), str, i10);
                                        }
                                        objUnwrap = ObjectWrapper.unwrap(iObjectWrapperZzh);
                                        if (objUnwrap != null) {
                                            throw new LoadingException("Failed to load remote module.", null);
                                        }
                                        dynamiteModule = new DynamiteModule((Context) objUnwrap);
                                    }
                                    dynamiteModuleZzc = dynamiteModule;
                                } catch (RemoteException e) {
                                    throw new LoadingException("Failed to load remote module.", e, null);
                                } catch (LoadingException e2) {
                                    throw e2;
                                } catch (Throwable th) {
                                    CrashUtils.addDynamiteErrorToDropBox(context, th);
                                    throw new LoadingException("Failed to load remote module.", th, null);
                                }
                            } catch (LoadingException e6) {
                                Log.w("DynamiteModule", "Failed to load remote module: " + e6.getMessage());
                                int i12 = selectionResultSelectModule.localVersion;
                                if (i12 == 0 || versionPolicy.selectModule(context, str, new zzo(i12, 0)).selection != -1) {
                                    throw new LoadingException("Remote load failed. No local fallback found.", e6, null);
                                }
                                dynamiteModuleZzc = zzc(applicationContext, str);
                            }
                        }
                        if (jLongValue == 0) {
                            zzh.remove();
                        } else {
                            zzh.set(Long.valueOf(jLongValue));
                        }
                        cursor = zznVar4.zza;
                        if (cursor != null) {
                            cursor.close();
                        }
                        zzg.set(zznVar3);
                        return dynamiteModuleZzc;
                    }
                } else if (selectionResultSelectModule.localVersion != 0) {
                    i11 = -1;
                    if (i11 == 1) {
                    }
                    if (i11 == -1) {
                        dynamiteModuleZzc = zzc(applicationContext, str);
                    } else {
                        if (i11 == 1) {
                            throw new LoadingException("VersionPolicy returned invalid code:" + i11, null);
                        }
                        i10 = selectionResultSelectModule.remoteVersion;
                        synchronized (DynamiteModule.class) {
                            if (zzf(context)) {
                                throw new LoadingException("Remote loading disabled", null);
                            }
                            bool = zzb;
                            if (bool != null) {
                                throw new LoadingException("Failed to determine which loading route to use.", null);
                            }
                            if (bool.booleanValue()) {
                                Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i10);
                                synchronized (DynamiteModule.class) {
                                    zzrVar = zzl;
                                    if (zzrVar != null) {
                                        throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                                    }
                                    zznVar2 = (zzn) threadLocal.get();
                                    if (zznVar2 != null) {
                                    }
                                    throw new LoadingException("No result cursor", null);
                                }
                            }
                            Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i10);
                            zzqVarZzg = zzg(context);
                            if (zzqVarZzg != null) {
                                throw new LoadingException("Failed to create IDynamiteLoader.", null);
                            }
                            iZze = zzqVarZzg.zze();
                            if (iZze >= 3) {
                                zznVar = (zzn) threadLocal.get();
                                if (zznVar != null) {
                                    throw new LoadingException("No cached result cursor holder", null);
                                }
                                iObjectWrapperZzh = zzqVarZzg.zzi(ObjectWrapper.wrap(context), str, i10, ObjectWrapper.wrap(zznVar.zza));
                            } else if (iZze == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2");
                                iObjectWrapperZzh = zzqVarZzg.zzj(ObjectWrapper.wrap(context), str, i10);
                            } else {
                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                iObjectWrapperZzh = zzqVarZzg.zzh(ObjectWrapper.wrap(context), str, i10);
                            }
                            objUnwrap = ObjectWrapper.unwrap(iObjectWrapperZzh);
                            if (objUnwrap != null) {
                                throw new LoadingException("Failed to load remote module.", null);
                            }
                            dynamiteModule = new DynamiteModule((Context) objUnwrap);
                            dynamiteModuleZzc = dynamiteModule;
                        }
                    }
                    if (jLongValue == 0) {
                        zzh.remove();
                    } else {
                        zzh.set(Long.valueOf(jLongValue));
                    }
                    cursor = zznVar4.zza;
                    if (cursor != null) {
                        cursor.close();
                    }
                    zzg.set(zznVar3);
                    return dynamiteModuleZzc;
                }
            }
            throw new LoadingException("No acceptable module " + str + " found. Local version is " + selectionResultSelectModule.localVersion + " and remote version is " + selectionResultSelectModule.remoteVersion + ".", null);
        } catch (Throwable th2) {
            if (jLongValue == 0) {
                zzh.remove();
            } else {
                zzh.set(Long.valueOf(jLongValue));
            }
            Cursor cursor3 = zznVar4.zza;
            if (cursor3 != null) {
                cursor3.close();
            }
            zzg.set(zznVar3);
            throw th2;
        }
    }

    /* JADX INFO: Removed unreachable split cross block B:139:0x01c4 */
    /* JADX WARN: Code duplicated, block: B:105:0x0177 A[Catch: all -> 0x00eb, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x00eb, blocks: (B:3:0x0002, B:64:0x00e0, B:66:0x00e6, B:73:0x010a, B:101:0x0169, B:105:0x0177, B:123:0x01c9, B:124:0x01cc, B:118:0x01c1, B:71:0x00ef, B:126:0x01ce, B:4:0x0003, B:7:0x0009, B:8:0x0025, B:62:0x00dd, B:21:0x0049, B:45:0x00a0, B:48:0x00a3, B:55:0x00bb, B:63:0x00df, B:61:0x00c1), top: B:136:0x0002, inners: #5, #8 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00af A[Catch: all -> 0x0036, TryCatch #10 {, blocks: (B:9:0x0026, B:11:0x0032, B:52:0x00b8, B:16:0x003b, B:18:0x0042, B:20:0x0048, B:25:0x004e, B:27:0x0052, B:31:0x005c, B:33:0x0064, B:36:0x006b, B:43:0x0097, B:44:0x009f, B:39:0x0072, B:41:0x0078, B:42:0x0089, B:47:0x00a2, B:50:0x00a5, B:51:0x00af, B:17:0x003e), top: B:142:0x0026, inners: #12 }] */
    public static int zza(@NonNull Context context, @NonNull String str, boolean z6) {
        Throwable th;
        RemoteException e;
        Cursor cursor;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = zzb;
                Cursor cursor2 = null;
                int iZzf = 0;
                if (bool == null) {
                    try {
                        Field declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                        synchronized (declaredField.getDeclaringClass()) {
                            ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                            if (classLoader == ClassLoader.getSystemClassLoader()) {
                                bool = Boolean.FALSE;
                            } else if (classLoader != null) {
                                try {
                                    zzd(classLoader);
                                } catch (LoadingException unused) {
                                }
                                bool = Boolean.TRUE;
                            } else {
                                if (!zzf(context)) {
                                    return 0;
                                }
                                if (zzd) {
                                    declaredField.set(null, ClassLoader.getSystemClassLoader());
                                    bool = Boolean.FALSE;
                                } else {
                                    Boolean bool2 = Boolean.TRUE;
                                    if (bool2.equals(null)) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    } else {
                                        try {
                                            int iZzb = zzb(context, str, z6, true);
                                            String str2 = zzc;
                                            if (str2 != null && !str2.isEmpty()) {
                                                ClassLoader classLoaderZza = zzb.zza();
                                                if (classLoaderZza == null) {
                                                    if (Build.VERSION.SDK_INT >= 29) {
                                                        b.a();
                                                        String str3 = zzc;
                                                        Preconditions.checkNotNull(str3);
                                                        classLoaderZza = a.a(str3, ClassLoader.getSystemClassLoader());
                                                    } else {
                                                        String str4 = zzc;
                                                        Preconditions.checkNotNull(str4);
                                                        classLoaderZza = new zzc(str4, ClassLoader.getSystemClassLoader());
                                                    }
                                                }
                                                zzd(classLoaderZza);
                                                declaredField.set(null, classLoaderZza);
                                                zzb = bool2;
                                                return iZzb;
                                            }
                                            return iZzb;
                                        } catch (LoadingException unused2) {
                                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                                            bool = Boolean.FALSE;
                                        }
                                    }
                                }
                            }
                            zzb = bool;
                        }
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
                        Log.w("DynamiteModule", "Failed to load module via V2: " + e2.toString());
                        bool = Boolean.FALSE;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return zzb(context, str, z6, false);
                    } catch (LoadingException e6) {
                        Log.w("DynamiteModule", "Failed to retrieve remote module version: " + e6.getMessage());
                        return 0;
                    }
                }
                zzq zzqVarZzg = zzg(context);
                try {
                    if (zzqVarZzg != null) {
                        try {
                            int iZze = zzqVarZzg.zze();
                            if (iZze >= 3) {
                                zzn zznVar = (zzn) zzg.get();
                                if (zznVar == null || (cursor = zznVar.zza) == null) {
                                    Cursor cursor3 = (Cursor) ObjectWrapper.unwrap(zzqVarZzg.zzk(ObjectWrapper.wrap(context), str, z6, ((Long) zzh.get()).longValue()));
                                    if (cursor3 != null) {
                                        try {
                                            if (cursor3.moveToFirst()) {
                                                int i10 = cursor3.getInt(0);
                                                cursor2 = (i10 <= 0 || !zze(cursor3)) ? cursor3 : null;
                                                if (cursor2 != null) {
                                                    cursor2.close();
                                                }
                                                iZzf = i10;
                                            } else {
                                                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                                if (cursor3 != null) {
                                                    cursor3.close();
                                                }
                                            }
                                        } catch (RemoteException e7) {
                                            e = e7;
                                            cursor2 = cursor3;
                                            Log.w("DynamiteModule", "Failed to retrieve remote module version: " + e.getMessage());
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            cursor2 = cursor3;
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            throw th;
                                        }
                                    } else {
                                        Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                        if (cursor3 != null) {
                                            cursor3.close();
                                        }
                                    }
                                } else {
                                    iZzf = cursor.getInt(0);
                                }
                            } else if (iZze == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                iZzf = zzqVarZzg.zzg(ObjectWrapper.wrap(context), str, z6);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                iZzf = zzqVarZzg.zzf(ObjectWrapper.wrap(context), str, z6);
                            }
                        } catch (RemoteException e10) {
                            e = e10;
                        }
                    }
                    return iZzf;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            CrashUtils.addDynamiteErrorToDropBox(context, th4);
            throw th4;
        }
    }

    private static boolean zze(Cursor cursor) {
        zzn zznVar = (zzn) zzg.get();
        if (zznVar == null || zznVar.zza != null) {
            return false;
        }
        zznVar.zza = cursor;
        return true;
    }

    private static boolean zzf(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(zzf)) {
            return true;
        }
        boolean zBooleanValue = false;
        if (zzf == null) {
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 0);
            if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 10000000) == 0 && providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                zBooleanValue = true;
            }
            Boolean boolValueOf = Boolean.valueOf(zBooleanValue);
            zzf = boolValueOf;
            zBooleanValue = boolValueOf.booleanValue();
            if (zBooleanValue && (applicationInfo = providerInfoResolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                zzd = true;
            }
        }
        if (!zBooleanValue) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return zBooleanValue;
    }

    @Nullable
    private static zzq zzg(Context context) {
        zzq zzqVar;
        synchronized (DynamiteModule.class) {
            zzq zzqVar2 = zzk;
            if (zzqVar2 != null) {
                return zzqVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    zzqVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    zzqVar = iInterfaceQueryLocalInterface instanceof zzq ? (zzq) iInterfaceQueryLocalInterface : new zzq(iBinder);
                }
                if (zzqVar != null) {
                    zzk = zzqVar;
                    return zzqVar;
                }
            } catch (Exception e) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e.getMessage());
            }
            return null;
        }
    }

    @NonNull
    @KeepForSdk
    public IBinder instantiate(@NonNull String str) throws LoadingException {
        try {
            return (IBinder) this.zzj.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            throw new LoadingException("Failed to instantiate module class: ".concat(String.valueOf(str)), e, null);
        }
    }

    private DynamiteModule(Context context) {
        Preconditions.checkNotNull(context);
        this.zzj = context;
    }

    private static DynamiteModule zzc(Context context, String str) {
        Log.i("DynamiteModule", "Selected local version of ".concat(String.valueOf(str)));
        return new DynamiteModule(context);
    }
}
