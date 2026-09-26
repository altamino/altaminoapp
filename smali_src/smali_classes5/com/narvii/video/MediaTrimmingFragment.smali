.class public final Lcom/narvii/video/MediaTrimmingFragment;
.super Lcom/narvii/video/BaseMediaEditorFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/MediaTrimmingFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaTrimmingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaTrimmingFragment.kt\ncom/narvii/video/MediaTrimmingFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,461:1\n1#2:462\n11095#3:463\n11430#3,3:464\n*S KotlinDebug\n*F\n+ 1 MediaTrimmingFragment.kt\ncom/narvii/video/MediaTrimmingFragment\n*L\n389#1:463\n389#1:464,3\n*E\n"
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

.field public static final Companion:Lcom/narvii/video/MediaTrimmingFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG_SCREENSHOT_TASK:Ljava/lang/String; = "screenshot"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG_VIDEO_TASK:Ljava/lang/String; = "video"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private activeMedia:Lcom/narvii/video/model/AVClipInfoPack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cancelled:Z

.field private frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

.field private volatile hasFailedTaskInThisShot:Z

.field private inProcessCoverImageTask:Lg7/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private inProcessTrimTask:Lg7/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile inProgressTaskCount:I

.field private inputStreamInfo:Lcom/narvii/video/model/StreamInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isVideoTrimming:Z

.field private maxOutputLength:I

.field private minOutputLength:I

.field private originalMedia:Lcom/narvii/video/model/AVClipInfoPack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private outputDuration:I

.field private outputFileName:Ljava/lang/String;

.field private outputHeight:I

.field private outputWidth:I

.field private photoManager:Lcom/narvii/photos/PhotoManager;

.field private final progress$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tasksTouchDown:Z

.field private volume:F

.field private volumeChanged:Z


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
    const-string v3, "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/video/MediaTrimmingFragment;

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
    sput-object v0, Lcom/narvii/video/MediaTrimmingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/video/MediaTrimmingFragment$Companion;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/video/MediaTrimmingFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 30
    .line 31
    sput-object v0, Lcom/narvii/video/MediaTrimmingFragment;->Companion:Lcom/narvii/video/MediaTrimmingFragment$Companion;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/BaseMediaEditorFragment;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/video/MediaTrimmingFragment$binding$2;->INSTANCE:Lcom/narvii/video/MediaTrimmingFragment$binding$2;

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->binding$delegate:Lkotlin/properties/d;

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->isVideoTrimming:Z

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/video/MediaTrimmingFragment$progress$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/video/MediaTrimmingFragment$progress$2;-><init>(Lcom/narvii/video/MediaTrimmingFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->progress$delegate:Lw7/m;

    .line 26
    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    .line 29
    iput v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->volume:F

    .line 30
    return-void
.end method

.method public static final synthetic access$getCancelled$p(Lcom/narvii/video/MediaTrimmingFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/video/MediaTrimmingFragment;->cancelled:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getInProcessCoverImageTask$p(Lcom/narvii/video/MediaTrimmingFragment;)Lg7/d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessCoverImageTask:Lg7/d;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInProcessTrimTask$p(Lcom/narvii/video/MediaTrimmingFragment;)Lg7/d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessTrimTask:Lg7/d;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOutputDuration$p(Lcom/narvii/video/MediaTrimmingFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/MediaTrimmingFragment;->outputDuration:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getOutputFileName$p(Lcom/narvii/video/MediaTrimmingFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/MediaTrimmingFragment;->outputFileName:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOutputHeight$p(Lcom/narvii/video/MediaTrimmingFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/MediaTrimmingFragment;->outputHeight:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getOutputWidth$p(Lcom/narvii/video/MediaTrimmingFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/MediaTrimmingFragment;->outputWidth:I

    .line 3
    return p0
.end method

.method public static final synthetic access$processMedia(Lcom/narvii/video/MediaTrimmingFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment;->processMedia()V

    .line 4
    return-void
.end method

.method public static final synthetic access$setCancelled$p(Lcom/narvii/video/MediaTrimmingFragment;Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->cancelled:Z

    .line 3
    return-void
.end method

.method private final formatCropInterval(I)Ljava/lang/String;
    .locals 8

    .line 1
    .line 2
    rem-int/lit16 v0, p1, 0x3e8

    .line 3
    .line 4
    div-int/lit8 v0, v0, 0x64

    .line 5
    .line 6
    div-int/lit16 p1, p1, 0x3e8

    .line 7
    .line 8
    sget v1, Lcom/narvii/mediaeditor/R$string;->trim_selected_time:I

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    new-array v3, v2, [Ljava/lang/Object;

    .line 12
    .line 13
    sget-object v4, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 14
    .line 15
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 16
    const/4 v5, 0x2

    .line 17
    .line 18
    new-array v6, v5, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p1

    .line 23
    const/4 v7, 0x0

    .line 24
    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    aput-object p1, v6, v2

    .line 32
    .line 33
    .line 34
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string v0, "%01d.%1d"

    .line 38
    .line 39
    .line 40
    invoke-static {v4, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const-string v0, "format(...)"

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    aput-object p1, v3, v7

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    const-string v0, "getString(...)"

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    return-object p1
.end method

.method private final getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/video/MediaTrimmingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    check-cast v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 14
    return-object v0
.end method

.method private final initMediaTimeLine(Z)V
    .locals 26

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    .line 4
    iget-object v0, v15, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 5
    const/4 v6, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {v15, v4, v6, v5}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    .line 25
    return-void

    .line 26
    .line 27
    :cond_0
    iget-object v0, v15, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "inputPath"

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v15, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isImageInput(Ljava/lang/String;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const/16 v0, 0x1388

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    iget-object v0, v15, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move-object v0, v5

    .line 57
    .line 58
    :goto_0
    iput-object v0, v15, Lcom/narvii/video/MediaTrimmingFragment;->inputStreamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 64
    .line 65
    iget-boolean v0, v0, Lcom/narvii/video/model/StreamInfo;->hasError:Z

    .line 66
    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    iget-object v0, v15, Lcom/narvii/video/MediaTrimmingFragment;->inputStreamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v15, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->isInputCodecSupported(Lcom/narvii/video/model/StreamInfo;)Z

    .line 76
    move-result v0

    .line 77
    .line 78
    if-nez v0, :cond_4

    .line 79
    :cond_3
    move v3, v4

    .line 80
    move-object v2, v5

    .line 81
    move v1, v6

    .line 82
    move-object v6, v15

    .line 83
    .line 84
    goto/16 :goto_7

    .line 85
    .line 86
    :cond_4
    iget-object v0, v15, Lcom/narvii/video/MediaTrimmingFragment;->inputStreamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 90
    .line 91
    iget v0, v0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 92
    .line 93
    :goto_1
    iget-object v3, v15, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 94
    .line 95
    if-eqz v3, :cond_9

    .line 96
    .line 97
    iput v0, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 98
    .line 99
    iput v0, v3, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->clipLength()I

    .line 103
    move-result v0

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v0}, Lcom/narvii/video/model/BaseClipInfoPack;->setClipLengthComposition(Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    .line 118
    move-result v0

    .line 119
    .line 120
    iget v1, v15, Lcom/narvii/video/MediaTrimmingFragment;->maxOutputLength:I

    .line 121
    .line 122
    if-le v0, v1, :cond_5

    .line 123
    .line 124
    iget v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 125
    int-to-double v7, v0

    .line 126
    int-to-double v0, v1

    .line 127
    .line 128
    iget-wide v9, v3, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 129
    mul-double/2addr v0, v9

    .line 130
    add-double/2addr v7, v0

    .line 131
    double-to-int v0, v7

    .line 132
    .line 133
    iput v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 134
    goto :goto_2

    .line 135
    .line 136
    :cond_5
    iget v1, v15, Lcom/narvii/video/MediaTrimmingFragment;->minOutputLength:I

    .line 137
    .line 138
    if-ge v0, v1, :cond_6

    .line 139
    .line 140
    iget v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 141
    int-to-double v7, v0

    .line 142
    int-to-double v0, v1

    .line 143
    .line 144
    iget-wide v9, v3, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 145
    mul-double/2addr v0, v9

    .line 146
    add-double/2addr v7, v0

    .line 147
    double-to-int v0, v7

    .line 148
    .line 149
    iput v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 150
    .line 151
    :cond_6
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 164
    .line 165
    .line 166
    const-string/jumbo v1, "videoTimeLineComponent"

    .line 167
    .line 168
    .line 169
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    const/16 v19, 0x64

    .line 172
    .line 173
    const/16 v20, 0xc9

    .line 174
    .line 175
    const/16 v21, 0x0

    .line 176
    .line 177
    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 179
    move-result-object v22

    .line 180
    .line 181
    iget-object v7, v15, Lcom/narvii/video/MediaTrimmingFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 182
    .line 183
    if-nez v7, :cond_7

    .line 184
    .line 185
    const-string v7, "frameRetrieverManager"

    .line 186
    .line 187
    .line 188
    invoke-static {v7}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 189
    .line 190
    move-object/from16 v23, v5

    .line 191
    goto :goto_3

    .line 192
    .line 193
    :cond_7
    move-object/from16 v23, v7

    .line 194
    .line 195
    :goto_3
    iget v7, v15, Lcom/narvii/video/MediaTrimmingFragment;->maxOutputLength:I

    .line 196
    .line 197
    iget v8, v15, Lcom/narvii/video/MediaTrimmingFragment;->minOutputLength:I

    .line 198
    .line 199
    .line 200
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    move-result-object v8

    .line 202
    const/4 v9, 0x0

    .line 203
    const/4 v10, 0x0

    .line 204
    const/4 v11, 0x0

    .line 205
    const/4 v12, 0x0

    .line 206
    const/4 v13, 0x0

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    .line 210
    move-result v14

    .line 211
    .line 212
    const/16 v16, 0x0

    .line 213
    .line 214
    .line 215
    const v17, 0x9f00

    .line 216
    .line 217
    const/16 v18, 0x0

    .line 218
    .line 219
    move-object/from16 v24, v1

    .line 220
    .line 221
    move/from16 v1, v19

    .line 222
    .line 223
    move-object/from16 v19, v2

    .line 224
    .line 225
    move/from16 v2, v20

    .line 226
    .line 227
    move-object/from16 v25, v3

    .line 228
    .line 229
    move/from16 v3, v21

    .line 230
    .line 231
    move-object/from16 v4, v19

    .line 232
    .line 233
    move-object/from16 v5, v22

    .line 234
    .line 235
    move-object/from16 v6, v23

    .line 236
    .line 237
    move-object/from16 v15, p0

    .line 238
    .line 239
    .line 240
    invoke-static/range {v0 .. v18}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;ZILjava/lang/Object;)I

    .line 241
    move-result v0

    .line 242
    .line 243
    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 245
    move-result-object v1

    .line 246
    .line 247
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->timeLineControllerLength:Landroid/widget/TextView;

    .line 248
    .line 249
    move-object/from16 v6, p0

    .line 250
    .line 251
    .line 252
    invoke-direct {v6, v0}, Lcom/narvii/video/MediaTrimmingFragment;->formatCropInterval(I)Ljava/lang/String;

    .line 253
    move-result-object v0

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    if-eqz p1, :cond_8

    .line 259
    .line 260
    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 262
    move-result-object v0

    .line 263
    .line 264
    iget-object v7, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 265
    .line 266
    move-object/from16 v0, v24

    .line 267
    .line 268
    .line 269
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    .line 271
    move-object/from16 v0, v25

    .line 272
    .line 273
    iget v8, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 274
    const/4 v9, 0x0

    .line 275
    const/4 v10, 0x0

    .line 276
    const/4 v11, 0x1

    .line 277
    const/4 v12, 0x0

    .line 278
    const/4 v13, 0x0

    .line 279
    const/4 v14, 0x0

    .line 280
    .line 281
    const/16 v15, 0x76

    .line 282
    .line 283
    const/16 v16, 0x0

    .line 284
    .line 285
    .line 286
    invoke-static/range {v7 .. v16}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 287
    .line 288
    iget v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 289
    const/4 v1, 0x1

    .line 290
    const/4 v2, 0x0

    .line 291
    const/4 v3, 0x0

    .line 292
    .line 293
    .line 294
    invoke-static {v6, v3, v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo$default(Lcom/narvii/video/BaseMediaEditorFragment;IIILjava/lang/Object;)V

    .line 295
    goto :goto_4

    .line 296
    :cond_8
    const/4 v3, 0x0

    .line 297
    goto :goto_4

    .line 298
    :cond_9
    move v3, v4

    .line 299
    move-object v6, v15

    .line 300
    .line 301
    :goto_4
    iget-object v0, v6, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 302
    .line 303
    if-eqz v0, :cond_a

    .line 304
    .line 305
    iget v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 306
    goto :goto_5

    .line 307
    .line 308
    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    .line 309
    .line 310
    :goto_5
    iput v0, v6, Lcom/narvii/video/MediaTrimmingFragment;->volume:F

    .line 311
    .line 312
    const-string v0, "showVolume"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6, v0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 316
    move-result v0

    .line 317
    .line 318
    if-eqz v0, :cond_c

    .line 319
    .line 320
    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 322
    move-result-object v0

    .line 323
    .line 324
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->volumeProgressView:Lcom/narvii/video/widget/VolumeProgressView;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 328
    .line 329
    const-string v0, "mute"

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6, v0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 333
    move-result v0

    .line 334
    .line 335
    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 337
    move-result-object v1

    .line 338
    .line 339
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->volumeProgressView:Lcom/narvii/video/widget/VolumeProgressView;

    .line 340
    .line 341
    .line 342
    const-string/jumbo v2, "volumeProgressView"

    .line 343
    .line 344
    .line 345
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    .line 347
    if-eqz v0, :cond_b

    .line 348
    const/4 v0, 0x0

    .line 349
    goto :goto_6

    .line 350
    .line 351
    :cond_b
    iget v0, v6, Lcom/narvii/video/MediaTrimmingFragment;->volume:F

    .line 352
    .line 353
    const/16 v2, 0x64

    .line 354
    int-to-float v2, v2

    .line 355
    mul-float/2addr v0, v2

    .line 356
    :goto_6
    float-to-int v2, v0

    .line 357
    const/4 v3, 0x0

    .line 358
    const/4 v4, 0x4

    .line 359
    const/4 v5, 0x0

    .line 360
    move-object v0, v1

    .line 361
    move v1, v2

    .line 362
    .line 363
    move-object/from16 v2, p0

    .line 364
    .line 365
    .line 366
    invoke-static/range {v0 .. v5}, Lcom/narvii/video/widget/VolumeProgressView;->init$default(Lcom/narvii/video/widget/VolumeProgressView;ILcom/narvii/video/widget/VolumeProgressView$OnVolumeChangedListener;ZILjava/lang/Object;)V

    .line 367
    :cond_c
    return-void

    .line 368
    .line 369
    .line 370
    :goto_7
    invoke-static {v6, v3, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    .line 371
    return-void
.end method

.method static synthetic initMediaTimeLine$default(Lcom/narvii/video/MediaTrimmingFragment;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/video/MediaTrimmingFragment;->initMediaTimeLine(Z)V

    .line 9
    return-void
.end method

.method private final initOperationPanel()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->isVideoTrimming:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->optionsPanel:Lcom/narvii/video/widget/MediaOptionPanel;

    .line 14
    .line 15
    sget v2, Lcom/narvii/mediaeditor/R$string;->trim:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    const-string v3, "getString(...)"

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    new-instance v3, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, p0}, Lcom/narvii/video/MediaTrimmingFragment$initOperationPanel$1;-><init>(Lcom/narvii/video/MediaTrimmingFragment;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/video/widget/MediaOptionPanel;->initComponent(ILjava/lang/String;Lcom/narvii/video/widget/MediaOptionPanel$OptionSelectedListener;)V

    .line 33
    return-void
.end method

.method private final processMedia()V
    .locals 22

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getCurCutPosition()[I

    .line 12
    move-result-object v1

    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    array-length v3, v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    array-length v3, v1

    .line 20
    const/4 v4, 0x0

    .line 21
    move v5, v4

    .line 22
    .line 23
    :goto_0
    if-ge v5, v3, :cond_1

    .line 24
    .line 25
    aget v6, v1, v5

    .line 26
    int-to-double v6, v6

    .line 27
    .line 28
    iget-object v8, v0, Lcom/narvii/video/MediaTrimmingFragment;->originalMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 29
    .line 30
    if-eqz v8, :cond_0

    .line 31
    .line 32
    iget-wide v8, v8, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 36
    :goto_1
    mul-double/2addr v6, v8

    .line 37
    double-to-int v6, v6

    .line 38
    .line 39
    .line 40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v6

    .line 42
    .line 43
    .line 44
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    add-int/lit8 v5, v5, 0x1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getNeedRealOutput()Z

    .line 51
    move-result v1

    .line 52
    const/4 v3, 0x1

    .line 53
    .line 54
    if-eqz v1, :cond_d

    .line 55
    .line 56
    iget-object v1, v0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 57
    const/4 v5, 0x0

    .line 58
    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    sget v3, Lcom/narvii/mediaeditor/R$string;->try_again:I

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object v5

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-static {v1, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 89
    return-void

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    check-cast v1, Ljava/lang/Number;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 99
    move-result v10

    .line 100
    .line 101
    .line 102
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    check-cast v1, Ljava/lang/Number;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 109
    move-result v1

    .line 110
    .line 111
    .line 112
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    check-cast v2, Ljava/lang/Number;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 119
    move-result v2

    .line 120
    sub-int/2addr v1, v2

    .line 121
    .line 122
    iput v1, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputDuration:I

    .line 123
    int-to-double v2, v10

    .line 124
    int-to-double v6, v1

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    const-wide v8, 0x3fd3333333333333L    # 0.3

    .line 130
    mul-double/2addr v6, v8

    .line 131
    add-double/2addr v2, v6

    .line 132
    double-to-int v14, v2

    .line 133
    .line 134
    new-instance v8, Ljava/io/File;

    .line 135
    .line 136
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    iget-object v3, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputFileName:Ljava/lang/String;

    .line 146
    .line 147
    const-string v4, "outputFileName"

    .line 148
    .line 149
    if-nez v3, :cond_4

    .line 150
    .line 151
    .line 152
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 153
    move-object v3, v5

    .line 154
    .line 155
    .line 156
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v3, ".mp4"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v2

    .line 166
    .line 167
    .line 168
    invoke-direct {v8, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .line 170
    new-instance v13, Ljava/io/File;

    .line 171
    .line 172
    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    iget-object v3, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputFileName:Ljava/lang/String;

    .line 182
    .line 183
    if-nez v3, :cond_5

    .line 184
    .line 185
    .line 186
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 187
    goto :goto_2

    .line 188
    :cond_5
    move-object v5, v3

    .line 189
    .line 190
    .line 191
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v3, ".jpg"

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v2

    .line 201
    .line 202
    .line 203
    invoke-direct {v13, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .line 205
    iget-object v1, v0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessTrimTask:Lg7/d;

    .line 206
    .line 207
    if-eqz v1, :cond_6

    .line 208
    .line 209
    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 211
    move-result-object v2

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v1}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    .line 215
    .line 216
    .line 217
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 218
    move-result-object v6

    .line 219
    .line 220
    iget-object v7, v0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 221
    .line 222
    .line 223
    invoke-static {v7}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 224
    .line 225
    iget v9, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputDuration:I

    .line 226
    .line 227
    new-instance v11, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;

    .line 228
    .line 229
    .line 230
    invoke-direct {v11, v0}, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;-><init>(Lcom/narvii/video/MediaTrimmingFragment;)V

    .line 231
    .line 232
    .line 233
    const-string/jumbo v12, "video"

    .line 234
    .line 235
    .line 236
    invoke-virtual/range {v6 .. v12}, Lcom/narvii/video/services/VideoManager;->cropVideo(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)Lg7/d;

    .line 237
    move-result-object v1

    .line 238
    .line 239
    iput-object v1, v0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessTrimTask:Lg7/d;

    .line 240
    .line 241
    iget-object v1, v0, Lcom/narvii/video/MediaTrimmingFragment;->inputStreamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 242
    .line 243
    const/16 v2, 0x2d0

    .line 244
    .line 245
    if-eqz v1, :cond_7

    .line 246
    .line 247
    iget v3, v1, Lcom/narvii/video/model/StreamInfo;->width:I

    .line 248
    goto :goto_3

    .line 249
    :cond_7
    move v3, v2

    .line 250
    .line 251
    :goto_3
    const/16 v4, 0x500

    .line 252
    .line 253
    if-eqz v1, :cond_8

    .line 254
    .line 255
    iget v1, v1, Lcom/narvii/video/model/StreamInfo;->height:I

    .line 256
    goto :goto_4

    .line 257
    :cond_8
    move v1, v4

    .line 258
    .line 259
    :goto_4
    iget-object v5, v0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessCoverImageTask:Lg7/d;

    .line 260
    .line 261
    if-eqz v5, :cond_9

    .line 262
    .line 263
    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 265
    move-result-object v6

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6, v5}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    .line 269
    .line 270
    :cond_9
    const/high16 v5, 0x44340000    # 720.0f

    .line 271
    .line 272
    if-le v1, v3, :cond_b

    .line 273
    .line 274
    iput v2, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputWidth:I

    .line 275
    .line 276
    if-gtz v3, :cond_a

    .line 277
    goto :goto_5

    .line 278
    :cond_a
    int-to-float v1, v1

    .line 279
    int-to-float v2, v3

    .line 280
    div-float/2addr v5, v2

    .line 281
    mul-float/2addr v1, v5

    .line 282
    float-to-int v4, v1

    .line 283
    .line 284
    :goto_5
    iput v4, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputHeight:I

    .line 285
    .line 286
    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 288
    move-result-object v11

    .line 289
    .line 290
    iget-object v12, v0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 291
    .line 292
    .line 293
    invoke-static {v12}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 294
    .line 295
    const/16 v15, 0x2d0

    .line 296
    .line 297
    const/16 v16, 0x0

    .line 298
    .line 299
    new-instance v1, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;

    .line 300
    .line 301
    .line 302
    invoke-direct {v1, v0}, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;-><init>(Lcom/narvii/video/MediaTrimmingFragment;)V

    .line 303
    .line 304
    const/16 v18, 0x0

    .line 305
    .line 306
    const/16 v19, 0x0

    .line 307
    .line 308
    const/16 v20, 0xd0

    .line 309
    .line 310
    const/16 v21, 0x0

    .line 311
    .line 312
    move-object/from16 v17, v1

    .line 313
    .line 314
    .line 315
    invoke-static/range {v11 .. v21}, Lcom/narvii/video/services/VideoManager;->getCoverImage$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;ZILjava/lang/Object;)Lg7/d;

    .line 316
    move-result-object v1

    .line 317
    .line 318
    iput-object v1, v0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessCoverImageTask:Lg7/d;

    .line 319
    .line 320
    goto/16 :goto_8

    .line 321
    .line 322
    :cond_b
    iput v2, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputHeight:I

    .line 323
    .line 324
    if-gtz v1, :cond_c

    .line 325
    goto :goto_6

    .line 326
    :cond_c
    int-to-float v2, v3

    .line 327
    int-to-float v1, v1

    .line 328
    div-float/2addr v5, v1

    .line 329
    mul-float/2addr v2, v5

    .line 330
    float-to-int v4, v2

    .line 331
    .line 332
    :goto_6
    iput v4, v0, Lcom/narvii/video/MediaTrimmingFragment;->outputWidth:I

    .line 333
    .line 334
    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 336
    move-result-object v11

    .line 337
    .line 338
    iget-object v12, v0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 339
    .line 340
    .line 341
    invoke-static {v12}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 342
    const/4 v15, 0x0

    .line 343
    .line 344
    const/16 v16, 0x2d0

    .line 345
    .line 346
    new-instance v1, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;

    .line 347
    .line 348
    .line 349
    invoke-direct {v1, v0}, Lcom/narvii/video/MediaTrimmingFragment$Companion$DefaultVideoServiceCallback;-><init>(Lcom/narvii/video/MediaTrimmingFragment;)V

    .line 350
    .line 351
    const/16 v18, 0x0

    .line 352
    .line 353
    const/16 v19, 0x0

    .line 354
    .line 355
    const/16 v20, 0xc8

    .line 356
    .line 357
    const/16 v21, 0x0

    .line 358
    .line 359
    move-object/from16 v17, v1

    .line 360
    .line 361
    .line 362
    invoke-static/range {v11 .. v21}, Lcom/narvii/video/services/VideoManager;->getCoverImage$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;ZILjava/lang/Object;)Lg7/d;

    .line 363
    move-result-object v1

    .line 364
    .line 365
    iput-object v1, v0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessCoverImageTask:Lg7/d;

    .line 366
    goto :goto_8

    .line 367
    .line 368
    :cond_d
    new-instance v1, Landroid/content/Intent;

    .line 369
    .line 370
    .line 371
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 372
    .line 373
    iget-object v5, v0, Lcom/narvii/video/MediaTrimmingFragment;->originalMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 374
    .line 375
    if-eqz v5, :cond_10

    .line 376
    .line 377
    .line 378
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 379
    move-result-object v6

    .line 380
    .line 381
    check-cast v6, Ljava/lang/Number;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 385
    move-result v6

    .line 386
    .line 387
    iput v6, v5, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 388
    .line 389
    .line 390
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 391
    move-result-object v2

    .line 392
    .line 393
    check-cast v2, Ljava/lang/Number;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 397
    move-result v2

    .line 398
    .line 399
    iput v2, v5, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 400
    .line 401
    iget v2, v0, Lcom/narvii/video/MediaTrimmingFragment;->volume:F

    .line 402
    .line 403
    iput v2, v5, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 404
    .line 405
    new-array v2, v3, [Lcom/narvii/video/model/AVClipInfoPack;

    .line 406
    .line 407
    aput-object v5, v2, v4

    .line 408
    .line 409
    .line 410
    invoke-static {v2}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 411
    move-result-object v2

    .line 412
    .line 413
    .line 414
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 415
    move-result-object v2

    .line 416
    .line 417
    const-string v5, "clipInfoList"

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    .line 422
    iget-boolean v2, v0, Lcom/narvii/video/MediaTrimmingFragment;->volumeChanged:Z

    .line 423
    .line 424
    const-string v5, "mute"

    .line 425
    .line 426
    if-eqz v2, :cond_e

    .line 427
    .line 428
    iget v2, v0, Lcom/narvii/video/MediaTrimmingFragment;->volume:F

    .line 429
    .line 430
    .line 431
    const v6, 0x3ca3d70a    # 0.02f

    .line 432
    .line 433
    cmpg-float v2, v2, v6

    .line 434
    .line 435
    if-gez v2, :cond_f

    .line 436
    move v4, v3

    .line 437
    goto :goto_7

    .line 438
    .line 439
    .line 440
    :cond_e
    invoke-virtual {v0, v5, v4}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 441
    move-result v4

    .line 442
    .line 443
    .line 444
    :cond_f
    :goto_7
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    :cond_10
    const/4 v2, -0x1

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v2, v1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 452
    :goto_8
    return-void
.end method


# virtual methods
.method protected getAudioInputClipList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->isVideoTrimming:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    return-object v0
.end method

.method protected getCaptionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/Caption;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    return-object v0
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

.method public final getHasFailedTaskInThisShot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->hasFailedTaskInThisShot:Z

    return v0
.end method

.method public final getInProgressTaskCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->inProgressTaskCount:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "media_trim"

    return-object v0
.end method

.method protected getPipClipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    return-object v0
.end method

.method public final getProgress()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->progress$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    return-object v0
.end method

.method protected getStickerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    return-object v0
.end method

.method public final getTasksTouchDown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->tasksTouchDown:Z

    return v0
.end method

.method protected getVideoInputClipList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->isVideoTrimming:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    return-object v0
.end method

.method public initComponent()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->videoViewPlayer:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPreviewVideoView(Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->playerButton:Landroid/widget/ImageView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPlayerButton(Landroid/widget/ImageView;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->pauseShadow:Landroid/view/View;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setPauseShadow(Landroid/view/View;)V

    .line 28
    return-void
.end method

.method protected innerOnVideoPrepared()V
    .locals 0

    return-void
.end method

.method protected onAVClipsPrepared()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onAVClipsPrepared()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    .line 18
    :cond_0
    const-string/jumbo v0, "videoManager"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "getService(...)"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/video/services/VideoManager;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setVideoManager(Lcom/narvii/video/services/VideoManager;)V

    .line 33
    .line 34
    const-string v0, "minOutputLength"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 38
    move-result v0

    .line 39
    .line 40
    iput v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->minOutputLength:I

    .line 41
    .line 42
    const-string v0, "maxOutputLength"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 46
    move-result v0

    .line 47
    .line 48
    iput v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->maxOutputLength:I

    .line 49
    .line 50
    iget v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->minOutputLength:I

    .line 51
    .line 52
    if-gtz v1, :cond_1

    .line 53
    .line 54
    const/16 v1, 0xbb8

    .line 55
    .line 56
    iput v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->minOutputLength:I

    .line 57
    .line 58
    :cond_1
    if-gtz v0, :cond_2

    .line 59
    .line 60
    const/16 v0, 0x3a98

    .line 61
    .line 62
    iput v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->maxOutputLength:I

    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    .line 71
    move-result v0

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMsWithSpeed()I

    .line 82
    move-result v0

    .line 83
    .line 84
    iget v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->maxOutputLength:I

    .line 85
    .line 86
    if-le v0, v1, :cond_3

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 92
    .line 93
    iget-object v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 97
    .line 98
    iget v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 99
    int-to-double v1, v1

    .line 100
    .line 101
    iget v3, p0, Lcom/narvii/video/MediaTrimmingFragment;->maxOutputLength:I

    .line 102
    int-to-double v3, v3

    .line 103
    .line 104
    iget-object v5, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 105
    .line 106
    .line 107
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 108
    .line 109
    iget-wide v5, v5, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 110
    mul-double/2addr v3, v5

    .line 111
    add-double/2addr v1, v3

    .line 112
    double-to-int v1, v1

    .line 113
    .line 114
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 115
    .line 116
    :cond_3
    new-instance v0, Lcom/narvii/photos/PhotoManager;

    .line 117
    .line 118
    .line 119
    invoke-direct {v0, p0}, Lcom/narvii/photos/PhotoManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 120
    .line 121
    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getNeedRealOutput()Z

    .line 125
    move-result v0

    .line 126
    const/4 v1, 0x0

    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 131
    .line 132
    if-nez v0, :cond_4

    .line 133
    .line 134
    const-string v0, "photoManager"

    .line 135
    .line 136
    .line 137
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 138
    move-object v0, v1

    .line 139
    .line 140
    .line 141
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getOutputFileDir()Ljava/io/File;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    .line 145
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Lcom/narvii/photos/PhotoManager;->getNewVideoName(Ljava/io/File;)Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    const-string v2, "getNewVideoName(...)"

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->outputFileName:Ljava/lang/String;

    .line 157
    .line 158
    :cond_5
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 159
    .line 160
    if-nez v0, :cond_6

    .line 161
    .line 162
    const-string v0, "frameRetrieverManager"

    .line 163
    .line 164
    .line 165
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 166
    move-object v2, v1

    .line 167
    goto :goto_0

    .line 168
    :cond_6
    move-object v2, v0

    .line 169
    .line 170
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 171
    .line 172
    .line 173
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    if-eqz v0, :cond_8

    .line 180
    .line 181
    .line 182
    invoke-static {v0}, Lkotlin/io/j;->s(Ljava/io/File;)Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    if-nez v0, :cond_7

    .line 186
    goto :goto_2

    .line 187
    :cond_7
    :goto_1
    move-object v3, v0

    .line 188
    goto :goto_3

    .line 189
    .line 190
    :cond_8
    :goto_2
    const-string v0, "default"

    .line 191
    goto :goto_1

    .line 192
    .line 193
    .line 194
    :goto_3
    const-string/jumbo v4, "trim"

    .line 195
    const/4 v5, 0x0

    .line 196
    const/4 v6, 0x0

    .line 197
    .line 198
    const/16 v7, 0xc

    .line 199
    const/4 v8, 0x0

    .line 200
    .line 201
    .line 202
    invoke-static/range {v2 .. v8}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment;->initOperationPanel()V

    .line 206
    const/4 v0, 0x0

    .line 207
    const/4 v2, 0x1

    .line 208
    .line 209
    .line 210
    invoke-static {p0, v0, v2, v1}, Lcom/narvii/video/MediaTrimmingFragment;->initMediaTimeLine$default(Lcom/narvii/video/MediaTrimmingFragment;ZILjava/lang/Object;)V

    .line 211
    :cond_9
    :goto_4
    return-void
.end method

.method protected onActiveVideoChanged(IZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onActiveVideoChanged(IZ)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    iget-object p2, p2, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->setActiveClipInTrack(I)V

    .line 13
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/narvii/video/services/FrameRetrieverManager;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/narvii/video/services/FrameRetrieverManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 23
    .line 24
    const-string v0, "isVideoTrimming"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->isVideoTrimming:Z

    .line 31
    .line 32
    const-string v0, "clipInfoPack"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 42
    .line 43
    const-class v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v0, v1

    .line 50
    .line 51
    :goto_0
    if-nez v0, :cond_4

    .line 52
    .line 53
    const-string v0, "inputFile"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    const/4 v2, 0x0

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    new-instance v3, Ljava/io/File;

    .line 63
    .line 64
    .line 65
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 69
    move-result v3

    .line 70
    .line 71
    if-nez v3, :cond_2

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_2
    new-instance v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 75
    .line 76
    .line 77
    invoke-direct {v1}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 78
    .line 79
    iput-object v0, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 80
    .line 81
    iput v2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    .line 82
    move-object v0, v1

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 85
    .line 86
    .line 87
    invoke-static {p0, v2, v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog$default(Lcom/narvii/video/BaseMediaEditorFragment;ZILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    return-void

    .line 92
    .line 93
    :cond_4
    :goto_2
    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->originalMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    iput-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 105
    .line 106
    .line 107
    invoke-super {p0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
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
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onDestroyView()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessTrimTask:Lg7/d;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->inProcessCoverImageTask:Lg7/d;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    const-string v0, "frameRetrieverManager"

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getNeedRealOutput()Z

    .line 45
    move-result v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->doClean(Z)V

    .line 49
    :cond_3
    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 2

    .line 1
    .line 2
    if-ltz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->timeLineControllerLength:Landroid/widget/TextView;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/narvii/video/MediaTrimmingFragment;->formatCropInterval(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onFrameLocatedDuringMove(II)V

    .line 19
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onPause()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "frameRetrieverManager"

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    .line 23
    :cond_1
    return-void
.end method

.method public onReplayTriggered(III)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/video/BaseMediaEditorFragment;->onReplayTriggered(III)V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-eq p3, v0, :cond_0

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    if-eq p3, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object p3, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    int-to-double v0, p1

    .line 16
    .line 17
    iget-wide v2, p3, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    .line 18
    mul-double/2addr v0, v2

    .line 19
    double-to-int p1, v0

    .line 20
    .line 21
    iput p1, p3, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 22
    int-to-double p1, p2

    .line 23
    mul-double/2addr p1, v2

    .line 24
    double-to-int p1, p1

    .line 25
    .line 26
    iput p1, p3, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getInitSuccess()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->refreshTimeLine()V

    .line 19
    :cond_0
    return-void
.end method

.method protected onSeekingStatusChanged(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->setSeeking(Z)V

    .line 10
    return-void
.end method

.method protected onVideoPlaybackStatusChanged(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/MediaTrimmingFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentMediaTrimmingBinding;->videoTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackStatusChanged(Z)V

    .line 10
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/video/MediaTrimmingFragment;->volumeChanged:Z

    .line 4
    int-to-float p1, p1

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    mul-float/2addr p1, v1

    .line 8
    .line 9
    const/16 v1, 0x64

    .line 10
    int-to-float v1, v1

    .line 11
    div-float/2addr p1, v1

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->volume:F

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/video/MediaTrimmingFragment;->activeMedia:Lcom/narvii/video/model/AVClipInfoPack;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iput p1, v1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->setVolume(Lcom/narvii/video/model/AVClipInfoPack;Z)V

    .line 27
    :cond_0
    return-void
.end method

.method public final setHasFailedTaskInThisShot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->hasFailedTaskInThisShot:Z

    return-void
.end method

.method public final setInProgressTaskCount(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->inProgressTaskCount:I

    return-void
.end method

.method public final setTasksTouchDown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/MediaTrimmingFragment;->tasksTouchDown:Z

    return-void
.end method

.method protected updateAVClipDurations(Lcom/narvii/video/model/AVClipInfoPack;I)V
    .locals 1
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "clip"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput p2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 8
    .line 9
    iput p2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 10
    return-void
.end method
