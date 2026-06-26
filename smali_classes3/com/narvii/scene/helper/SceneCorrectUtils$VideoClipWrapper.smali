.class public final Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;
.super Ljava/lang/Object;
.source "SceneCorrectUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/helper/SceneCorrectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoClipWrapper"
.end annotation


# instance fields
.field private final endOffset:I

.field private final startOffset:I

.field private final videoClipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "videoClipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->videoClipList:Ljava/util/ArrayList;

    iput p2, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->startOffset:I

    iput p3, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->endOffset:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;Ljava/util/ArrayList;IIILjava/lang/Object;)Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->videoClipList:Ljava/util/ArrayList;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->startOffset:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->endOffset:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->copy(Ljava/util/ArrayList;II)Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->videoClipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->startOffset:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->endOffset:I

    return v0
.end method

.method public final copy(Ljava/util/ArrayList;II)Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;II)",
            "Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;"
        }
    .end annotation

    const-string v0, "videoClipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;

    invoke-direct {v0, p1, p2, p3}, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;-><init>(Ljava/util/ArrayList;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;

    iget-object v1, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->videoClipList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->videoClipList:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->startOffset:I

    iget v3, p1, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->startOffset:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->endOffset:I

    iget p1, p1, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->endOffset:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getEndOffset()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->endOffset:I

    return v0
.end method

.method public final getStartOffset()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->startOffset:I

    return v0
.end method

.method public final getVideoClipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->videoClipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->videoClipList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->startOffset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->endOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoClipWrapper(videoClipList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->videoClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->startOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/scene/helper/SceneCorrectUtils$VideoClipWrapper;->endOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
