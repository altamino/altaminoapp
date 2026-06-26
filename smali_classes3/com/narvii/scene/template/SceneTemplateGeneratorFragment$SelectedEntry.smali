.class public final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
.super Ljava/lang/Object;
.source "SceneTemplateGeneratorFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectedEntry"
.end annotation


# instance fields
.field private crop:Lcom/narvii/theme/ThemeImage;

.field private id:Ljava/lang/String;

.field private media:Lcom/narvii/model/Media;

.field private previewMedia:Lcom/narvii/model/Media;

.field private progress:I

.field private state:I

.field private videoTrimEnd:J

.field private videoTrimStart:J


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xff

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;IJJILcom/narvii/theme/ThemeImage;Lcom/narvii/model/Media;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/narvii/model/Media;IJJILcom/narvii/theme/ThemeImage;Lcom/narvii/model/Media;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->media:Lcom/narvii/model/Media;

    iput p3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->state:I

    iput-wide p4, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimStart:J

    iput-wide p6, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimEnd:J

    iput p8, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->progress:I

    iput-object p9, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->crop:Lcom/narvii/theme/ThemeImage;

    iput-object p10, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->previewMedia:Lcom/narvii/model/Media;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/narvii/model/Media;IJJILcom/narvii/theme/ThemeImage;Lcom/narvii/model/Media;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 853
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UUID.randomUUID().toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x0

    goto :goto_3

    :cond_3
    move-wide v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const-wide/16 v7, 0x3a98

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    move-object v10, v3

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v3, p10

    :goto_7
    move-object p1, p0

    move-object p2, v1

    move-object p3, v2

    move p4, v4

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v3

    .line 860
    invoke-direct/range {p1 .. p11}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;IJJILcom/narvii/theme/ThemeImage;Lcom/narvii/model/Media;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;Ljava/lang/String;Lcom/narvii/model/Media;IJJILcom/narvii/theme/ThemeImage;Lcom/narvii/model/Media;ILjava/lang/Object;)Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->media:Lcom/narvii/model/Media;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->state:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimStart:J

    goto :goto_3

    :cond_3
    move-wide v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimEnd:J

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget v9, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->progress:I

    goto :goto_5

    :cond_5
    move/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->crop:Lcom/narvii/theme/ThemeImage;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->previewMedia:Lcom/narvii/model/Media;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p10

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move p3, v4

    move-wide p4, v5

    move-wide/from16 p6, v7

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->copy(Ljava/lang/String;Lcom/narvii/model/Media;IJJILcom/narvii/theme/ThemeImage;Lcom/narvii/model/Media;)Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/narvii/model/Media;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->media:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->state:I

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimStart:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimEnd:J

    return-wide v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->progress:I

    return v0
.end method

.method public final component7()Lcom/narvii/theme/ThemeImage;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->crop:Lcom/narvii/theme/ThemeImage;

    return-object v0
.end method

.method public final component8()Lcom/narvii/model/Media;
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->previewMedia:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/narvii/model/Media;IJJILcom/narvii/theme/ThemeImage;Lcom/narvii/model/Media;)Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;
    .locals 12

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    move-object v1, v0

    move-object v3, p2

    move v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;IJJILcom/narvii/theme/ThemeImage;Lcom/narvii/model/Media;)V

    return-object v0
.end method

.method public final copy(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 2

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    iget-object v0, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->id:Ljava/lang/String;

    .line 867
    iget-object v0, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->media:Lcom/narvii/model/Media;

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->media:Lcom/narvii/model/Media;

    .line 868
    iget v0, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->state:I

    iput v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->state:I

    .line 869
    iget-wide v0, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimStart:J

    iput-wide v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimStart:J

    .line 870
    iget-wide v0, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimEnd:J

    iput-wide v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimEnd:J

    .line 871
    iget v0, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->progress:I

    iput v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->progress:I

    .line 872
    iget-object v0, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->crop:Lcom/narvii/theme/ThemeImage;

    iput-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->crop:Lcom/narvii/theme/ThemeImage;

    .line 873
    iget-object p1, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->previewMedia:Lcom/narvii/model/Media;

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->previewMedia:Lcom/narvii/model/Media;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->media:Lcom/narvii/model/Media;

    iget-object v3, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->media:Lcom/narvii/model/Media;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->state:I

    iget v3, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->state:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-wide v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimStart:J

    iget-wide v5, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimStart:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-wide v3, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimEnd:J

    iget-wide v5, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimEnd:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->progress:I

    iget v3, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->progress:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->crop:Lcom/narvii/theme/ThemeImage;

    iget-object v3, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->crop:Lcom/narvii/theme/ThemeImage;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->previewMedia:Lcom/narvii/model/Media;

    iget-object p1, p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->previewMedia:Lcom/narvii/model/Media;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public final getCrop()Lcom/narvii/theme/ThemeImage;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->crop:Lcom/narvii/theme/ThemeImage;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMedia()Lcom/narvii/model/Media;
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->media:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public final getPreviewMedia()Lcom/narvii/model/Media;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->previewMedia:Lcom/narvii/model/Media;

    return-object v0
.end method

.method public final getProgress()I
    .locals 1

    .line 858
    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->progress:I

    return v0
.end method

.method public final getState()I
    .locals 1

    .line 855
    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->state:I

    return v0
.end method

.method public final getVideoTrimEnd()J
    .locals 2

    .line 857
    iget-wide v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimEnd:J

    return-wide v0
.end method

.method public final getVideoTrimStart()J
    .locals 2

    .line 856
    iget-wide v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimStart:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->media:Lcom/narvii/model/Media;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/narvii/model/Media;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->state:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimStart:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimEnd:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->progress:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->crop:Lcom/narvii/theme/ThemeImage;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->previewMedia:Lcom/narvii/model/Media;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/narvii/model/Media;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    .line 864
    iget v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isImage()Z
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->media:Lcom/narvii/model/Media;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isImage()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isVideo()Z
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->media:Lcom/narvii/model/Media;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setCrop(Lcom/narvii/theme/ThemeImage;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->crop:Lcom/narvii/theme/ThemeImage;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->id:Ljava/lang/String;

    return-void
.end method

.method public final setMedia(Lcom/narvii/model/Media;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->media:Lcom/narvii/model/Media;

    return-void
.end method

.method public final setPreviewMedia(Lcom/narvii/model/Media;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->previewMedia:Lcom/narvii/model/Media;

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    .line 858
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->progress:I

    return-void
.end method

.method public final setState(I)V
    .locals 0

    .line 855
    iput p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->state:I

    return-void
.end method

.method public final setVideoTrimEnd(J)V
    .locals 0

    .line 857
    iput-wide p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimEnd:J

    return-void
.end method

.method public final setVideoTrimStart(J)V
    .locals 0

    .line 856
    iput-wide p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimStart:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectedEntry(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->media:Lcom/narvii/model/Media;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoTrimStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoTrimEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->videoTrimEnd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", crop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->crop:Lcom/narvii/theme/ThemeImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previewMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->previewMedia:Lcom/narvii/model/Media;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
