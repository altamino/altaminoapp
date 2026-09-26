package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
class s {
    private final e4.f fileStore;
    private final String markerName;

    private File b() {
        return this.fileStore.e(this.markerName);
    }

    public s(String str, e4.f fVar) {
        this.markerName = str;
        this.fileStore = fVar;
    }

    public boolean a() {
        try {
            return b().createNewFile();
        } catch (IOException e) {
            com.google.firebase.crashlytics.internal.g.f().e("Error creating marker: " + this.markerName, e);
            return false;
        }
    }

    public boolean c() {
        return b().exists();
    }

    public boolean d() {
        return b().delete();
    }
}
