package io.ktor.client.utils;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class b {

    @NotNull
    private static final j7.a<i7.d> HttpRequestCreated = new j7.a<>();

    @NotNull
    private static final j7.a<i7.d> HttpRequestIsReadyForSending = new j7.a<>();

    @NotNull
    private static final j7.a<io.ktor.client.statement.c> HttpResponseReceived = new j7.a<>();

    @NotNull
    private static final j7.a<f> HttpResponseReceiveFailed = new j7.a<>();

    @NotNull
    private static final j7.a<io.ktor.client.statement.c> HttpResponseCancelled = new j7.a<>();

    @NotNull
    public static final j7.a<i7.d> a() {
        return HttpRequestCreated;
    }

    @NotNull
    public static final j7.a<i7.d> b() {
        return HttpRequestIsReadyForSending;
    }

    @NotNull
    public static final j7.a<io.ktor.client.statement.c> c() {
        return HttpResponseCancelled;
    }

    @NotNull
    public static final j7.a<f> d() {
        return HttpResponseReceiveFailed;
    }

    @NotNull
    public static final j7.a<io.ktor.client.statement.c> e() {
        return HttpResponseReceived;
    }
}
