.class public abstract Lcom/narvii/video/pro/StreamingClient;
.super Ljava/lang/Object;
.source "StreamingClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract sendPCMData([B)V
.end method

.method public abstract sendYUVData([BII)V
.end method

.method public abstract startStreaming()V
.end method

.method public abstract stopStreaming()V
.end method
