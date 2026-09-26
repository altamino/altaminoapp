.class public Lokhttp3/internal/WhManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "wormhole"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static init(Lcom/narvii/app/NVApplication;Lcom/narvii/services/ServiceManager;)V
    .locals 1

    .line 1
    .line 2
    new-instance p0, Lokhttp3/internal/WhOkhttp3;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lokhttp3/internal/WhOkhttp3;-><init>()V

    .line 6
    .line 7
    const-string v0, "whOkhttp3"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, p0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 11
    .line 12
    new-instance p0, Lokhttp3/internal/WhInfoSync;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lokhttp3/internal/WhInfoSync;-><init>()V

    .line 16
    .line 17
    const-string v0, "whInfoSync"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, p0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 21
    .line 22
    new-instance p0, Lokhttp3/internal/WhPushRecv;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lokhttp3/internal/WhPushRecv;-><init>()V

    .line 26
    .line 27
    const-string v0, "whPushRecv"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, p0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 31
    return-void
.end method
