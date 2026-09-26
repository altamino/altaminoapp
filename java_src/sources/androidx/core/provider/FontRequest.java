package androidx.core.provider;

import android.util.Base64;
import androidx.annotation.ArrayRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class FontRequest {
    private final List<List<byte[]>> mCertificates;
    private final int mCertificatesArray;
    private final String mIdentifier;
    private final String mProviderAuthority;
    private final String mProviderPackage;
    private final String mQuery;

    public FontRequest(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull List<List<byte[]>> list) {
        this.mProviderAuthority = (String) Preconditions.i(str);
        this.mProviderPackage = (String) Preconditions.i(str2);
        this.mQuery = (String) Preconditions.i(str3);
        this.mCertificates = (List) Preconditions.i(list);
        this.mCertificatesArray = 0;
        this.mIdentifier = a(str, str2, str3);
    }

    @Nullable
    public List<List<byte[]>> b() {
        return this.mCertificates;
    }

    @ArrayRes
    public int c() {
        return this.mCertificatesArray;
    }

    @NonNull
    @RestrictTo
    String d() {
        return this.mIdentifier;
    }

    @NonNull
    public String e() {
        return this.mProviderAuthority;
    }

    @NonNull
    public String f() {
        return this.mProviderPackage;
    }

    @NonNull
    public String g() {
        return this.mQuery;
    }

    private String a(@NonNull String str, @NonNull String str2, @NonNull String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.mProviderAuthority + ", mProviderPackage: " + this.mProviderPackage + ", mQuery: " + this.mQuery + ", mCertificates:");
        for (int i10 = 0; i10 < this.mCertificates.size(); i10++) {
            sb.append(" [");
            List<byte[]> list = this.mCertificates.get(i10);
            for (int i11 = 0; i11 < list.size(); i11++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i11), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.mCertificatesArray);
        return sb.toString();
    }

    public FontRequest(@NonNull String str, @NonNull String str2, @NonNull String str3, @ArrayRes int i10) {
        this.mProviderAuthority = (String) Preconditions.i(str);
        this.mProviderPackage = (String) Preconditions.i(str2);
        this.mQuery = (String) Preconditions.i(str3);
        this.mCertificates = null;
        Preconditions.a(i10 != 0);
        this.mCertificatesArray = i10;
        this.mIdentifier = a(str, str2, str3);
    }
}
