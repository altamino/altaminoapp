package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes7.dex */
class g implements e0 {

    @Nullable
    private final byte[] bytes;

    @NonNull
    private final String dataTransportFilename;

    @NonNull
    private final String reportsEndpointFilename;

    @Override // com.google.firebase.crashlytics.internal.common.e0
    @NonNull
    public String a() {
        return this.reportsEndpointFilename;
    }

    private boolean d() {
        byte[] bArr = this.bytes;
        return bArr == null || bArr.length == 0;
    }

    g(@NonNull String str, @NonNull String str2, @Nullable byte[] bArr) {
        this.dataTransportFilename = str;
        this.reportsEndpointFilename = str2;
        this.bytes = bArr;
    }

    @Nullable
    private byte[] c() {
        if (d()) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                try {
                    gZIPOutputStream.write(this.bytes);
                    gZIPOutputStream.finish();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    gZIPOutputStream.close();
                    byteArrayOutputStream.close();
                    return byteArray;
                } catch (Throwable th) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.common.e0
    @Nullable
    public com.google.firebase.crashlytics.internal.model.f0.d.b b() {
        byte[] bArrC = c();
        if (bArrC == null) {
            return null;
        }
        return com.google.firebase.crashlytics.internal.model.f0.d.b.a().b(bArrC).c(this.dataTransportFilename).a();
    }

    @Override // com.google.firebase.crashlytics.internal.common.e0
    @Nullable
    public InputStream getStream() {
        if (d()) {
            return null;
        }
        return new ByteArrayInputStream(this.bytes);
    }
}
