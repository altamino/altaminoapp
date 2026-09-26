package androidx.constraintlayout.core.parser;

import androidx.core.os.EnvironmentCompat;

/* JADX INFO: loaded from: classes8.dex */
public class CLParsingException extends Exception {
    private final String mElementClass;
    private final int mLineNumber;
    private final String mReason;

    public String a() {
        return this.mReason + " (" + this.mElementClass + " at line " + this.mLineNumber + ")";
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "CLParsingException (" + hashCode() + ") : " + a();
    }

    public CLParsingException(String str, CLElement cLElement) {
        this.mReason = str;
        if (cLElement != null) {
            this.mElementClass = cLElement.d();
            this.mLineNumber = cLElement.c();
        } else {
            this.mElementClass = EnvironmentCompat.MEDIA_UNKNOWN;
            this.mLineNumber = 0;
        }
    }
}
