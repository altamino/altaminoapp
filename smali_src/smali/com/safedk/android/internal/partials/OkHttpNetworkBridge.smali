.class public Lcom/safedk/android/internal/partials/OkHttpNetworkBridge;
.super Ljava/lang/Object;
.source "OkHttpNetworkBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retrofitExceptionCatchingRequestBody_source(Lokhttp3/ResponseBody;)Lokio/BufferedSource;
    .locals 1

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method
