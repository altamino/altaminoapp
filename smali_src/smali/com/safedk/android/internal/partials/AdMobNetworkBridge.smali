.class public Lcom/safedk/android/internal/partials/AdMobNetworkBridge;
.super Ljava/lang/Object;
.source "AdMobNetworkBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static httpUrlConnectionDisconnect(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public static httpUrlConnectionGetResponseCode(Ljava/net/HttpURLConnection;)I
    .locals 1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method
