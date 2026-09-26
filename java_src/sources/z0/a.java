package z0;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.g;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements g {
    private static final a EMPTY_KEY = new a();

    @NonNull
    public static a c() {
        return EMPTY_KEY;
    }

    @Override // com.bumptech.glide.load.g
    public void b(@NonNull MessageDigest messageDigest) {
    }

    public String toString() {
        return "EmptySignature";
    }

    private a() {
    }
}
