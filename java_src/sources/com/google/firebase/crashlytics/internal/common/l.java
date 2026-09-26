package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
class l {
    private static final String AQS_SESSION_ID_FILENAME_PREFIX = "aqs.";
    private static final FilenameFilter AQS_SESSION_ID_FILE_FILTER = new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.common.j
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return l.d(file, str);
        }
    };
    private static final Comparator<File> FILE_RECENCY_COMPARATOR = new Comparator() { // from class: com.google.firebase.crashlytics.internal.common.k
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return l.e((File) obj, (File) obj2);
        }
    };
    private final e4.f fileStore;

    @Nullable
    private String sessionId = null;

    @Nullable
    private String appQualitySessionId = null;

    @Nullable
    public synchronized String c(@NonNull String str) {
        if (Objects.equals(this.sessionId, str)) {
            return this.appQualitySessionId;
        }
        return g(this.fileStore, str);
    }

    public synchronized void h(@NonNull String str) {
        if (!Objects.equals(this.appQualitySessionId, str)) {
            f(this.fileStore, this.sessionId, str);
            this.appQualitySessionId = str;
        }
    }

    public synchronized void i(@Nullable String str) {
        if (!Objects.equals(this.sessionId, str)) {
            f(this.fileStore, str, this.appQualitySessionId);
            this.sessionId = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(File file, String str) {
        return str.startsWith(AQS_SESSION_ID_FILENAME_PREFIX);
    }

    private static void f(e4.f fVar, @Nullable String str, @Nullable String str2) {
        if (str == null || str2 == null) {
            return;
        }
        try {
            fVar.o(str, AQS_SESSION_ID_FILENAME_PREFIX + str2).createNewFile();
        } catch (IOException e) {
            com.google.firebase.crashlytics.internal.g.f().l("Failed to persist App Quality Sessions session id.", e);
        }
    }

    @Nullable
    @VisibleForTesting
    static String g(e4.f fVar, @NonNull String str) {
        List<File> listP = fVar.p(str, AQS_SESSION_ID_FILE_FILTER);
        if (!listP.isEmpty()) {
            return ((File) Collections.min(listP, FILE_RECENCY_COMPARATOR)).getName().substring(4);
        }
        com.google.firebase.crashlytics.internal.g.f().k("Unable to read App Quality Sessions session id.");
        return null;
    }

    l(e4.f fVar) {
        this.fileStore = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int e(File file, File file2) {
        return Long.compare(file2.lastModified(), file.lastModified());
    }
}
