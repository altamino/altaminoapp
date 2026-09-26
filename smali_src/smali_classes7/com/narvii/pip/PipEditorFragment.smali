.class public final Lcom/narvii/pip/PipEditorFragment;
.super Lcom/narvii/video/BaseViceTimeLineFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;
.implements Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pip/PipEditorFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PipEditorFragment.kt\ncom/narvii/pip/PipEditorFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 MediaPreEditingActivity.kt\ncom/narvii/pre_editing/MediaPreEditingActivityKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,597:1\n1864#2,3:598\n1864#2,3:601\n1855#2,2:648\n1855#2,2:650\n343#3,8:604\n343#3,8:612\n314#3,8:620\n322#3,19:629\n1#4:628\n*S KotlinDebug\n*F\n+ 1 PipEditorFragment.kt\ncom/narvii/pip/PipEditorFragment\n*L\n417#1:598,3\n423#1:601,3\n95#1:648,2\n515#1:650,2\n447#1:604,8\n480#1:612,8\n489#1:620,8\n489#1:629,19\n489#1:628\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/narvii/pip/PipEditorFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PIP_VIDEO_MAX_SIZE:I = 0x1

.field private static final REQUEST_CODE_VIDEO_PIP:I = 0x303a

.field private static final TAG:Ljava/lang/String; = "PipEditorFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final VOLUME_MIN_VALUE:F = 0.02f


# instance fields
.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currPipVideoIndex:I

.field private final fragmentRegister$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private intermediateFolder:Ljava/io/File;

.field private lastTouchDownTime:J

.field private lastViceTrackClickTime:J

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private outputFolderPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final photoManager$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v1, Lkotlin/jvm/internal/g0;

    .line 6
    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    const-string v3, "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/pip/PipEditorFragment;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/g0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    aput-object v1, v0, v5

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/pip/PipEditorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/pip/PipEditorFragment$Companion;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/pip/PipEditorFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 30
    .line 31
    sput-object v0, Lcom/narvii/pip/PipEditorFragment;->Companion:Lcom/narvii/pip/PipEditorFragment$Companion;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/pip/PipEditorFragment$fragmentRegister$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/pip/PipEditorFragment$fragmentRegister$2;-><init>(Lcom/narvii/pip/PipEditorFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->fragmentRegister$delegate:Lw7/m;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/pip/PipEditorFragment$photoManager$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/pip/PipEditorFragment$photoManager$2;-><init>(Lcom/narvii/pip/PipEditorFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->photoManager$delegate:Lw7/m;

    .line 26
    .line 27
    sget-object v0, Lcom/narvii/pip/PipEditorFragment$binding$2;->INSTANCE:Lcom/narvii/pip/PipEditorFragment$binding$2;

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->binding$delegate:Lkotlin/properties/d;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    move-result-wide v0

    .line 38
    .line 39
    iput-wide v0, p0, Lcom/narvii/pip/PipEditorFragment;->lastViceTrackClickTime:J

    .line 40
    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    move-result-wide v0

    .line 44
    .line 45
    iput-wide v0, p0, Lcom/narvii/pip/PipEditorFragment;->lastTouchDownTime:J

    .line 46
    return-void
.end method

.method public static synthetic D(Lcom/narvii/pip/PipEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->onViewCreated$lambda$4(Lcom/narvii/pip/PipEditorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/pip/PipEditorFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/pip/PipEditorFragment;->onPickerResult$lambda$20(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/pip/PipEditorFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic F(Lcom/narvii/pip/PipEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->onViewCreated$lambda$2(Lcom/narvii/pip/PipEditorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G(Lcom/narvii/pip/PipEditorFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/pip/PipEditorFragment;->showEditView$lambda$6$lambda$5(Lcom/narvii/pip/PipEditorFragment;)V

    return-void
.end method

.method public static synthetic H(Lcom/narvii/pip/PipEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->onViewCreated$lambda$1(Lcom/narvii/pip/PipEditorFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/pip/PipInfoPack;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->showEditView$lambda$6(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/pip/PipInfoPack;)V

    return-void
.end method

.method private final addNewPipVideo()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mediaPickerFragment"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    :cond_0
    const/16 v1, 0x303a

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    const-string v3, ""

    .line 16
    const/4 v4, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v3, v4, v1, v2}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->pickVideoFromGalleryAndYoutube(Lcom/narvii/media/MediaPickerFragment;Ljava/lang/String;IIZ)V

    .line 20
    return-void
.end method

.method private final addPipVideos(Lcom/narvii/pip/PipInfoPack;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addPipVideo(Lcom/narvii/pip/PipInfoPack;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->showEditView(Lcom/narvii/pip/PipInfoPack;)V

    .line 11
    return-void
.end method

.method private final calculatePipVideoDefaultCoord(Lcom/narvii/pip/PipInfoPack;)V
    .locals 9

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/pip/PipInfoPack;->videoWidth:I

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iget v0, p1, Lcom/narvii/pip/PipInfoPack;->videoHeight:I

    .line 7
    .line 8
    if-gez v0, :cond_1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "inputPath"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoSize(Ljava/lang/String;)Landroid/graphics/Point;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 26
    .line 27
    iput v1, p1, Lcom/narvii/pip/PipInfoPack;->videoWidth:I

    .line 28
    .line 29
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 30
    .line 31
    iput v0, p1, Lcom/narvii/pip/PipInfoPack;->videoHeight:I

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 55
    move-result v1

    .line 56
    int-to-float v0, v0

    .line 57
    .line 58
    const/high16 v2, 0x3f800000    # 1.0f

    .line 59
    .line 60
    mul-float v3, v0, v2

    .line 61
    int-to-float v1, v1

    .line 62
    div-float/2addr v3, v1

    .line 63
    .line 64
    iget v4, p1, Lcom/narvii/pip/PipInfoPack;->videoWidth:I

    .line 65
    int-to-float v4, v4

    .line 66
    mul-float/2addr v4, v2

    .line 67
    .line 68
    iget v2, p1, Lcom/narvii/pip/PipInfoPack;->videoHeight:I

    .line 69
    int-to-float v2, v2

    .line 70
    div-float/2addr v4, v2

    .line 71
    .line 72
    cmpl-float v2, v4, v3

    .line 73
    .line 74
    if-lez v2, :cond_2

    .line 75
    .line 76
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 77
    mul-float/2addr v2, v0

    .line 78
    .line 79
    div-float v3, v2, v4

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_2
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 83
    .line 84
    mul-float v3, v1, v2

    .line 85
    .line 86
    mul-float v2, v3, v4

    .line 87
    .line 88
    :goto_0
    iget-object v4, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 89
    .line 90
    new-instance v5, Landroid/graphics/PointF;

    .line 91
    .line 92
    sub-float v6, v0, v2

    .line 93
    .line 94
    const/high16 v7, 0x40000000    # 2.0f

    .line 95
    div-float/2addr v6, v7

    .line 96
    .line 97
    sub-float v8, v1, v3

    .line 98
    div-float/2addr v8, v7

    .line 99
    .line 100
    .line 101
    invoke-direct {v5, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    iget-object v4, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 107
    .line 108
    new-instance v5, Landroid/graphics/PointF;

    .line 109
    add-float/2addr v0, v2

    .line 110
    div-float/2addr v0, v7

    .line 111
    .line 112
    .line 113
    invoke-direct {v5, v0, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    iget-object v2, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 119
    .line 120
    new-instance v4, Landroid/graphics/PointF;

    .line 121
    add-float/2addr v1, v3

    .line 122
    div-float/2addr v1, v7

    .line 123
    .line 124
    .line 125
    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    iget-object p1, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 131
    .line 132
    new-instance v0, Landroid/graphics/PointF;

    .line 133
    .line 134
    .line 135
    invoke-direct {v0, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 136
    .line 137
    .line 138
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method private final calculatePipVideoRealTimeCoord(Lcom/narvii/pip/PipInfoPack;)V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 5
    .line 6
    iget v2, v0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    .line 7
    float-to-double v2, v2

    .line 8
    neg-double v2, v2

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 14
    mul-double/2addr v2, v4

    .line 15
    .line 16
    const/16 v4, 0xb4

    .line 17
    int-to-double v4, v4

    .line 18
    div-double/2addr v2, v4

    .line 19
    .line 20
    iget-object v4, v0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 21
    .line 22
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 23
    .line 24
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 28
    move-result-object v6

    .line 29
    .line 30
    .line 31
    invoke-interface {v6}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    .line 32
    move-result-object v6

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 36
    move-result v6

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 40
    move-result-object v7

    .line 41
    .line 42
    .line 43
    invoke-interface {v7}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    .line 44
    move-result-object v7

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 48
    move-result v7

    .line 49
    int-to-float v6, v6

    .line 50
    .line 51
    const/high16 v8, 0x3f800000    # 1.0f

    .line 52
    .line 53
    mul-float v9, v6, v8

    .line 54
    int-to-float v7, v7

    .line 55
    div-float/2addr v9, v7

    .line 56
    .line 57
    iget v10, v0, Lcom/narvii/pip/PipInfoPack;->videoWidth:I

    .line 58
    int-to-float v10, v10

    .line 59
    mul-float/2addr v10, v8

    .line 60
    .line 61
    iget v8, v0, Lcom/narvii/pip/PipInfoPack;->videoHeight:I

    .line 62
    int-to-float v8, v8

    .line 63
    div-float/2addr v10, v8

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 67
    move-result-object v8

    .line 68
    .line 69
    .line 70
    invoke-interface {v8}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    .line 71
    move-result-object v8

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 75
    move-result v8

    .line 76
    int-to-float v8, v8

    .line 77
    .line 78
    const/high16 v11, 0x44340000    # 720.0f

    .line 79
    div-float/2addr v11, v8

    .line 80
    .line 81
    cmpl-float v8, v10, v9

    .line 82
    .line 83
    if-lez v8, :cond_0

    .line 84
    mul-float/2addr v1, v6

    .line 85
    .line 86
    div-float v8, v1, v10

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_0
    mul-float v8, v7, v1

    .line 90
    .line 91
    mul-float v1, v8, v10

    .line 92
    .line 93
    :goto_0
    const/high16 v9, 0x40000000    # 2.0f

    .line 94
    .line 95
    div-float v10, v6, v9

    .line 96
    .line 97
    div-float v12, v7, v9

    .line 98
    .line 99
    iget-object v13, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 100
    .line 101
    new-instance v14, Landroid/graphics/PointF;

    .line 102
    .line 103
    sub-float v15, v6, v1

    .line 104
    div-float/2addr v15, v9

    .line 105
    .line 106
    sub-float v16, v7, v8

    .line 107
    .line 108
    move/from16 v17, v4

    .line 109
    .line 110
    div-float v4, v16, v9

    .line 111
    .line 112
    .line 113
    invoke-direct {v14, v15, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 114
    const/4 v9, 0x0

    .line 115
    .line 116
    .line 117
    invoke-interface {v13, v9, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    iget-object v13, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 120
    .line 121
    new-instance v14, Landroid/graphics/PointF;

    .line 122
    add-float/2addr v6, v1

    .line 123
    .line 124
    const/high16 v1, 0x40000000    # 2.0f

    .line 125
    div-float/2addr v6, v1

    .line 126
    .line 127
    .line 128
    invoke-direct {v14, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 129
    const/4 v4, 0x1

    .line 130
    .line 131
    .line 132
    invoke-interface {v13, v4, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    iget-object v4, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 135
    .line 136
    new-instance v13, Landroid/graphics/PointF;

    .line 137
    add-float/2addr v7, v8

    .line 138
    div-float/2addr v7, v1

    .line 139
    .line 140
    .line 141
    invoke-direct {v13, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 142
    const/4 v1, 0x2

    .line 143
    .line 144
    .line 145
    invoke-interface {v4, v1, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    iget-object v1, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 148
    .line 149
    new-instance v4, Landroid/graphics/PointF;

    .line 150
    .line 151
    .line 152
    invoke-direct {v4, v15, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 153
    const/4 v6, 0x3

    .line 154
    .line 155
    .line 156
    invoke-interface {v1, v6, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    iget-object v1, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 159
    .line 160
    const-string v4, "vertexCoord"

    .line 161
    .line 162
    .line 163
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    check-cast v1, Ljava/lang/Iterable;

    .line 166
    .line 167
    .line 168
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 169
    move-result-object v1

    .line 170
    move v6, v9

    .line 171
    .line 172
    .line 173
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    move-result v7

    .line 175
    .line 176
    if-eqz v7, :cond_2

    .line 177
    .line 178
    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    move-result-object v7

    .line 181
    .line 182
    add-int/lit8 v8, v6, 0x1

    .line 183
    .line 184
    if-gez v6, :cond_1

    .line 185
    .line 186
    .line 187
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 188
    .line 189
    :cond_1
    check-cast v7, Landroid/graphics/PointF;

    .line 190
    .line 191
    iget-object v13, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 192
    .line 193
    new-instance v14, Landroid/graphics/PointF;

    .line 194
    .line 195
    iget v15, v7, Landroid/graphics/PointF;->x:F

    .line 196
    sub-float/2addr v15, v10

    .line 197
    .line 198
    move/from16 v16, v10

    .line 199
    .line 200
    .line 201
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 202
    move-result-wide v9

    .line 203
    double-to-float v9, v9

    .line 204
    mul-float/2addr v15, v9

    .line 205
    .line 206
    iget v9, v7, Landroid/graphics/PointF;->y:F

    .line 207
    sub-float/2addr v9, v12

    .line 208
    .line 209
    move/from16 v18, v11

    .line 210
    .line 211
    .line 212
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 213
    move-result-wide v10

    .line 214
    double-to-float v10, v10

    .line 215
    mul-float/2addr v9, v10

    .line 216
    sub-float/2addr v15, v9

    .line 217
    .line 218
    add-float v15, v15, v16

    .line 219
    .line 220
    iget v9, v7, Landroid/graphics/PointF;->x:F

    .line 221
    .line 222
    sub-float v9, v9, v16

    .line 223
    .line 224
    .line 225
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 226
    move-result-wide v10

    .line 227
    double-to-float v10, v10

    .line 228
    mul-float/2addr v9, v10

    .line 229
    .line 230
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 231
    sub-float/2addr v7, v12

    .line 232
    .line 233
    .line 234
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 235
    move-result-wide v10

    .line 236
    double-to-float v10, v10

    .line 237
    mul-float/2addr v7, v10

    .line 238
    add-float/2addr v9, v7

    .line 239
    add-float/2addr v9, v12

    .line 240
    .line 241
    .line 242
    invoke-direct {v14, v15, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 243
    .line 244
    .line 245
    invoke-interface {v13, v6, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    move v6, v8

    .line 247
    .line 248
    move/from16 v10, v16

    .line 249
    .line 250
    move/from16 v11, v18

    .line 251
    const/4 v9, 0x0

    .line 252
    goto :goto_1

    .line 253
    .line 254
    :cond_2
    move/from16 v18, v11

    .line 255
    .line 256
    iget-object v1, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 257
    .line 258
    .line 259
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .line 261
    check-cast v1, Ljava/lang/Iterable;

    .line 262
    .line 263
    .line 264
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 265
    move-result-object v1

    .line 266
    const/4 v9, 0x0

    .line 267
    .line 268
    .line 269
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    move-result v2

    .line 271
    .line 272
    if-eqz v2, :cond_4

    .line 273
    .line 274
    .line 275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    move-result-object v2

    .line 277
    .line 278
    add-int/lit8 v3, v9, 0x1

    .line 279
    .line 280
    if-gez v9, :cond_3

    .line 281
    .line 282
    .line 283
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 284
    .line 285
    :cond_3
    check-cast v2, Landroid/graphics/PointF;

    .line 286
    .line 287
    iget-object v4, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 288
    .line 289
    new-instance v6, Landroid/graphics/PointF;

    .line 290
    .line 291
    iget v7, v2, Landroid/graphics/PointF;->x:F

    .line 292
    .line 293
    div-float v8, v5, v18

    .line 294
    add-float/2addr v7, v8

    .line 295
    .line 296
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 297
    .line 298
    div-float v8, v17, v18

    .line 299
    sub-float/2addr v2, v8

    .line 300
    .line 301
    .line 302
    invoke-direct {v6, v7, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 303
    .line 304
    .line 305
    invoke-interface {v4, v9, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 306
    move v9, v3

    .line 307
    goto :goto_2

    .line 308
    .line 309
    .line 310
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 311
    move-result-object v1

    .line 312
    .line 313
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 314
    .line 315
    iget-object v0, v0, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 316
    const/4 v2, 0x4

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v0, v2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 320
    return-void
.end method

.method private final canAddPipVideo()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    return v1
.end method

.method private final checkScale(Lcom/narvii/pip/PipInfoPack;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 3
    .line 4
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 5
    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    iput v1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 11
    .line 12
    :cond_0
    iget v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 13
    .line 14
    cmpl-float v0, v0, v1

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    iput v1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 19
    :cond_1
    return-void
.end method

.method private final getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/pip/PipEditorFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lkotlin/properties/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 14
    return-object v0
.end method

.method private final getFragmentRegister()Lcom/narvii/app/FragmentRegister;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->fragmentRegister$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/FragmentRegister;

    .line 9
    return-object v0
.end method

.method private final getPhotoManager()Lcom/narvii/photos/PhotoManager;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->photoManager$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 9
    return-object v0
.end method

.method private final onPickerResult(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getPhotoManager()Lcom/narvii/photos/PhotoManager;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/model/Media;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p1, v0, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    .line 42
    const/4 p1, 0x1

    .line 43
    .line 44
    new-array p1, p1, [Lcom/narvii/video/model/AVClipInfoPack;

    .line 45
    .line 46
    aput-object v0, p1, v2

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    new-instance v1, Lcom/narvii/pip/f;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v0, p0}, Lcom/narvii/pip/f;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/pip/PipEditorFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, v2, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipList(Ljava/util/ArrayList;ZLcom/narvii/util/Callback;)V

    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method private static final onPickerResult$lambda$20(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/pip/PipEditorFragment;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "$avClipInfoPack"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "this$0"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result p2

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    new-instance p2, Lcom/narvii/pip/PipInfoPack;

    .line 21
    .line 22
    .line 23
    invoke-direct {p2}, Lcom/narvii/pip/PipInfoPack;-><init>()V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p2, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/video/model/AVClipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 30
    .line 31
    iput-object v0, p2, Lcom/narvii/pip/PipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 32
    .line 33
    iget v0, p2, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    .line 34
    .line 35
    iget v1, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 36
    add-int/2addr v0, v1

    .line 37
    .line 38
    iput v0, p2, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 42
    move-result v0

    .line 43
    .line 44
    iput v0, p2, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 45
    .line 46
    iget v0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 47
    .line 48
    iput v0, p2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 49
    .line 50
    iget p0, p0, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 51
    .line 52
    iput p0, p2, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->getVideoInputClipList()Ljava/util/ArrayList;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    .line 59
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object p0

    .line 61
    const/4 v0, 0x0

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 74
    .line 75
    iget v1, v1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 76
    add-int/2addr v0, v1

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_0
    iget p0, p2, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 80
    .line 81
    if-ge p0, v0, :cond_1

    .line 82
    .line 83
    iget v1, p2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 84
    add-int/2addr v1, p0

    .line 85
    .line 86
    if-le v1, v0, :cond_1

    .line 87
    sub-int/2addr v0, p0

    .line 88
    .line 89
    iget p0, p2, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    .line 90
    add-int/2addr v0, p0

    .line 91
    .line 92
    iput v0, p2, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-direct {p1, p2}, Lcom/narvii/pip/PipEditorFragment;->addPipVideos(Lcom/narvii/pip/PipInfoPack;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p1}, Lcom/narvii/pip/PipEditorFragment;->updatePipVideoTimeLine()V

    .line 99
    :cond_2
    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/narvii/pip/PipEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 9
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/narvii/pip/PipEditorFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->canAddPipVideo()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->addNewPipVideo()V

    .line 15
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$4(Lcom/narvii/pip/PipEditorFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getVideoInputClipList()Ljava/util/ArrayList;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 32
    .line 33
    iget v2, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 34
    add-int/2addr v1, v2

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 47
    move-result v0

    .line 48
    .line 49
    xor-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result v0

    .line 64
    .line 65
    iget v2, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 66
    .line 67
    if-ltz v2, :cond_1

    .line 68
    .line 69
    if-ge v2, v0, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    iget v2, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    const-string v2, "get(...)"

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    check-cast v0, Lcom/narvii/pip/PipInfoPack;

    .line 91
    .line 92
    iget v2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 93
    .line 94
    if-ge v2, v1, :cond_1

    .line 95
    .line 96
    iget v3, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 97
    add-int/2addr v3, v2

    .line 98
    .line 99
    if-le v3, v1, :cond_1

    .line 100
    sub-int/2addr v1, v2

    .line 101
    .line 102
    iget v2, v0, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    .line 103
    add-int/2addr v1, v2

    .line 104
    .line 105
    iput v1, v0, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    const-string v1, "pipList"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const/4 v0, -0x1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 130
    return-void
.end method

.method private final pauseVideoWhenTouch()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInPlay()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v3, v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->refreshCurrentPosition()V

    .line 24
    :cond_0
    return-void
.end method

.method private final pointInCurrPipVideo(Lcom/narvii/pip/PipInfoPack;Landroid/graphics/PointF;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 10
    .line 11
    new-instance v2, Landroid/graphics/Path;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 15
    .line 16
    iget-object v3, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    check-cast v3, Landroid/graphics/PointF;

    .line 23
    .line 24
    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 25
    .line 26
    iget-object v4, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroid/graphics/PointF;

    .line 33
    .line 34
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 38
    .line 39
    iget-object v0, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 40
    const/4 v3, 0x1

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Landroid/graphics/PointF;

    .line 47
    .line 48
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 49
    .line 50
    iget-object v4, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    check-cast v4, Landroid/graphics/PointF;

    .line 57
    .line 58
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 62
    .line 63
    iget-object v0, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 64
    const/4 v4, 0x2

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    check-cast v0, Landroid/graphics/PointF;

    .line 71
    .line 72
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 73
    .line 74
    iget-object v5, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 75
    .line 76
    .line 77
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v4

    .line 79
    .line 80
    check-cast v4, Landroid/graphics/PointF;

    .line 81
    .line 82
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    .line 87
    iget-object v0, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 88
    const/4 v4, 0x3

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    check-cast v0, Landroid/graphics/PointF;

    .line 95
    .line 96
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 97
    .line 98
    iget-object p1, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    check-cast p1, Landroid/graphics/PointF;

    .line 105
    .line 106
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 116
    .line 117
    new-instance p1, Landroid/graphics/Region;

    .line 118
    .line 119
    .line 120
    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    .line 121
    .line 122
    new-instance v0, Landroid/graphics/Region;

    .line 123
    .line 124
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 125
    float-to-int v3, v3

    .line 126
    .line 127
    iget v4, v1, Landroid/graphics/RectF;->top:F

    .line 128
    float-to-int v4, v4

    .line 129
    .line 130
    iget v5, v1, Landroid/graphics/RectF;->right:F

    .line 131
    float-to-int v5, v5

    .line 132
    .line 133
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 134
    float-to-int v1, v1

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, v3, v4, v5, v1}, Landroid/graphics/Region;-><init>(IIII)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 141
    .line 142
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 143
    float-to-int v0, v0

    .line 144
    .line 145
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 146
    float-to-int p2, p2

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Region;->contains(II)Z

    .line 150
    move-result p1

    .line 151
    return p1
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private final showEditView(Lcom/narvii/pip/PipInfoPack;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewVideoView()Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/narvii/pip/e;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/narvii/pip/e;-><init>(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/pip/PipInfoPack;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 15
    :cond_0
    return-void
.end method

.method private static final showEditView$lambda$6(Lcom/narvii/pip/PipEditorFragment;Lcom/narvii/pip/PipInfoPack;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$pipInfoPack"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->updatePipVideoTransform(Lcom/narvii/pip/PipInfoPack;)V

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/pip/d;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/pip/d;-><init>(Lcom/narvii/pip/PipEditorFragment;)V

    .line 23
    .line 24
    const-wide/16 v1, 0xc8

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 34
    const/4 v1, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 38
    .line 39
    iget-object v0, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    move-result v0

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->calculatePipVideoDefaultCoord(Lcom/narvii/pip/PipInfoPack;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 55
    .line 56
    iget-object v1, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 57
    const/4 v2, 0x4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->calculatePipVideoRealTimeCoord(Lcom/narvii/pip/PipInfoPack;)V

    .line 65
    .line 66
    :goto_0
    iget p1, p1, Lcom/narvii/pip/PipInfoPack;->volume:F

    .line 67
    .line 68
    .line 69
    const v0, 0x3ca3d70a    # 0.02f

    .line 70
    .line 71
    cmpg-float p1, p1, v0

    .line 72
    .line 73
    if-gez p1, :cond_1

    .line 74
    const/4 p1, 0x0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->onPipVideoMute(Z)V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->updateAddPipVideoBtn()V

    .line 81
    return-void
.end method

.method private static final showEditView$lambda$6$lambda$5(Lcom/narvii/pip/PipEditorFragment;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 17
    move-result p0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(I)V

    .line 21
    return-void
.end method

.method private final updateAddPipVideoBtn()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->optionAddPipVideo:Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->canAddPipVideo()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 21
    return-void
.end method

.method private final updatePipVideoTimeLine()V
    .locals 6

    .line 1
    .line 2
    new-instance v2, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v3

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    check-cast v3, Lcom/narvii/pip/PipInfoPack;

    .line 34
    .line 35
    iget v3, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 36
    .line 37
    sub-int v3, v0, v3

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v1, 0x1

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x4

    .line 49
    const/4 v5, 0x0

    .line 50
    move-object v0, p0

    .line 51
    .line 52
    .line 53
    invoke-static/range {v0 .. v5}, Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimeLinePanel$default(Lcom/narvii/video/BaseViceTimeLineFragment;ZLjava/util/List;ZILjava/lang/Object;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected changeVideoPlaybackStatus(ZZ)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->changeVideoPlaybackStatus(ZZ)V

    .line 4
    const/4 p2, 0x4

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, p2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v0

    .line 30
    .line 31
    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 32
    .line 33
    if-ltz v1, :cond_1

    .line 34
    .line 35
    if-ge v1, v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const-string v0, "get(...)"

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/pip/PipInfoPack;

    .line 47
    .line 48
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 49
    .line 50
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 51
    add-int/2addr v1, v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 55
    move-result v2

    .line 56
    .line 57
    if-gt v0, v2, :cond_1

    .line 58
    .line 59
    if-ge v2, v1, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1, p2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isAndroidVersion8()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Overlay:I

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$style;->AminoTheme_Translucent_NoActionBar:I

    .line 12
    :goto_0
    return v0
.end method

.method public getTargetClipListForViceTracks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/video/model/BaseClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lw7/u;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    check-cast v2, Lcom/narvii/pip/PipInfoPack;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/narvii/pip/PipInfoPack;->isTrimSectionValid()Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    iget v3, v2, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/narvii/pip/PipInfoPack;->trimmedDurationInMs()I

    .line 50
    move-result v4

    .line 51
    .line 52
    .line 53
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 54
    move-result v4

    .line 55
    add-int/2addr v3, v4

    .line 56
    .line 57
    iput v3, v2, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/narvii/pip/PipInfoPack;->trimmedDurationInMs()I

    .line 61
    move-result v3

    .line 62
    .line 63
    iput v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 72
    move-result-object v0

    .line 73
    return-object v0
.end method

.method public getViceTrackDataType(I)I
    .locals 0

    const/16 p1, 0x68

    return p1
.end method

.method public initComponent()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->initComponent()V

    .line 8
    .line 9
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->videoDuration:Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoDurationText(Landroid/widget/TextView;)V

    .line 13
    .line 14
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->videoPlaybackTime:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeText(Landroid/widget/TextView;)V

    .line 18
    .line 19
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->divider:Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->setVideoPlaybackTimeDivider(Landroid/view/View;)V

    .line 23
    .line 24
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->videoViewPlayer:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 28
    .line 29
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->playerButton:Landroid/widget/ImageView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setPlayerButton(Landroid/widget/ImageView;)V

    .line 33
    .line 34
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->setMainTimeLineComponent(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    .line 38
    .line 39
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->viceTimeLinePanel:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    const-string v1, "viceTimeLinePanel"

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->setViceTimeLinePanel(Landroid/widget/LinearLayout;)V

    .line 48
    return-void
.end method

.method public initFrameRetrieverManager()V
    .locals 14

    .line 1
    .line 2
    const-string v0, "frameRetrieverOutputFolder"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/pip/PipEditorFragment;->outputFolderPath:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/pip/PipEditorFragment;->outputFolderPath:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x6

    .line 23
    const/4 v6, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static/range {v1 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 31
    move-result-object v7

    .line 32
    .line 33
    const-string v8, "timeline_tmp"

    .line 34
    .line 35
    const-string v9, "video"

    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v11, 0x0

    .line 38
    .line 39
    const/16 v12, 0xc

    .line 40
    const/4 v13, 0x0

    .line 41
    .line 42
    .line 43
    invoke-static/range {v7 .. v13}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 44
    :goto_0
    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseViceTimeLineFragment;->onAVClipsPrepared()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    xor-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "get(...)"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/pip/PipInfoPack;

    .line 37
    .line 38
    iget v1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 42
    move-result v2

    .line 43
    .line 44
    if-gt v1, v2, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->showEditView(Lcom/narvii/pip/PipInfoPack;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 54
    .line 55
    iget-boolean v0, v0, Lcom/narvii/pip/PipInfoPack;->mute:Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Lcom/narvii/video/attachment/DrawRectView;->setPipVideoMute(Z)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Lcom/narvii/video/attachment/DrawRectView;->setOnDrawRectTouchListener(Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p0}, Lcom/narvii/video/attachment/DrawRectView;->setPipVideoMuteListener(Lcom/narvii/video/attachment/DrawRectView$onPipVideoMuteListener;)V

    .line 77
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Ljava/io/File;

    .line 6
    .line 7
    const-string v0, "outputFileDir"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->setOutputFileDir(Ljava/io/File;)V

    .line 18
    .line 19
    new-instance p1, Ljava/io/File;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "scene_intermediate_file"

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/pip/PipEditorFragment;->intermediateFolder:Ljava/io/File;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 34
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    return-void

    .line 5
    .line 6
    :cond_0
    const/16 v1, 0x303a

    .line 7
    .line 8
    const-string v2, "bundle"

    .line 9
    .line 10
    const-class v3, Lcom/narvii/model/Media;

    .line 11
    .line 12
    const-string v4, "media"

    .line 13
    .line 14
    .line 15
    const v5, 0xfd30

    .line 16
    const/4 v6, 0x1

    .line 17
    const/4 v7, 0x0

    .line 18
    .line 19
    if-ne p1, v1, :cond_2

    .line 20
    .line 21
    if-ne p2, v0, :cond_9

    .line 22
    .line 23
    if-ne p1, v5, :cond_9

    .line 24
    .line 25
    if-eqz p3, :cond_9

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Lcom/narvii/model/Media;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    new-instance p2, Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 53
    .line 54
    new-array p3, v6, [Lcom/narvii/model/Media;

    .line 55
    .line 56
    aput-object p1, p3, v7

    .line 57
    .line 58
    .line 59
    invoke-static {p3}, Lkotlin/collections/t;->s([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/narvii/pip/PipEditorFragment;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    .line 64
    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getREQUEST_CODE_SCENE_EDITOR()I

    .line 69
    move-result v1

    .line 70
    .line 71
    if-ne p1, v1, :cond_7

    .line 72
    const/4 p1, 0x0

    .line 73
    .line 74
    if-eqz p3, :cond_3

    .line 75
    .line 76
    const-string p2, "clipInfoList"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    move-object p2, p1

    .line 83
    .line 84
    :goto_0
    if-eqz p2, :cond_9

    .line 85
    .line 86
    const-class v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 87
    .line 88
    .line 89
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    .line 93
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 97
    move-result v0

    .line 98
    xor-int/2addr v0, v6

    .line 99
    .line 100
    if-eqz v0, :cond_9

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    check-cast p2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    check-cast v0, Lcom/narvii/pip/PipInfoPack;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/narvii/pip/PipInfoPack;->copy()Lcom/narvii/pip/PipInfoPack;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    const-string v1, "null cannot be cast to non-null type com.narvii.pip.PipInfoPack"

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    iget v1, p2, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 134
    .line 135
    iput v1, v0, Lcom/narvii/pip/PipInfoPack;->volume:F

    .line 136
    .line 137
    iget v1, p2, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 138
    .line 139
    iput v1, v0, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lw7/u;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Lw7/u;->c()Ljava/lang/Object;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    check-cast v1, Ljava/lang/Number;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 153
    move-result v1

    .line 154
    .line 155
    iget v2, p2, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 159
    move-result p2

    .line 160
    .line 161
    .line 162
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 163
    move-result p2

    .line 164
    add-int/2addr v2, p2

    .line 165
    .line 166
    iput v2, v0, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/narvii/pip/PipInfoPack;->trimmedDurationInMs()I

    .line 170
    move-result p2

    .line 171
    .line 172
    iput p2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 173
    .line 174
    const-string p2, "mute"

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3, p2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 178
    move-result p2

    .line 179
    .line 180
    iput-boolean p2, v0, Lcom/narvii/pip/PipInfoPack;->mute:Z

    .line 181
    const/4 p2, 0x4

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p2}, Lcom/narvii/pip/PipEditorFragment;->onDel(I)V

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->addPipVideos(Lcom/narvii/pip/PipInfoPack;)V

    .line 188
    .line 189
    iget-boolean p3, v0, Lcom/narvii/pip/PipInfoPack;->mute:Z

    .line 190
    .line 191
    if-nez p3, :cond_5

    .line 192
    .line 193
    iget p3, v0, Lcom/narvii/pip/PipInfoPack;->volume:F

    .line 194
    .line 195
    .line 196
    const v1, 0x3ca3d70a    # 0.02f

    .line 197
    .line 198
    cmpg-float p3, p3, v1

    .line 199
    .line 200
    if-gez p3, :cond_4

    .line 201
    goto :goto_1

    .line 202
    .line 203
    .line 204
    :cond_4
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 205
    move-result-object p3

    .line 206
    .line 207
    iget-object p3, p3, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3, v7}, Lcom/narvii/video/attachment/DrawRectView;->setPipVideoMute(Z)V

    .line 211
    goto :goto_2

    .line 212
    .line 213
    .line 214
    :cond_5
    :goto_1
    invoke-virtual {p0, v7}, Lcom/narvii/pip/PipEditorFragment;->onPipVideoMute(Z)V

    .line 215
    .line 216
    .line 217
    :goto_2
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->updatePipVideoTimeLine()V

    .line 218
    .line 219
    iget p3, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 220
    .line 221
    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 222
    add-int/2addr v0, p3

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 226
    move-result v1

    .line 227
    .line 228
    if-gt p3, v1, :cond_6

    .line 229
    .line 230
    if-gt v1, v0, :cond_6

    .line 231
    goto :goto_3

    .line 232
    .line 233
    .line 234
    :cond_6
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 235
    move-result-object p3

    .line 236
    .line 237
    iget-object p3, p3, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, p1, p2}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 241
    goto :goto_3

    .line 242
    .line 243
    :cond_7
    if-ne p2, v0, :cond_9

    .line 244
    .line 245
    if-ne p1, v5, :cond_9

    .line 246
    .line 247
    if-eqz p3, :cond_9

    .line 248
    .line 249
    .line 250
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    move-result-object p1

    .line 252
    .line 253
    .line 254
    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 255
    move-result-object p1

    .line 256
    .line 257
    check-cast p1, Lcom/narvii/model/Media;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 261
    move-result-object p2

    .line 262
    .line 263
    if-nez p2, :cond_8

    .line 264
    .line 265
    new-instance p2, Landroid/os/Bundle;

    .line 266
    .line 267
    .line 268
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 269
    .line 270
    .line 271
    :cond_8
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 275
    .line 276
    new-array p2, v6, [Lcom/narvii/model/Media;

    .line 277
    .line 278
    aput-object p1, p2, v7

    .line 279
    .line 280
    .line 281
    invoke-static {p2}, Lkotlin/collections/t;->s([Ljava/lang/Object;)Ljava/util/List;

    .line 282
    move-result-object p1

    .line 283
    .line 284
    .line 285
    invoke-direct {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->onPickerResult(Ljava/util/List;)V

    .line 286
    :cond_9
    :goto_3
    return-void
.end method

.method public onBeyondDrawRectClick(I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string v0, "playListMediaPicker"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    instance-of v1, p1, Lcom/narvii/media/MediaPickerFragment;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/pip/PipEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/pip/PipEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/pip/PipEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 40
    const/4 v2, 0x0

    .line 41
    .line 42
    const-string v3, "mediaPickerFragment"

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 48
    move-object v1, v2

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/pip/PipEditorFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 58
    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move-object v2, p1

    .line 65
    .line 66
    :goto_0
    iget-object p1, v2, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onDel(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 21
    .line 22
    if-ltz v1, :cond_1

    .line 23
    .line 24
    if-ge v1, v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->pauseVideoWhenTouch()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string v1, "get(...)"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/pip/PipInfoPack;

    .line 45
    .line 46
    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, p1, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->removePipVideo(Lcom/narvii/pip/PipInfoPack;I)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInPlay()Z

    .line 67
    move-result p1

    .line 68
    .line 69
    if-nez p1, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 81
    move-result v0

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(I)V

    .line 85
    .line 86
    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->updateAddPipVideoBtn()V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->updatePipVideoTimeLine()V

    .line 91
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onDestroyView()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getFrameRetrieverManager()Lcom/narvii/video/services/FrameRetrieverManager;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/pip/PipEditorFragment;->outputFolderPath:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->doClean(Z)V

    .line 25
    return-void
.end method

.method public onDrag(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 5
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object p3

    .line 5
    .line 6
    .line 7
    invoke-interface {p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 8
    move-result-object p3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 21
    .line 22
    if-ltz v1, :cond_1

    .line 23
    .line 24
    if-ge v1, v0, :cond_1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 40
    move-result v0

    .line 41
    int-to-float v0, v0

    .line 42
    .line 43
    const/high16 v1, 0x44340000    # 720.0f

    .line 44
    div-float/2addr v1, v0

    .line 45
    .line 46
    iget v0, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object p3

    .line 51
    .line 52
    const-string v0, "get(...)"

    .line 53
    .line 54
    .line 55
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    check-cast p3, Lcom/narvii/pip/PipInfoPack;

    .line 58
    .line 59
    iget v0, p3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 60
    .line 61
    iget v2, p3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 62
    add-int/2addr v2, v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 66
    move-result v3

    .line 67
    .line 68
    if-gt v0, v3, :cond_1

    .line 69
    .line 70
    if-ge v3, v2, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->pauseVideoWhenTouch()V

    .line 74
    .line 75
    new-instance v0, Landroid/graphics/PointF;

    .line 76
    .line 77
    iget v2, p2, Landroid/graphics/PointF;->x:F

    .line 78
    .line 79
    iget v3, p1, Landroid/graphics/PointF;->x:F

    .line 80
    sub-float/2addr v2, v3

    .line 81
    mul-float/2addr v2, v1

    .line 82
    .line 83
    iget-object v3, p3, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 84
    .line 85
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 86
    add-float/2addr v2, v4

    .line 87
    .line 88
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 89
    .line 90
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 91
    sub-float/2addr p1, p2

    .line 92
    mul-float/2addr p1, v1

    .line 93
    .line 94
    iget p2, v3, Landroid/graphics/PointF;->y:F

    .line 95
    add-float/2addr p1, p2

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 99
    .line 100
    iput-object v0, p3, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->updatePipVideoTransform(Lcom/narvii/pip/PipInfoPack;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInPlay()Z

    .line 111
    move-result p1

    .line 112
    .line 113
    if-nez p1, :cond_0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    .line 124
    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 125
    move-result p2

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(I)V

    .line 129
    .line 130
    .line 131
    :cond_0
    invoke-direct {p0, p3}, Lcom/narvii/pip/PipEditorFragment;->calculatePipVideoRealTimeCoord(Lcom/narvii/pip/PipInfoPack;)V

    .line 132
    nop

    .line 133
    :cond_1
    return-void
.end method

.method public onEdit(I)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 21
    .line 22
    if-ltz v1, :cond_1

    .line 23
    .line 24
    if-ge v1, v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getFragmentRegister()Lcom/narvii/app/FragmentRegister;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v1, "mediaEditor"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance v1, Landroid/content/Intent;

    .line 41
    .line 42
    const-string v2, "android.intent.action.VIEW"

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 51
    .line 52
    iget v2, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-string v2, "get(...)"

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/pip/PipInfoPack;

    .line 64
    .line 65
    iget v2, p1, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    .line 66
    .line 67
    iput v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 68
    .line 69
    iget v2, p1, Lcom/narvii/pip/PipInfoPack;->trimEndInMs:I

    .line 70
    .line 71
    iput v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 72
    .line 73
    iget v2, p1, Lcom/narvii/pip/PipInfoPack;->volume:F

    .line 74
    .line 75
    iput v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 76
    .line 77
    iget-object v2, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 78
    .line 79
    const-string v3, "inputPath"

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const/4 v4, 0x2

    .line 84
    const/4 v5, 0x0

    .line 85
    .line 86
    const-string v6, "file://"

    .line 87
    const/4 v7, 0x0

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v6, v7, v4, v5}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 91
    move-result v2

    .line 92
    .line 93
    if-eqz v2, :cond_0

    .line 94
    .line 95
    iget-object v2, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    iget-object v3, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 104
    move-result v3

    .line 105
    const/4 v4, 0x7

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    const-string v3, "substring(...)"

    .line 112
    .line 113
    .line 114
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    iput-object v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 117
    goto :goto_0

    .line 118
    .line 119
    :cond_0
    iget-object v2, p1, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    .line 120
    .line 121
    iput-object v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 122
    .line 123
    :goto_0
    const-string v2, "clipInfoPack"

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    .line 132
    const-string v0, "isVideoTrimming"

    .line 133
    const/4 v2, 0x1

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    .line 138
    const-string v0, "minOutputLength"

    .line 139
    .line 140
    const/16 v3, 0x3e8

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    .line 145
    const-string v0, "showVolume"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    .line 150
    const-string v0, "mute"

    .line 151
    .line 152
    iget-boolean p1, p1, Lcom/narvii/pip/PipInfoPack;->mute:Z

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getREQUEST_CODE_SCENE_EDITOR()I

    .line 159
    move-result p1

    .line 160
    .line 161
    .line 162
    invoke-static {p0, v1, p1}, Lcom/narvii/pip/PipEditorFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 163
    :cond_1
    return-void
.end method

.method public onHorizFlipClick(I)V
    .locals 0

    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_4

    .line 3
    move-object v0, p1

    .line 4
    .line 5
    check-cast v0, Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/model/Media;

    .line 20
    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    iget-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_4

    .line 30
    .line 31
    if-eqz p2, :cond_4

    .line 32
    .line 33
    iget v1, v0, Lcom/narvii/model/Media;->type:I

    .line 34
    .line 35
    const/16 v2, 0x67

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    const-string v4, "intermediateFolder"

    .line 39
    .line 40
    if-ne v1, v2, :cond_1

    .line 41
    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/pip/PipEditorFragment;->intermediateFolder:Ljava/io/File;

    .line 48
    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-object v3, v1

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v0, p2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_1
    const/16 v2, 0x7b

    .line 77
    .line 78
    if-ne v1, v2, :cond_3

    .line 79
    .line 80
    iget-wide v1, v0, Lcom/narvii/model/Media;->duration:J

    .line 81
    .line 82
    .line 83
    const-wide/32 v5, 0xee47

    .line 84
    .line 85
    cmp-long v1, v1, v5

    .line 86
    .line 87
    if-lez v1, :cond_3

    .line 88
    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    iget-object v1, p0, Lcom/narvii/pip/PipEditorFragment;->intermediateFolder:Ljava/io/File;

    .line 95
    .line 96
    if-nez v1, :cond_2

    .line 97
    .line 98
    .line 99
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    move-object v3, v1

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-static {p0, v0, p2, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivityKt;->startPreEditActivity(Lcom/narvii/app/NVFragment;Lcom/narvii/model/Media;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 121
    goto :goto_2

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->onPickerResult(Ljava/util/List;)V

    .line 125
    :cond_4
    :goto_2
    return-void
.end method

.method public onPipVideoMute(Z)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v1

    .line 19
    .line 20
    iget v2, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 21
    .line 22
    if-ltz v2, :cond_1

    .line 23
    .line 24
    if-ge v2, v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 31
    .line 32
    xor-int/lit8 v2, p1, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/narvii/video/attachment/DrawRectView;->setPipVideoMute(Z)V

    .line 36
    .line 37
    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    const-string v2, "get(...)"

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    check-cast v1, Lcom/narvii/pip/PipInfoPack;

    .line 49
    .line 50
    xor-int/lit8 p1, p1, 0x1

    .line 51
    .line 52
    iput-boolean p1, v1, Lcom/narvii/pip/PipInfoPack;->mute:Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    iget v3, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    check-cast v0, Lcom/narvii/pip/PipInfoPack;

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    iget-object v2, v2, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/narvii/video/attachment/DrawRectView;->isPipVideoMute()Z

    .line 77
    move-result v2

    .line 78
    .line 79
    if-eqz v2, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_0
    iget v1, v1, Lcom/narvii/pip/PipInfoPack;->volume:F

    .line 84
    .line 85
    :goto_0
    iget v2, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setPipVideoVolume(Lcom/narvii/pip/PipInfoPack;FI)V

    .line 89
    :cond_1
    return-void
.end method

.method public onScaleAndRotate(FLandroid/graphics/PointF;FI)V
    .locals 2
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result p4

    .line 13
    .line 14
    if-nez p4, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result p4

    .line 19
    .line 20
    iget v0, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 21
    .line 22
    if-ltz v0, :cond_1

    .line 23
    .line 24
    if-ge v0, p4, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    const-string p4, "get(...)"

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    check-cast p2, Lcom/narvii/pip/PipInfoPack;

    .line 36
    .line 37
    iget p4, p2, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 38
    .line 39
    iget v0, p2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 40
    add-int/2addr v0, p4

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 44
    move-result v1

    .line 45
    .line 46
    if-gt p4, v1, :cond_1

    .line 47
    .line 48
    if-ge v1, v0, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->pauseVideoWhenTouch()V

    .line 52
    .line 53
    iget p4, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 54
    mul-float/2addr p4, p1

    .line 55
    .line 56
    iput p4, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 57
    .line 58
    iput p4, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p2}, Lcom/narvii/pip/PipEditorFragment;->checkScale(Lcom/narvii/pip/PipInfoPack;)V

    .line 62
    .line 63
    iget p1, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    .line 64
    add-float/2addr p1, p3

    .line 65
    .line 66
    iput p1, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->updatePipVideoTransform(Lcom/narvii/pip/PipInfoPack;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInPlay()Z

    .line 77
    move-result p1

    .line 78
    .line 79
    if-nez p1, :cond_0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 87
    move-result-object p3

    .line 88
    .line 89
    .line 90
    invoke-interface {p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 91
    move-result p3

    .line 92
    .line 93
    .line 94
    invoke-interface {p1, p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(I)V

    .line 95
    .line 96
    .line 97
    :cond_0
    invoke-direct {p0, p2}, Lcom/narvii/pip/PipEditorFragment;->calculatePipVideoRealTimeCoord(Lcom/narvii/pip/PipInfoPack;)V

    .line 98
    :cond_1
    return-void
.end method

.method public onTouchDown(Landroid/graphics/PointF;I)V
    .locals 3
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 15
    .line 16
    if-ltz v1, :cond_2

    .line 17
    .line 18
    if-ge v1, v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "get(...)"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/pip/PipInfoPack;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0, p1}, Lcom/narvii/pip/PipEditorFragment;->pointInCurrPipVideo(Lcom/narvii/pip/PipInfoPack;Landroid/graphics/PointF;)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    return-void

    .line 37
    .line 38
    :cond_0
    iget p1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 39
    .line 40
    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 41
    add-int/2addr v0, p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 45
    move-result v1

    .line 46
    .line 47
    if-gt p1, v1, :cond_1

    .line 48
    .line 49
    if-ge v1, v0, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 56
    .line 57
    iget v0, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    check-cast p2, Lcom/narvii/pip/PipInfoPack;

    .line 64
    .line 65
    iget-object p2, p2, Lcom/narvii/pip/PipInfoPack;->vertexCoord:Ljava/util/List;

    .line 66
    const/4 v0, 0x4

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2, v0}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 76
    const/4 p2, 0x1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/narvii/video/attachment/DrawRectView;->setShowEdit(Z)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->pauseVideoWhenTouch()V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    move-result-wide p1

    .line 87
    .line 88
    iget-wide v1, p0, Lcom/narvii/pip/PipEditorFragment;->lastTouchDownTime:J

    .line 89
    sub-long/2addr p1, v1

    .line 90
    .line 91
    const-wide/16 v1, 0x1e

    .line 92
    .line 93
    cmp-long v1, v1, p1

    .line 94
    .line 95
    if-gtz v1, :cond_2

    .line 96
    .line 97
    const-wide/16 v1, 0x191

    .line 98
    .line 99
    cmp-long p1, p1, v1

    .line 100
    .line 101
    if-gez p1, :cond_2

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/narvii/pip/PipEditorFragment;->onEdit(I)V

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    return-void

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    move-result-wide p1

    .line 111
    .line 112
    iput-wide p1, p0, Lcom/narvii/pip/PipEditorFragment;->lastTouchDownTime:J

    .line 113
    return-void
.end method

.method public onViceTrackClicked(I)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/narvii/pip/PipEditorFragment;->lastViceTrackClickTime:J

    .line 7
    .line 8
    sub-long v2, v0, v2

    .line 9
    .line 10
    const-wide/16 v4, 0x3e8

    .line 11
    .line 12
    cmp-long v2, v2, v4

    .line 13
    .line 14
    if-gtz v2, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iput-wide v0, p0, Lcom/narvii/pip/PipEditorFragment;->lastViceTrackClickTime:J

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->pauseVideoWhenTouch()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 32
    move-result v1

    .line 33
    .line 34
    xor-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v1

    .line 41
    .line 42
    add-int/lit8 v1, v1, -0x1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    const-string v2, "get(...)"

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    check-cast v1, Lcom/narvii/pip/PipInfoPack;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v1}, Lcom/narvii/pip/PipEditorFragment;->showEditView(Lcom/narvii/pip/PipInfoPack;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    check-cast p1, Lcom/narvii/pip/PipInfoPack;

    .line 66
    .line 67
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 68
    .line 69
    iget v1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 70
    add-int/2addr v1, v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTrackPlaybackTime()I

    .line 74
    move-result v2

    .line 75
    .line 76
    if-gt v0, v2, :cond_1

    .line 77
    .line 78
    if-ge v2, v1, :cond_1

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_1
    iget p1, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/narvii/video/ScrollingTimeLineFragment;->moveMainTrackTo(I)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->updatePipVideoTimeLine()V

    .line 88
    :goto_0
    const/4 p1, 0x4

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/narvii/pip/PipEditorFragment;->onEdit(I)V

    .line 92
    :cond_2
    return-void
.end method

.method public onViceTrackOffsetChanged(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->onPipVideoOffsetChanged(I)V

    .line 8
    return-void
.end method

.method protected onVideoSeekingPositionChanged(J)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getPipVideoList()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v1

    .line 19
    .line 20
    iget v2, p0, Lcom/narvii/pip/PipEditorFragment;->currPipVideoIndex:I

    .line 21
    .line 22
    if-ltz v2, :cond_1

    .line 23
    .line 24
    if-ge v2, v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/pip/PipInfoPack;

    .line 31
    .line 32
    iget v1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 33
    int-to-long v2, v1

    .line 34
    .line 35
    cmp-long v2, v2, p1

    .line 36
    .line 37
    if-gtz v2, :cond_0

    .line 38
    .line 39
    iget v0, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 40
    add-int/2addr v1, v0

    .line 41
    int-to-long v0, v1

    .line 42
    .line 43
    cmp-long p1, v0, p1

    .line 44
    .line 45
    if-gez p1, :cond_1

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->drawRect:Lcom/narvii/video/attachment/DrawRectView;

    .line 52
    const/4 p2, 0x0

    .line 53
    const/4 v0, 0x4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2, v0}, Lcom/narvii/video/attachment/DrawRectView;->setDrawRect(Ljava/util/List;I)V

    .line 57
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->optionCancel:Landroid/widget/ImageView;

    .line 15
    .line 16
    new-instance p2, Lcom/narvii/pip/a;

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p0}, Lcom/narvii/pip/a;-><init>(Lcom/narvii/pip/PipEditorFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->optionAddPipVideo:Landroid/widget/ImageView;

    .line 29
    .line 30
    new-instance p2, Lcom/narvii/pip/b;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/narvii/pip/b;-><init>(Lcom/narvii/pip/PipEditorFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/narvii/pip/PipEditorFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentPipEditorBinding;->optionDone:Landroid/widget/ImageView;

    .line 43
    .line 44
    new-instance p2, Lcom/narvii/pip/c;

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, p0}, Lcom/narvii/pip/c;-><init>(Lcom/narvii/pip/PipEditorFragment;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method protected showPauseButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
