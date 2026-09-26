.class public Lcom/narvii/video/model/ChannelActionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public error:Lcom/narvii/video/model/ChannelActionError;

.field public isSuccess:Z


# direct methods
.method public constructor <init>(ZLcom/narvii/video/model/ChannelActionError;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/video/model/ChannelActionResult;->isSuccess:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/video/model/ChannelActionResult;->error:Lcom/narvii/video/model/ChannelActionError;

    .line 8
    return-void
.end method
