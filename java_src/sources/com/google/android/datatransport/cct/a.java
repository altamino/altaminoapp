package com.google.android.datatransport.cct;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.g;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes10.dex */
public final class a implements g {
    private static final String DEFAULT_API_KEY;
    static final String DEFAULT_END_POINT;
    static final String DESTINATION_NAME = "cct";
    private static final String EXTRAS_DELIMITER = "\\";
    private static final String EXTRAS_VERSION_MARKER = "1$";
    public static final a INSTANCE;
    static final String LEGACY_END_POINT;
    public static final a LEGACY_INSTANCE;
    private static final Set<f2.b> SUPPORTED_ENCODINGS;

    @Nullable
    private final String apiKey;

    @NonNull
    private final String endPoint;

    @Override // com.google.android.datatransport.runtime.g
    public Set<f2.b> a() {
        return SUPPORTED_ENCODINGS;
    }

    @Nullable
    public String d() {
        return this.apiKey;
    }

    @NonNull
    public String e() {
        return this.endPoint;
    }

    @Override // com.google.android.datatransport.runtime.f
    @NonNull
    public String getName() {
        return DESTINATION_NAME;
    }

    static {
        String strA = e.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        DEFAULT_END_POINT = strA;
        String strA2 = e.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        LEGACY_END_POINT = strA2;
        String strA3 = e.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        DEFAULT_API_KEY = strA3;
        SUPPORTED_ENCODINGS = Collections.unmodifiableSet(new HashSet(Arrays.asList(f2.b.b("proto"), f2.b.b("json"))));
        INSTANCE = new a(strA, null);
        LEGACY_INSTANCE = new a(strA2, strA3);
    }

    @NonNull
    public static a c(@NonNull byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith(EXTRAS_VERSION_MARKER)) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] strArrSplit = str.substring(2).split(Pattern.quote(EXTRAS_DELIMITER), 2);
        if (strArrSplit.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = strArrSplit[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new a(str2, str3);
    }

    @Nullable
    public byte[] b() {
        String str = this.apiKey;
        if (str == null && this.endPoint == null) {
            return null;
        }
        Object[] objArr = new Object[4];
        objArr[0] = EXTRAS_VERSION_MARKER;
        objArr[1] = this.endPoint;
        objArr[2] = EXTRAS_DELIMITER;
        if (str == null) {
            str = "";
        }
        objArr[3] = str;
        return String.format("%s%s%s%s", objArr).getBytes(Charset.forName("UTF-8"));
    }

    public a(@NonNull String str, @Nullable String str2) {
        this.endPoint = str;
        this.apiKey = str2;
    }

    @Override // com.google.android.datatransport.runtime.f
    @Nullable
    public byte[] getExtras() {
        return b();
    }
}
