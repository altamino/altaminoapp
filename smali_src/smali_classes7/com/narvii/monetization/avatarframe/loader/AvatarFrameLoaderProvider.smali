.class public final Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/util/fileloader/FileLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private final TTL:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/32 v0, 0xa4cb800

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;->TTL:J

    .line 9
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/fileloader/FileLoader;
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    invoke-direct {v0, p1}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/fileloader/FileLoader;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/fileloader/FileLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/narvii/util/fileloader/FileLoader;->onDestroy()V

    :cond_0
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V
    .locals 4
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/fileloader/FileLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;->TTL:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/fileloader/FileLoader;->trimAndFlush(J)V

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/narvii/util/fileloader/FileLoader;->onPause()V

    :cond_1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/fileloader/FileLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/narvii/util/fileloader/FileLoader;->onResume()V

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/fileloader/FileLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/narvii/util/fileloader/FileLoader;->onStart()V

    :cond_0
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/fileloader/FileLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/narvii/util/fileloader/FileLoader;->onStop()V

    :cond_0
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoaderProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V

    return-void
.end method
