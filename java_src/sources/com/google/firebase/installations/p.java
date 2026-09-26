package com.google.firebase.installations;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes11.dex */
public final class p {
    private static final String APP_ID_IDENTIFICATION_SUBSTRING = ":";
    private static p singleton;
    private final r4.a clock;
    public static final long AUTH_TOKEN_EXPIRATION_BUFFER_IN_SECS = TimeUnit.HOURS.toSeconds(1);
    private static final Pattern API_KEY_FORMAT = Pattern.compile("\\AA[\\w-]{38}\\z");

    public static p d(r4.a aVar) {
        if (singleton == null) {
            singleton = new p(aVar);
        }
        return singleton;
    }

    static boolean g(@Nullable String str) {
        return API_KEY_FORMAT.matcher(str).matches();
    }

    static boolean h(@Nullable String str) {
        return str.contains(APP_ID_IDENTIFICATION_SUBSTRING);
    }

    public long a() {
        return this.clock.currentTimeMillis();
    }

    public long b() {
        return TimeUnit.MILLISECONDS.toSeconds(a());
    }

    private p(r4.a aVar) {
        this.clock = aVar;
    }

    public static p c() {
        return d(r4.b.a());
    }

    public long e() {
        return (long) (Math.random() * 1000.0d);
    }

    public boolean f(@NonNull q4.d dVar) {
        if (TextUtils.isEmpty(dVar.b()) || dVar.h() + dVar.c() < b() + AUTH_TOKEN_EXPIRATION_BUFFER_IN_SECS) {
            return true;
        }
        return false;
    }
}
