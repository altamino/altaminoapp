package androidx.browser.trusted;

import android.annotation.SuppressLint;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class PackageIdentityUtils {
    private static final String TAG = "PackageIdentity";

    @RequiresApi
    static class Api28Implementation implements SignaturesCompat {
        @Nullable
        public List<byte[]> b(String str, PackageManager packageManager) throws PackageManager.NameNotFoundException {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 134217728);
            ArrayList arrayList = new ArrayList();
            SigningInfo signingInfo = packageInfo.signingInfo;
            if (signingInfo.hasMultipleSigners()) {
                for (Signature signature : signingInfo.getApkContentsSigners()) {
                    arrayList.add(PackageIdentityUtils.a(signature));
                }
            } else {
                arrayList.add(PackageIdentityUtils.a(signingInfo.getSigningCertificateHistory()[0]));
            }
            return arrayList;
        }

        Api28Implementation() {
        }

        @Override // androidx.browser.trusted.PackageIdentityUtils.SignaturesCompat
        public boolean a(String str, PackageManager packageManager, TokenContents tokenContents) throws PackageManager.NameNotFoundException, IOException {
            List<byte[]> listB;
            if (!tokenContents.f().equals(str) || (listB = b(str, packageManager)) == null) {
                return false;
            }
            if (listB.size() == 1) {
                return packageManager.hasSigningCertificate(str, tokenContents.e(0), 1);
            }
            return tokenContents.equals(TokenContents.c(str, listB));
        }
    }

    static class Pre28Implementation implements SignaturesCompat {
        @Nullable
        @SuppressLint({"PackageManagerGetSignatures"})
        public List<byte[]> b(String str, PackageManager packageManager) throws PackageManager.NameNotFoundException {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 64);
            ArrayList arrayList = new ArrayList(packageInfo.signatures.length);
            for (Signature signature : packageInfo.signatures) {
                byte[] bArrA = PackageIdentityUtils.a(signature);
                if (bArrA == null) {
                    return null;
                }
                arrayList.add(bArrA);
            }
            return arrayList;
        }

        Pre28Implementation() {
        }

        @Override // androidx.browser.trusted.PackageIdentityUtils.SignaturesCompat
        public boolean a(String str, PackageManager packageManager, TokenContents tokenContents) throws PackageManager.NameNotFoundException, IOException {
            List<byte[]> listB;
            if (!str.equals(tokenContents.f()) || (listB = b(str, packageManager)) == null) {
                return false;
            }
            return tokenContents.equals(TokenContents.c(str, listB));
        }
    }

    interface SignaturesCompat {
        boolean a(String str, PackageManager packageManager, TokenContents tokenContents) throws PackageManager.NameNotFoundException, IOException;
    }

    @Nullable
    static byte[] a(Signature signature) {
        try {
            return MessageDigest.getInstance("SHA256").digest(signature.toByteArray());
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    private static SignaturesCompat b() {
        return Build.VERSION.SDK_INT >= 28 ? new Api28Implementation() : new Pre28Implementation();
    }

    private PackageIdentityUtils() {
    }

    static boolean c(String str, PackageManager packageManager, TokenContents tokenContents) {
        try {
            return b().a(str, packageManager, tokenContents);
        } catch (PackageManager.NameNotFoundException | IOException e) {
            Log.e(TAG, "Could not check if package matches token.", e);
            return false;
        }
    }
}
