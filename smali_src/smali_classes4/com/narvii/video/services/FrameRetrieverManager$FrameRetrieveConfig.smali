.class public final Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private realFrameTimeInMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->frameTimeInMs:I

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->realFrameTimeInMs:I

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->callbackId:I

    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->input:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->input:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget v0, p1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->frameTimeInMs:I

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->frameTimeInMs:I

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    iget v0, p1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->realFrameTimeInMs:I

    .line 25
    .line 26
    iget v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->realFrameTimeInMs:I

    .line 27
    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    .line 30
    iget p1, p1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->callbackId:I

    .line 31
    .line 32
    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->callbackId:I

    .line 33
    .line 34
    if-ne p1, v0, :cond_0

    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    return p1
.end method

.method public final getCallbackId()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->callbackId:I

    return v0
.end method

.method public final getFrameTimeInMs()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->frameTimeInMs:I

    return v0
.end method

.method public final getInput()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->input:Ljava/lang/String;

    return-object v0
.end method

.method public final getRealFrameTimeInMs()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->realFrameTimeInMs:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->input:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->frameTimeInMs:I

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->realFrameTimeInMs:I

    .line 20
    add-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public final setCallbackId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->callbackId:I

    return-void
.end method

.method public final setFrameTimeInMs(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->frameTimeInMs:I

    return-void
.end method

.method public final setInput(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->input:Ljava/lang/String;

    return-void
.end method

.method public final setRealFrameTimeInMs(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->realFrameTimeInMs:I

    return-void
.end method
