package androidx.profileinstaller;

import android.content.res.AssetManager;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
@RestrictTo
public class DeviceProfileWriter {

    @NonNull
    private final String mApkName;

    @NonNull
    private final AssetManager mAssetManager;

    @NonNull
    private final File mCurProfile;

    @NonNull
    private final ProfileInstaller.DiagnosticsCallback mDiagnostics;

    @NonNull
    private final Executor mExecutor;

    @Nullable
    private DexProfileData[] mProfile;

    @NonNull
    private final String mProfileMetaSourceLocation;

    @NonNull
    private final String mProfileSourceLocation;

    @Nullable
    private byte[] mTranscodedProfile;
    private boolean mDeviceSupportsAotProfile = false;

    @Nullable
    private final byte[] mDesiredVersion = d();

    @Nullable
    private DeviceProfileWriter b(DexProfileData[] dexProfileDataArr, byte[] bArr) {
        try {
            InputStream inputStreamH = h(this.mAssetManager, this.mProfileMetaSourceLocation);
            if (inputStreamH == null) {
                if (inputStreamH != null) {
                    inputStreamH.close();
                }
                return null;
            }
            try {
                this.mProfile = ProfileTranscoder.q(inputStreamH, ProfileTranscoder.o(inputStreamH, ProfileTranscoder.MAGIC_PROFM), bArr, dexProfileDataArr);
                inputStreamH.close();
                return this;
            } catch (Throwable th) {
                try {
                    inputStreamH.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (FileNotFoundException e) {
            this.mDiagnostics.a(9, e);
        } catch (IOException e2) {
            this.mDiagnostics.a(7, e2);
        } catch (IllegalStateException e6) {
            this.mProfile = null;
            this.mDiagnostics.a(8, e6);
        }
    }

    @Nullable
    private DexProfileData[] j(InputStream inputStream) {
        try {
            try {
                try {
                    try {
                        DexProfileData[] dexProfileDataArrW = ProfileTranscoder.w(inputStream, ProfileTranscoder.o(inputStream, ProfileTranscoder.MAGIC_PROF), this.mApkName);
                        try {
                            return dexProfileDataArrW;
                        } catch (IOException e) {
                            return dexProfileDataArrW;
                        }
                    } catch (IOException e2) {
                        this.mDiagnostics.a(7, e2);
                        return null;
                    }
                } catch (IllegalStateException e6) {
                    this.mDiagnostics.a(8, e6);
                    inputStream.close();
                    return null;
                }
            } catch (IOException e7) {
                this.mDiagnostics.a(7, e7);
                inputStream.close();
                return null;
            }
        } finally {
            try {
                inputStream.close();
            } catch (IOException e10) {
                this.mDiagnostics.a(7, e10);
            }
        }
    }

    private static boolean k() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 24 || i10 > 33) {
            return false;
        }
        if (i10 != 24 && i10 != 25) {
            switch (i10) {
                case 31:
                case 32:
                case 33:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    private void c() {
        if (!this.mDeviceSupportsAotProfile) {
            throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
        }
    }

    @Nullable
    private static byte[] d() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 24 || i10 > 33) {
            return null;
        }
        switch (i10) {
            case 24:
            case 25:
                return ProfileVersion.V001_N;
            case 26:
                return ProfileVersion.V005_O;
            case 27:
                return ProfileVersion.V009_O_MR1;
            case 28:
            case 29:
            case 30:
                return ProfileVersion.V010_P;
            case 31:
            case 32:
            case 33:
                return ProfileVersion.V015_S;
            default:
                return null;
        }
    }

    @Nullable
    private InputStream f(AssetManager assetManager) {
        try {
            return h(assetManager, this.mProfileSourceLocation);
        } catch (FileNotFoundException e) {
            this.mDiagnostics.a(6, e);
            return null;
        } catch (IOException e2) {
            this.mDiagnostics.a(7, e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(int i10, Object obj) {
        this.mDiagnostics.a(i10, obj);
    }

    private void l(final int i10, @Nullable final Object obj) {
        this.mExecutor.execute(new Runnable() { // from class: androidx.profileinstaller.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f754a.g(i10, obj);
            }
        });
    }

    @RestrictTo
    public boolean e() {
        if (this.mDesiredVersion == null) {
            l(3, Integer.valueOf(Build.VERSION.SDK_INT));
            return false;
        }
        if (this.mCurProfile.canWrite()) {
            this.mDeviceSupportsAotProfile = true;
            return true;
        }
        l(4, null);
        return false;
    }

    @NonNull
    @RestrictTo
    public DeviceProfileWriter m() {
        DexProfileData[] dexProfileDataArr = this.mProfile;
        byte[] bArr = this.mDesiredVersion;
        if (dexProfileDataArr != null && bArr != null) {
            c();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    ProfileTranscoder.E(byteArrayOutputStream, bArr);
                    if (!ProfileTranscoder.B(byteArrayOutputStream, bArr, dexProfileDataArr)) {
                        this.mDiagnostics.a(5, null);
                        this.mProfile = null;
                        byteArrayOutputStream.close();
                        return this;
                    }
                    this.mTranscodedProfile = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    this.mProfile = null;
                } catch (Throwable th) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e) {
                this.mDiagnostics.a(7, e);
            } catch (IllegalStateException e2) {
                this.mDiagnostics.a(8, e2);
            }
        }
        return this;
    }

    @RestrictTo
    public boolean n() {
        byte[] bArr = this.mTranscodedProfile;
        if (bArr == null) {
            return false;
        }
        c();
        try {
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(this.mCurProfile);
                    try {
                        Encoding.l(byteArrayInputStream, fileOutputStream);
                        l(1, null);
                        fileOutputStream.close();
                        byteArrayInputStream.close();
                        this.mTranscodedProfile = null;
                        this.mProfile = null;
                        return true;
                    } catch (Throwable th) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            } catch (Throwable th5) {
                this.mTranscodedProfile = null;
                this.mProfile = null;
                throw th5;
            }
        } catch (FileNotFoundException e) {
            l(6, e);
            this.mTranscodedProfile = null;
            this.mProfile = null;
            return false;
        } catch (IOException e2) {
            l(7, e2);
            this.mTranscodedProfile = null;
            this.mProfile = null;
            return false;
        }
    }

    @RestrictTo
    public DeviceProfileWriter(@NonNull AssetManager assetManager, @NonNull Executor executor, @NonNull ProfileInstaller.DiagnosticsCallback diagnosticsCallback, @NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull File file) {
        this.mAssetManager = assetManager;
        this.mExecutor = executor;
        this.mDiagnostics = diagnosticsCallback;
        this.mApkName = str;
        this.mProfileSourceLocation = str2;
        this.mProfileMetaSourceLocation = str3;
        this.mCurProfile = file;
    }

    @Nullable
    private InputStream h(AssetManager assetManager, String str) throws IOException {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message != null && message.contains("compressed")) {
                this.mDiagnostics.b(5, null);
            }
            return null;
        }
    }

    @NonNull
    @RestrictTo
    public DeviceProfileWriter i() {
        DeviceProfileWriter deviceProfileWriterB;
        c();
        if (this.mDesiredVersion == null) {
            return this;
        }
        InputStream inputStreamF = f(this.mAssetManager);
        if (inputStreamF != null) {
            this.mProfile = j(inputStreamF);
        }
        DexProfileData[] dexProfileDataArr = this.mProfile;
        if (dexProfileDataArr != null && k() && (deviceProfileWriterB = b(dexProfileDataArr, this.mDesiredVersion)) != null) {
            return deviceProfileWriterB;
        }
        return this;
    }
}
