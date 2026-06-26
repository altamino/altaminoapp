.class public Lio/agora/live/LiveChannelConfig;
.super Ljava/lang/Object;
.source "LiveChannelConfig.java"


# instance fields
.field public videoEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lio/agora/live/LiveChannelConfig;->videoEnabled:Z

    return-void
.end method
