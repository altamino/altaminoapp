package com.google.firebase.crashlytics.internal.common;

import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
final class b extends u {
    private final com.google.firebase.crashlytics.internal.model.f0 report;
    private final File reportFile;
    private final String sessionId;

    @Override // com.google.firebase.crashlytics.internal.common.u
    public com.google.firebase.crashlytics.internal.model.f0 b() {
        return this.report;
    }

    @Override // com.google.firebase.crashlytics.internal.common.u
    public File c() {
        return this.reportFile;
    }

    @Override // com.google.firebase.crashlytics.internal.common.u
    public String d() {
        return this.sessionId;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.report.equals(uVar.b()) && this.sessionId.equals(uVar.d()) && this.reportFile.equals(uVar.c());
    }

    public int hashCode() {
        return ((((this.report.hashCode() ^ 1000003) * 1000003) ^ this.sessionId.hashCode()) * 1000003) ^ this.reportFile.hashCode();
    }

    public String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.report + ", sessionId=" + this.sessionId + ", reportFile=" + this.reportFile + "}";
    }

    b(com.google.firebase.crashlytics.internal.model.f0 f0Var, String str, File file) {
        if (f0Var != null) {
            this.report = f0Var;
            if (str != null) {
                this.sessionId = str;
                if (file != null) {
                    this.reportFile = file;
                    return;
                }
                throw new NullPointerException("Null reportFile");
            }
            throw new NullPointerException("Null sessionId");
        }
        throw new NullPointerException("Null report");
    }
}
