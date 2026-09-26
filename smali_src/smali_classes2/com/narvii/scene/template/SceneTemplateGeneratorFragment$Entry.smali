.class public final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private media:Lcom/narvii/model/Media;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selectCount:I

.field private supportFormat:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;ZIZILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/narvii/model/Media;ZIZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    iput-boolean p3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    iput p4, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    iput-boolean p5, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/narvii/model/Media;ZIZILkotlin/jvm/internal/k;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p7, "toString(...)"

    invoke-static {p1, p7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

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

    :cond_2
    move v3, p3

    and-int/lit8 p1, p6, 0x8

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    move v4, p2

    goto :goto_0

    :cond_3
    move v4, p4

    :goto_0
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move v5, p2

    goto :goto_1

    :cond_4
    move v5, p5

    :goto_1
    move-object v0, p0

    .line 4
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/narvii/model/Media;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

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
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    iget-object v3, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    iget-boolean v3, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    iget v3, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    iget-boolean p1, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final equalsSelectedEntry(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)Z
    .locals 4
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "selectedEntry"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0, v3, v1, v2}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final getCanSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMedia()Lcom/narvii/model/Media;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public final getSelectCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    return v0
.end method

.method public final getSelectId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const/16 v1, 0x78

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final getSupportFormat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    return v0
.end method

.method public final hasMedia()Z
    .locals 1

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
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/Media;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isHttpEntry()Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->hasMedia()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    const-string/jumbo v2, "url"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    const-string v3, "http://"

    .line 36
    const/4 v4, 0x2

    .line 37
    const/4 v5, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v3, v1, v4, v5}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    const-string v2, "https://"

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v2, v1, v4, v5}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    :cond_0
    const/4 v1, 0x1

    .line 63
    :cond_1
    return v1
.end method

.method public final isImage()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isImage()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final isSelected()Z
    .locals 1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final setCanSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->canSelected:Z

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->id:Ljava/lang/String;

    return-void
.end method

.method public final setMedia(Lcom/narvii/model/Media;)V
    .locals 0
    .param p1    # Lcom/narvii/model/Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->media:Lcom/narvii/model/Media;

    return-void
.end method

.method public final setSelectCount(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->selectCount:I

    return-void
.end method

.method public final setSupportFormat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;->supportFormat:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
