package com.google.firebase.analytics.connector;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public interface a {

    /* JADX INFO: renamed from: com.google.firebase.analytics.connector.a$a, reason: collision with other inner class name */
    @KeepForSdk
    public interface InterfaceC0228a {
    }

    @KeepForSdk
    public interface b {
        @KeepForSdk
        void a(int i10, @Nullable Bundle bundle);
    }

    @KeepForSdk
    public static class c {

        @KeepForSdk
        public boolean active;

        @KeepForSdk
        public long creationTimestamp;

        @Nullable
        @KeepForSdk
        public String expiredEventName;

        @Nullable
        @KeepForSdk
        public Bundle expiredEventParams;

        @NonNull
        @KeepForSdk
        public String name;

        @NonNull
        @KeepForSdk
        public String origin;

        @KeepForSdk
        public long timeToLive;

        @Nullable
        @KeepForSdk
        public String timedOutEventName;

        @Nullable
        @KeepForSdk
        public Bundle timedOutEventParams;

        @Nullable
        @KeepForSdk
        public String triggerEventName;

        @KeepForSdk
        public long triggerTimeout;

        @Nullable
        @KeepForSdk
        public String triggeredEventName;

        @Nullable
        @KeepForSdk
        public Bundle triggeredEventParams;

        @KeepForSdk
        public long triggeredTimestamp;

        @Nullable
        @KeepForSdk
        public Object value;
    }

    @KeepForSdk
    void a(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle);

    @KeepForSdk
    void b(@NonNull String str, @NonNull String str2, @NonNull Object obj);

    @KeepForSdk
    @WorkerThread
    int c(@NonNull @Size String str);

    @KeepForSdk
    void clearConditionalUserProperty(@NonNull @Size String str, @Nullable String str2, @Nullable Bundle bundle);

    @NonNull
    @KeepForSdk
    @WorkerThread
    List<c> d(@NonNull String str, @Nullable @Size String str2);

    @Nullable
    @KeepForSdk
    InterfaceC0228a e(@NonNull String str, @NonNull b bVar);

    @KeepForSdk
    void f(@NonNull c cVar);

    @NonNull
    @KeepForSdk
    @WorkerThread
    Map<String, Object> g(boolean z6);
}
