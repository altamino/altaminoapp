.class public final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
.super Ljava/lang/Object;
.source "SceneTemplateGeneratorFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private canSelected:Z

.field private id:Ljava/lang/String;

.field private media:Lcom/narvii/model/Media;

.field private selectCount:I

.field private supportFormat:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;ZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/narvii/model/Media;ZIZ)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    iput-boolean p3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    iput p4, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    iput-boolean p5, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/narvii/model/Media;ZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 817
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p7, "UUID.randomUUID().toString()"

    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const/4 p3, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, p3

    :goto_0
    and-int/lit8 p1, p6, 0x8

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move v4, p4

    :goto_1
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    move v5, p5

    :goto_2
    move-object v0, p0

    .line 821
    invoke-direct/range {v0 .. v5}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;ZIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;Ljava/lang/String;Lcom/narvii/model/Media;ZIZILjava/lang/Object;)Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->copy(Ljava/lang/String;Lcom/narvii/model/Media;ZIZ)Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/narvii/model/Media;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Lcom/narvii/model/Media;ZIZ)Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;ZIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    iget-object v3, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    iget-boolean v3, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    iget v3, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    iget-boolean p1, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    if-ne v1, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public final equalsSelectedEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)Z
    .locals 4

    const-string v0, "selectedEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getCanSelected()Z
    .locals 1

    .line 819
    iget-boolean v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMedia()Lcom/narvii/model/Media;
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public final getSelectCount()I
    .locals 1

    .line 820
    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    return v0
.end method

.method public final getSelectId()Ljava/lang/String;
    .locals 2

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportFormat()Z
    .locals 1

    .line 821
    iget-boolean v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    return v0
.end method

.method public final hasMedia()Z
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/narvii/model/Media;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final isHttpEntry()Z
    .locals 6

    .line 831
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->hasMedia()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 832
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v3, "media!!.url"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const-string v5, "http://"

    invoke-static {v0, v5, v1, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "https://"

    invoke-static {v0, v3, v1, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_4
    :goto_1
    return v1
.end method

.method public final isImage()Z
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isImage()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSelected()Z
    .locals 1

    .line 829
    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isVideo()Z
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setCanSelected(Z)V
    .locals 0

    .line 819
    iput-boolean p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    return-void
.end method

.method public final setMedia(Lcom/narvii/model/Media;)V
    .locals 0

    .line 818
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    return-void
.end method

.method public final setSelectCount(I)V
    .locals 0

    .line 820
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    return-void
.end method

.method public final setSupportFormat(Z)V
    .locals 0

    .line 821
    iput-boolean p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", selectCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
