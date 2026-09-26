package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.concurrent.futures.ResolvableFuture;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class ProfileVerifier {
    private static final String CUR_PROFILES_BASE_DIR = "/data/misc/profiles/cur/0/";
    private static final String PROFILE_FILE_NAME = "primary.prof";
    private static final String PROFILE_INSTALLED_CACHE_FILE_NAME = "profileInstalled";
    private static final String REF_PROFILES_BASE_DIR = "/data/misc/profiles/ref/";
    private static final String TAG = "ProfileVerifier";
    private static final ResolvableFuture<CompilationStatus> sFuture = ResolvableFuture.u();
    private static final Object SYNC_OBJ = new Object();

    @Nullable
    private static CompilationStatus sCompilationStatus = null;

    @RestrictTo
    static class Cache {
        private static final int SCHEMA = 1;
        final long mInstalledCurrentProfileSize;
        final long mPackageLastUpdateTime;
        final int mResultCode;
        final int mSchema;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof Cache)) {
                return false;
            }
            Cache cache = (Cache) obj;
            return this.mResultCode == cache.mResultCode && this.mPackageLastUpdateTime == cache.mPackageLastUpdateTime && this.mSchema == cache.mSchema && this.mInstalledCurrentProfileSize == cache.mInstalledCurrentProfileSize;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.mResultCode), Long.valueOf(this.mPackageLastUpdateTime), Integer.valueOf(this.mSchema), Long.valueOf(this.mInstalledCurrentProfileSize));
        }

        static Cache a(@NonNull File file) throws IOException {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
            try {
                Cache cache = new Cache(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
                dataInputStream.close();
                return cache;
            } catch (Throwable th) {
                try {
                    dataInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        Cache(int i10, int i11, long j6, long j10) {
            this.mSchema = i10;
            this.mResultCode = i11;
            this.mPackageLastUpdateTime = j6;
            this.mInstalledCurrentProfileSize = j10;
        }

        void b(@NonNull File file) throws IOException {
            file.delete();
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            try {
                dataOutputStream.writeInt(this.mSchema);
                dataOutputStream.writeInt(this.mResultCode);
                dataOutputStream.writeLong(this.mPackageLastUpdateTime);
                dataOutputStream.writeLong(this.mInstalledCurrentProfileSize);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    @RequiresApi
    private static class Api33Impl {
        private Api33Impl() {
        }

        @DoNotInline
        static PackageInfo a(PackageManager packageManager, Context context) throws PackageManager.NameNotFoundException {
            return packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
        }
    }

    public static class CompilationStatus {
        public static final int RESULT_CODE_COMPILED_WITH_PROFILE = 1;
        public static final int RESULT_CODE_COMPILED_WITH_PROFILE_NON_MATCHING = 3;
        public static final int RESULT_CODE_ERROR_CACHE_FILE_EXISTS_BUT_CANNOT_BE_READ = 131072;
        public static final int RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE = 196608;
        private static final int RESULT_CODE_ERROR_CODE_BIT_SHIFT = 16;
        public static final int RESULT_CODE_ERROR_PACKAGE_NAME_DOES_NOT_EXIST = 65536;
        public static final int RESULT_CODE_ERROR_UNSUPPORTED_API_VERSION = 262144;
        public static final int RESULT_CODE_NO_PROFILE = 0;
        public static final int RESULT_CODE_PROFILE_ENQUEUED_FOR_COMPILATION = 2;
        private final boolean mHasCurrentProfile;
        private final boolean mHasReferenceProfile;
        final int mResultCode;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        public @interface ResultCode {
        }

        CompilationStatus(int i10, boolean z6, boolean z10) {
            this.mResultCode = i10;
            this.mHasCurrentProfile = z10;
            this.mHasReferenceProfile = z6;
        }
    }

    private static CompilationStatus b(int i10, boolean z6, boolean z10) {
        CompilationStatus compilationStatus = new CompilationStatus(i10, z6, z10);
        sCompilationStatus = compilationStatus;
        sFuture.q(compilationStatus);
        return sCompilationStatus;
    }

    @NonNull
    @RestrictTo
    @WorkerThread
    static CompilationStatus c(@NonNull Context context, boolean z6) {
        Cache cacheA;
        int i10;
        CompilationStatus compilationStatus;
        if (!z6 && (compilationStatus = sCompilationStatus) != null) {
            return compilationStatus;
        }
        synchronized (SYNC_OBJ) {
            if (!z6) {
                try {
                    CompilationStatus compilationStatus2 = sCompilationStatus;
                    if (compilationStatus2 != null) {
                        return compilationStatus2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            int i11 = Build.VERSION.SDK_INT;
            int i12 = 0;
            if (i11 >= 28 && i11 != 30) {
                File file = new File(new File(REF_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                long length = file.length();
                boolean z10 = file.exists() && length > 0;
                File file2 = new File(new File(CUR_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                long length2 = file2.length();
                boolean z11 = file2.exists() && length2 > 0;
                try {
                    long jA = a(context);
                    File file3 = new File(context.getFilesDir(), PROFILE_INSTALLED_CACHE_FILE_NAME);
                    if (file3.exists()) {
                        try {
                            cacheA = Cache.a(file3);
                        } catch (IOException unused) {
                            return b(131072, z10, z11);
                        }
                    } else {
                        cacheA = null;
                    }
                    if (cacheA != null && cacheA.mPackageLastUpdateTime == jA && (i10 = cacheA.mResultCode) != 2) {
                        i12 = i10;
                    } else if (z10) {
                        i12 = 1;
                    } else if (z11) {
                        i12 = 2;
                    }
                    if (z6 && z11 && i12 != 1) {
                        i12 = 2;
                    }
                    if (cacheA != null && cacheA.mResultCode == 2 && i12 == 1 && length < cacheA.mInstalledCurrentProfileSize) {
                        i12 = 3;
                    }
                    Cache cache = new Cache(1, i12, jA, length2);
                    if (cacheA == null || !cacheA.equals(cache)) {
                        try {
                            cache.b(file3);
                        } catch (IOException unused2) {
                            i12 = CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        }
                    }
                    return b(i12, z10, z11);
                } catch (PackageManager.NameNotFoundException unused3) {
                    return b(65536, z10, z11);
                }
            }
            return b(262144, false, false);
        }
    }

    private ProfileVerifier() {
    }

    private static long a(Context context) throws PackageManager.NameNotFoundException {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        if (Build.VERSION.SDK_INT >= 33) {
            return Api33Impl.a(packageManager, context).lastUpdateTime;
        }
        return packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }
}
