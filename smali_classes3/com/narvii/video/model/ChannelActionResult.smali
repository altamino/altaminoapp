.class public Lcom/narvii/video/model/ChannelActionResult;
.super Ljava/lang/Object;
.source "ChannelActionResult.java"


# instance fields
.field public error:Lcom/narvii/video/model/ChannelActionError;

.field public isSuccess:Z


# direct methods
.method public constructor <init>(ZLcom/narvii/video/model/ChannelActionError;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/narvii/video/model/ChannelActionResult;->isSuccess:Z

    .line 13
    iput-object p2, p0, Lcom/narvii/video/model/ChannelActionResult;->error:Lcom/narvii/video/model/ChannelActionError;

    return-void
.end method
