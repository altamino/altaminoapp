package com.google.firebase.crashlytics.internal.metadata;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
class h implements c {
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private g logFile;
    private final int maxLogSize;
    private final File workingFile;

    class a implements g.d {
        final /* synthetic */ byte[] val$logBytes;
        final /* synthetic */ int[] val$offsetHolder;

        a(byte[] bArr, int[] iArr) {
            this.val$logBytes = bArr;
            this.val$offsetHolder = iArr;
        }

        @Override // com.google.firebase.crashlytics.internal.metadata.g.d
        public void a(InputStream inputStream, int i10) throws IOException {
            try {
                inputStream.read(this.val$logBytes, this.val$offsetHolder[0], i10);
                int[] iArr = this.val$offsetHolder;
                iArr[0] = iArr[0] + i10;
            } finally {
                inputStream.close();
            }
        }
    }

    private static class b {
        public final byte[] bytes;
        public final int offset;

        b(byte[] bArr, int i10) {
            this.bytes = bArr;
            this.offset = i10;
        }
    }

    private void f(long j6, String str) {
        if (this.logFile == null) {
            return;
        }
        if (str == null) {
            str = "null";
        }
        try {
            int i10 = this.maxLogSize / 4;
            if (str.length() > i10) {
                str = "..." + str.substring(str.length() - i10);
            }
            this.logFile.f(String.format(Locale.US, "%d %s%n", Long.valueOf(j6), str.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(UTF_8));
            while (!this.logFile.l() && this.logFile.b0() > this.maxLogSize) {
                this.logFile.L();
            }
        } catch (IOException e) {
            com.google.firebase.crashlytics.internal.g.f().e("There was a problem writing to the Crashlytics log.", e);
        }
    }

    private b g() {
        if (!this.workingFile.exists()) {
            return null;
        }
        h();
        g gVar = this.logFile;
        if (gVar == null) {
            return null;
        }
        int[] iArr = {0};
        byte[] bArr = new byte[gVar.b0()];
        try {
            this.logFile.j(new a(bArr, iArr));
        } catch (IOException e) {
            com.google.firebase.crashlytics.internal.g.f().e("A problem occurred while reading the Crashlytics log file.", e);
        }
        return new b(bArr, iArr[0]);
    }

    private void h() {
        if (this.logFile == null) {
            try {
                this.logFile = new g(this.workingFile);
            } catch (IOException e) {
                com.google.firebase.crashlytics.internal.g.f().e("Could not open log file: " + this.workingFile, e);
            }
        }
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.c
    public void d() {
        com.google.firebase.crashlytics.internal.common.i.f(this.logFile, "There was a problem closing the Crashlytics log file.");
        this.logFile = null;
    }

    h(File file, int i10) {
        this.workingFile = file;
        this.maxLogSize = i10;
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.c
    public byte[] a() {
        b bVarG = g();
        if (bVarG == null) {
            return null;
        }
        int i10 = bVarG.offset;
        byte[] bArr = new byte[i10];
        System.arraycopy(bVarG.bytes, 0, bArr, 0, i10);
        return bArr;
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.c
    public void b() {
        d();
        this.workingFile.delete();
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.c
    public void c(long j6, String str) {
        h();
        f(j6, str);
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.c
    public String e() {
        byte[] bArrA = a();
        if (bArrA != null) {
            return new String(bArrA, UTF_8);
        }
        return null;
    }
}
