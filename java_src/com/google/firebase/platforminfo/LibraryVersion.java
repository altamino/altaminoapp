package com.google.firebase.platforminfo;

/* compiled from: com.google.firebase:firebase-common@@17.0.0 */
/* loaded from: classes2.dex */
abstract class LibraryVersion {
    public abstract String getLibraryName();

    public abstract String getVersion();

    LibraryVersion() {
    }

    static LibraryVersion create(String str, String str2) {
        return new AutoValue_LibraryVersion(str, str2);
    }
}
