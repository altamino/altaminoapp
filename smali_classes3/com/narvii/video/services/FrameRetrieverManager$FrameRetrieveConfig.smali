.class public final Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;
.super Ljava/lang/Object;
.source "FrameRetrieverManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/services/FrameRetrieverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameRetrieveConfig"
.end annotation


# instance fields
.field private callbackId:I

.field private frameTimeInMs:I

.field private input:Ljava/lang/String;

.field private realFrameTimeInMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->frameTimeInMs:I

    .line 73
    iput v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->realFrameTimeInMs:I

    .line 74
    iput v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->callbackId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 77
    instance-of v0, p1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;

    iget-object v0, p1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->input:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->input:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->frameTimeInMs:I

    iget v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->frameTimeInMs:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->realFrameTimeInMs:I

    iget v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->realFrameTimeInMs:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->callbackId:I

    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->callbackId:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getCallbackId()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->callbackId:I

    return v0
.end method

.method public final getFrameTimeInMs()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->frameTimeInMs:I

    return v0
.end method

.method public final getInput()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->input:Ljava/lang/String;

    return-object v0
.end method

.method public final getRealFrameTimeInMs()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->realFrameTimeInMs:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->input:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->frameTimeInMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->realFrameTimeInMs:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setCallbackId(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->callbackId:I

    return-void
.end method

.method public final setFrameTimeInMs(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->frameTimeInMs:I

    return-void
.end method

.method public final setInput(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->input:Ljava/lang/String;

    return-void
.end method

.method public final setRealFrameTimeInMs(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->realFrameTimeInMs:I

    return-void
.end method
