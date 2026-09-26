.class public abstract Lcom/narvii/video/pro/StreamingClient;
.super Ljava/lang/Object;
.source "SourceFile"


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


# virtual methods
.method public abstract sendPCMData([B)V
.end method

.method public abstract sendYUVData([BII)V
.end method

.method public abstract startStreaming()V
.end method

.method public abstract stopStreaming()V
.end method
