package com.google.android.play.core.integrity;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public class c extends ApiException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Throwable f1397a;

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return this.f1397a;
    }

    c(int i10, Throwable th) {
        super(new Status(i10, String.format(Locale.ROOT, "Integrity API error (%d): %s.", Integer.valueOf(i10), s3.a.a(i10))));
        if (i10 == 0) {
            throw new IllegalArgumentException("ErrorCode should not be 0.");
        }
        this.f1397a = th;
    }

    public int a() {
        return super.getStatusCode();
    }
}
