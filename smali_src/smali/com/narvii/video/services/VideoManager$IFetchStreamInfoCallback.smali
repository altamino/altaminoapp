.class public interface abstract Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/services/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFetchStreamInfoCallback"
.end annotation


# virtual methods
.method public abstract onStreamInfoFetched(Lcom/narvii/video/model/StreamInfo;)V
    .param p1    # Lcom/narvii/video/model/StreamInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
