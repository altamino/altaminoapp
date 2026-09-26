.class public final Lcom/narvii/videotemplate/VideoTemplateManager;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/videotemplate/VideoTemplateManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoTemplateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoTemplateManager.kt\ncom/narvii/videotemplate/VideoTemplateManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,369:1\n1549#2:370\n1620#2,3:371\n1549#2:374\n1620#2,3:375\n37#3,2:378\n37#3,2:380\n*S KotlinDebug\n*F\n+ 1 VideoTemplateManager.kt\ncom/narvii/videotemplate/VideoTemplateManager\n*L\n162#1:370\n162#1:371,3\n163#1:374\n163#1:375,3\n186#1:378,2\n238#1:380,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/videotemplate/VideoTemplateManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DECODER_DEBUG_TYPE:I = -0x1


# instance fields
.field private final aminoLogoFile:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private managerAlive:Z

.field private outputPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final photo:Lcom/narvii/photos/PhotoManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pidCheckRunnable:Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private taskRunning:Z

.field private final tempOutVideoFile:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private template:Lcom/narvii/videotemplate/Template;

.field private templateMusicFile:Ljava/io/File;

.field private final watermarkCreatorFile:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final watermarkLogoFile:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/videotemplate/VideoTemplateManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateManager$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/videotemplate/VideoTemplateManager;->Companion:Lcom/narvii/videotemplate/VideoTemplateManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v0, "photo"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "getService(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->photo:Lcom/narvii/photos/PhotoManager;

    .line 26
    .line 27
    new-instance v0, Ljava/io/File;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    const-string/jumbo v2, "vtemplate_out.h264"

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 44
    .line 45
    new-instance v0, Ljava/io/File;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    const-string v2, "aminologo.webp"

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->aminoLogoFile:Ljava/io/File;

    .line 61
    .line 62
    new-instance v0, Ljava/io/File;

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    const-string/jumbo v2, "wmlogo.png"

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkLogoFile:Ljava/io/File;

    .line 79
    .line 80
    new-instance v0, Ljava/io/File;

    .line 81
    .line 82
    .line 83
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    const-string v1, "creatorBg.png"

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .line 95
    iput-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkCreatorFile:Ljava/io/File;

    .line 96
    const/4 p1, 0x2

    .line 97
    .line 98
    const-string v0, "Video_Template"

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 105
    .line 106
    new-instance p1, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, p0}, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;-><init>(Lcom/narvii/videotemplate/VideoTemplateManager;)V

    .line 110
    .line 111
    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->pidCheckRunnable:Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;

    .line 112
    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/narvii/videotemplate/VideoTemplateManager;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->startCompile$lambda$4(Ljava/util/List;Lcom/narvii/videotemplate/VideoTemplateManager;)V

    return-void
.end method

.method public static final synthetic access$getAminoLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->aminoLogoFile:Ljava/io/File;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCallback$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTaskRunning$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getTempOutVideoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWatermarkCreatorFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkCreatorFile:Ljava/io/File;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWatermarkLogoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkLogoFile:Ljava/io/File;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/narvii/videotemplate/VideoTemplateManager;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/videotemplate/VideoTemplateManager;->printWatermark$lambda$5(Lcom/narvii/videotemplate/VideoTemplateManager;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/videotemplate/VideoTemplateManager;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/videotemplate/VideoTemplateManager;->startCompile$lambda$1(Lcom/narvii/videotemplate/VideoTemplateManager;)V

    return-void
.end method

.method private final doMix()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->outputPath:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->templateMusicFile:Ljava/io/File;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "templateMusicFile"

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 16
    move-object v0, v2

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    .line 35
    const-string/jumbo v3, "videoManager"

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    move-object v3, v0

    .line 41
    .line 42
    check-cast v3, Lcom/narvii/video/services/VideoManager;

    .line 43
    .line 44
    new-instance v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 45
    .line 46
    .line 47
    invoke-direct {v4}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    iput-object v0, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v0, Lcom/narvii/video/model/AVClipInfoPack;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 61
    .line 62
    iget-object v5, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->templateMusicFile:Ljava/io/File;

    .line 63
    .line 64
    if-nez v5, :cond_1

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 68
    move-object v5, v2

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    iput-object v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 75
    const/4 v1, 0x0

    .line 76
    .line 77
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    .line 80
    .line 81
    .line 82
    const-string/jumbo v5, "template"

    .line 83
    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 88
    move-object v1, v2

    .line 89
    .line 90
    :cond_2
    iget v1, v1, Lcom/narvii/videotemplate/Template;->outputFrameCount:I

    .line 91
    int-to-float v1, v1

    .line 92
    .line 93
    iget-object v6, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    .line 94
    .line 95
    if-nez v6, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    move-object v2, v6

    .line 101
    .line 102
    :goto_0
    iget v2, v2, Lcom/narvii/videotemplate/Template;->fps:I

    .line 103
    int-to-float v2, v2

    .line 104
    div-float/2addr v1, v2

    .line 105
    .line 106
    const/16 v2, 0x3e8

    .line 107
    int-to-float v2, v2

    .line 108
    mul-float/2addr v1, v2

    .line 109
    float-to-int v1, v1

    .line 110
    .line 111
    iput v1, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 115
    move-result-object v5

    .line 116
    .line 117
    new-instance v6, Ljava/io/File;

    .line 118
    .line 119
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->outputPath:Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    new-instance v7, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;

    .line 128
    .line 129
    .line 130
    invoke-direct {v7, p0}, Lcom/narvii/videotemplate/VideoTemplateManager$doMix$1;-><init>(Lcom/narvii/videotemplate/VideoTemplateManager;)V

    .line 131
    const/4 v8, 0x1

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/video/services/VideoManager;->simpleAVMix(Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/List;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Z)Lg7/d;

    .line 135
    goto :goto_1

    .line 136
    .line 137
    :cond_4
    sget v0, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_AV_MIX:I

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->onError(I)V

    .line 141
    :goto_1
    return-void
.end method

.method private final generateCreatorInfoPage(Lcom/narvii/model/User;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "inflate(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;->authorBgUserAvatar:Lcom/narvii/widget/ThumbImageView;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 29
    .line 30
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;->authorBgUserName:Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    iget v1, p2, Lcom/narvii/model/Community;->id:I

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;->authorBgCommunityNameOrAminoId:Landroid/widget/TextView;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    const-string v3, "From:"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    iget-object v3, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;->authorBgCommunityAminoId:Landroid/widget/TextView;

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    const-string v3, "Amino ID: "

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    iget-object p2, p2, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_1
    :goto_0
    iget-object p2, v0, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;->authorBgCommunityAminoId:Landroid/widget/TextView;

    .line 96
    .line 97
    const/16 v1, 0x8

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    iget-object p2, v0, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;->authorBgCommunityNameOrAminoId:Landroid/widget/TextView;

    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    const/16 v3, 0x40

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    :goto_1
    const/16 p1, 0x2d0

    .line 127
    .line 128
    const/high16 p2, 0x40000000    # 2.0f

    .line 129
    .line 130
    .line 131
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 132
    move-result p1

    .line 133
    .line 134
    const/16 v1, 0x500

    .line 135
    .line 136
    .line 137
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 138
    move-result p2

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 153
    move-result-object p2

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 157
    move-result p2

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 161
    move-result-object v1

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 165
    move-result v1

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v2, v2, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 176
    move-result p1

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 180
    move-result-object p2

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 184
    move-result p2

    .line 185
    .line 186
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 187
    .line 188
    .line 189
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 190
    move-result-object p1

    .line 191
    .line 192
    const-string p2, "createBitmap(...)"

    .line 193
    .line 194
    .line 195
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    new-instance p2, Landroid/graphics/Canvas;

    .line 198
    .line 199
    .line 200
    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkCreatorInfoBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 208
    return-object p1
.end method

.method private final generateWatermarkLogo(Lcom/narvii/model/User;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkLogoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/ComponentWatermarkLogoBinding;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "inflate(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkLogoBinding;->userName:Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget v1, p2, Lcom/narvii/model/Community;->id:I

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object p1, v0, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkLogoBinding;->communityNameOrAminoId:Landroid/widget/TextView;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    :goto_0
    iget-object p2, v0, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkLogoBinding;->communityFrom:Landroid/widget/TextView;

    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    iget-object p2, v0, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkLogoBinding;->communityNameOrAminoId:Landroid/widget/TextView;

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    const/16 v3, 0x40

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    :goto_1
    const/16 p1, 0x190

    .line 79
    .line 80
    const/high16 p2, -0x80000000

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 84
    move-result p1

    .line 85
    .line 86
    const/16 p2, 0x78

    .line 87
    .line 88
    const/high16 v1, 0x40000000    # 2.0f

    .line 89
    .line 90
    .line 91
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 92
    move-result p2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkLogoBinding;->getRoot()Landroid/widget/RelativeLayout;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkLogoBinding;->getRoot()Landroid/widget/RelativeLayout;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkLogoBinding;->getRoot()Landroid/widget/RelativeLayout;

    .line 107
    move-result-object p2

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 111
    move-result p2

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkLogoBinding;->getRoot()Landroid/widget/RelativeLayout;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 119
    move-result v1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v2, v2, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkLogoBinding;->getRoot()Landroid/widget/RelativeLayout;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 130
    move-result p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkLogoBinding;->getRoot()Landroid/widget/RelativeLayout;

    .line 134
    move-result-object p2

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 138
    move-result p2

    .line 139
    .line 140
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 141
    .line 142
    .line 143
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    const-string p2, "createBitmap(...)"

    .line 147
    .line 148
    .line 149
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    new-instance p2, Landroid/graphics/Canvas;

    .line 152
    .line 153
    .line 154
    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/ComponentWatermarkLogoBinding;->getRoot()Landroid/widget/RelativeLayout;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 162
    return-object p1
.end method

.method private static final printWatermark$lambda$5(Lcom/narvii/videotemplate/VideoTemplateManager;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "$watermarkBitmap"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "$creatorBgBitmap"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v0, "$orgVideoPath"

    .line 19
    .line 20
    .line 21
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkLogoFile:Ljava/io/File;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 29
    .line 30
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 31
    .line 32
    const/16 v2, 0x64

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 39
    .line 40
    new-instance p1, Ljava/io/FileOutputStream;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkCreatorFile:Ljava/io/File;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    const-string/jumbo p2, "watermark/watermark.webp"

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->aminoLogoFile:Ljava/io/File;

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2, v0}, Lcom/narvii/util/FileUtils;->moveFromAssetsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    .line 68
    .line 69
    .line 70
    const-string/jumbo p2, "videoManager"

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    check-cast p1, Lcom/narvii/video/services/VideoManager;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p3}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    .line 83
    const/4 v0, 0x0

    .line 84
    .line 85
    .line 86
    const-string/jumbo v1, "template"

    .line 87
    .line 88
    if-nez p2, :cond_0

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 92
    move-object p2, v0

    .line 93
    .line 94
    :cond_0
    iget v2, p1, Lcom/narvii/video/model/StreamInfo;->fps:I

    .line 95
    .line 96
    iput v2, p2, Lcom/narvii/videotemplate/Template;->fps:I

    .line 97
    .line 98
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    .line 99
    .line 100
    if-nez p2, :cond_1

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 104
    move-object p2, v0

    .line 105
    .line 106
    :cond_1
    iget v2, p1, Lcom/narvii/video/model/StreamInfo;->frameCount:I

    .line 107
    .line 108
    add-int/lit8 v2, v2, 0x3c

    .line 109
    .line 110
    iput v2, p2, Lcom/narvii/videotemplate/Template;->outputFrameCount:I

    .line 111
    .line 112
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    .line 113
    .line 114
    if-nez p2, :cond_2

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 118
    move-object p2, v0

    .line 119
    .line 120
    :cond_2
    iget-object p2, p2, Lcom/narvii/videotemplate/Template;->segments:Ljava/util/ArrayList;

    .line 121
    const/4 v2, 0x0

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object p2

    .line 126
    .line 127
    check-cast p2, Lcom/narvii/videotemplate/TemplateSegment;

    .line 128
    .line 129
    iget v3, p1, Lcom/narvii/video/model/StreamInfo;->frameCount:I

    .line 130
    .line 131
    iput v3, p2, Lcom/narvii/videotemplate/TemplateSegment;->frameCount:I

    .line 132
    .line 133
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    .line 134
    .line 135
    if-nez p2, :cond_3

    .line 136
    .line 137
    .line 138
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 139
    move-object p2, v0

    .line 140
    .line 141
    :cond_3
    iget-object p2, p2, Lcom/narvii/videotemplate/Template;->segments:Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    invoke-static {p2}, Lcom/narvii/videotemplate/VideoTemplateJni;->create(Ljava/util/ArrayList;)V

    .line 145
    .line 146
    new-instance p2, Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    iget-object p3, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkLogoFile:Ljava/io/File;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 158
    move-result-object p3

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    iget-object p3, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->aminoLogoFile:Ljava/io/File;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 167
    move-result-object p3

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    iget-object p3, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkCreatorFile:Ljava/io/File;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 176
    move-result-object p3

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    new-instance p3, Ljava/util/ArrayList;

    .line 182
    .line 183
    .line 184
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    new-instance v3, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 187
    .line 188
    .line 189
    invoke-direct {v3}, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;-><init>()V

    .line 190
    const/4 v4, 0x3

    .line 191
    .line 192
    iput v4, v3, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->inputType:I

    .line 193
    .line 194
    iget p1, p1, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    .line 195
    int-to-long v4, p1

    .line 196
    .line 197
    iput-wide v4, v3, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->videoTrimEnd:J

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    new-instance p1, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 203
    .line 204
    .line 205
    invoke-direct {p1}, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;-><init>()V

    .line 206
    .line 207
    iput v2, p1, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->inputType:I

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    new-instance p1, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 213
    .line 214
    .line 215
    invoke-direct {p1}, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;-><init>()V

    .line 216
    const/4 v3, 0x4

    .line 217
    .line 218
    iput v3, p1, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->inputType:I

    .line 219
    .line 220
    .line 221
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    new-instance p1, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 224
    .line 225
    .line 226
    invoke-direct {p1}, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;-><init>()V

    .line 227
    .line 228
    iput v2, p1, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->inputType:I

    .line 229
    .line 230
    .line 231
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    new-array p1, v2, [Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    check-cast p1, [Ljava/lang/String;

    .line 240
    .line 241
    new-array p2, v2, [Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 242
    .line 243
    .line 244
    invoke-interface {p3, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 245
    move-result-object p2

    .line 246
    .line 247
    check-cast p2, [Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 248
    .line 249
    iget-object p3, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 253
    move-result-object p3

    .line 254
    .line 255
    iget-object v2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    .line 256
    .line 257
    if-nez v2, :cond_4

    .line 258
    .line 259
    .line 260
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 261
    move-object v2, v0

    .line 262
    .line 263
    :cond_4
    iget v2, v2, Lcom/narvii/videotemplate/Template;->outputFrameCount:I

    .line 264
    .line 265
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    .line 266
    .line 267
    if-nez p0, :cond_5

    .line 268
    .line 269
    .line 270
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 271
    goto :goto_0

    .line 272
    :cond_5
    move-object v0, p0

    .line 273
    .line 274
    :goto_0
    iget p0, v0, Lcom/narvii/videotemplate/Template;->fps:I

    .line 275
    .line 276
    .line 277
    invoke-static {p1, p2, p3, v2, p0}, Lcom/narvii/videotemplate/VideoTemplateJni;->start([Ljava/lang/String;[Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;Ljava/lang/String;II)V

    .line 278
    return-void

    .line 279
    .line 280
    :catchall_0
    sget p1, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_WATERMARK:I

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, p1}, Lcom/narvii/videotemplate/VideoTemplateManager;->onError(I)V

    .line 284
    return-void
.end method

.method private static final startCompile$lambda$1(Lcom/narvii/videotemplate/VideoTemplateManager;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "template"

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 24
    move-object v1, v2

    .line 25
    .line 26
    :cond_0
    iget-object v1, v1, Lcom/narvii/videotemplate/Template;->backgroundMusic:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->templateMusicFile:Ljava/io/File;

    .line 29
    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    .line 33
    const-string/jumbo p0, "templateMusicFile"

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v2, p0

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/narvii/util/FileUtils;->moveFromAssetsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 42
    return-void
.end method

.method private static final startCompile$lambda$4(Ljava/util/List;Lcom/narvii/videotemplate/VideoTemplateManager;)V
    .locals 8

    .line 1
    .line 2
    const-string v0, "$inputMediaList"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "this$0"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast p0, Ljava/lang/Iterable;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 21
    move-result v2

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v3

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    check-cast v3, Lw7/u;

    .line 41
    .line 42
    iget-object v4, p1, Lcom/narvii/videotemplate/VideoTemplateManager;->photo:Lcom/narvii/photos/PhotoManager;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lw7/u;->c()Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    check-cast v3, Lcom/narvii/model/Media;

    .line 49
    .line 50
    iget-object v3, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v3}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    invoke-static {p0, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 68
    move-result v1

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v1

    .line 80
    const/4 v3, 0x0

    .line 81
    .line 82
    if-eqz v1, :cond_8

    .line 83
    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    check-cast v1, Lw7/u;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lw7/u;->d()Ljava/lang/Object;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    check-cast v4, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lw7/u;->c()Ljava/lang/Object;

    .line 98
    move-result-object v5

    .line 99
    .line 100
    check-cast v5, Lcom/narvii/model/Media;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Lcom/narvii/model/Media;->isVideo()Z

    .line 104
    move-result v5

    .line 105
    .line 106
    if-eqz v5, :cond_1

    .line 107
    const/4 v3, 0x3

    .line 108
    goto :goto_3

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-virtual {v1}, Lw7/u;->c()Ljava/lang/Object;

    .line 112
    move-result-object v5

    .line 113
    .line 114
    check-cast v5, Lcom/narvii/model/Media;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Lcom/narvii/model/Media;->isImage()Z

    .line 118
    move-result v5

    .line 119
    const/4 v6, -0x1

    .line 120
    .line 121
    if-eqz v5, :cond_7

    .line 122
    .line 123
    iget-object v5, p1, Lcom/narvii/videotemplate/VideoTemplateManager;->photo:Lcom/narvii/photos/PhotoManager;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lw7/u;->c()Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    check-cast v1, Lcom/narvii/model/Media;

    .line 130
    .line 131
    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    .line 142
    invoke-static {v1}, Lcom/narvii/util/Utils;->getImageType(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    if-eqz v1, :cond_7

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 149
    move-result v5

    .line 150
    .line 151
    .line 152
    const v7, 0x18fc4

    .line 153
    .line 154
    if-eq v5, v7, :cond_5

    .line 155
    .line 156
    .line 157
    const v7, 0x19be1

    .line 158
    .line 159
    if-eq v5, v7, :cond_3

    .line 160
    .line 161
    .line 162
    const v7, 0x1b229

    .line 163
    .line 164
    if-eq v5, v7, :cond_2

    .line 165
    goto :goto_2

    .line 166
    .line 167
    :cond_2
    const-string v5, "png"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result v1

    .line 172
    .line 173
    if-eqz v1, :cond_7

    .line 174
    goto :goto_3

    .line 175
    .line 176
    :cond_3
    const-string v3, "jpg"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v1

    .line 181
    .line 182
    if-nez v1, :cond_4

    .line 183
    goto :goto_2

    .line 184
    :cond_4
    const/4 v3, 0x1

    .line 185
    goto :goto_3

    .line 186
    .line 187
    :cond_5
    const-string v3, "gif"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v1

    .line 192
    .line 193
    if-nez v1, :cond_6

    .line 194
    goto :goto_2

    .line 195
    :cond_6
    const/4 v3, 0x2

    .line 196
    goto :goto_3

    .line 197
    :cond_7
    :goto_2
    move v3, v6

    .line 198
    .line 199
    :goto_3
    iput v3, v4, Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;->inputType:I

    .line 200
    .line 201
    .line 202
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 203
    goto :goto_1

    .line 204
    .line 205
    :cond_8
    new-array p0, v3, [Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 209
    move-result-object p0

    .line 210
    .line 211
    check-cast p0, [Ljava/lang/String;

    .line 212
    .line 213
    new-array v0, v3, [Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 214
    .line 215
    .line 216
    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    check-cast v0, [Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;

    .line 220
    .line 221
    iget-object v1, p1, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 225
    move-result-object v1

    .line 226
    .line 227
    iget-object v2, p1, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    .line 228
    const/4 v3, 0x0

    .line 229
    .line 230
    .line 231
    const-string/jumbo v4, "template"

    .line 232
    .line 233
    if-nez v2, :cond_9

    .line 234
    .line 235
    .line 236
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 237
    move-object v2, v3

    .line 238
    .line 239
    :cond_9
    iget v2, v2, Lcom/narvii/videotemplate/Template;->outputFrameCount:I

    .line 240
    .line 241
    iget-object p1, p1, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    .line 242
    .line 243
    if-nez p1, :cond_a

    .line 244
    .line 245
    .line 246
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 247
    goto :goto_4

    .line 248
    :cond_a
    move-object v3, p1

    .line 249
    .line 250
    :goto_4
    iget p1, v3, Lcom/narvii/videotemplate/Template;->fps:I

    .line 251
    .line 252
    .line 253
    invoke-static {p0, v0, v1, v2, p1}, Lcom/narvii/videotemplate/VideoTemplateJni;->start([Ljava/lang/String;[Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;Ljava/lang/String;II)V

    .line 254
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->stop()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkLogoFile:Ljava/io/File;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkLogoFile:Ljava/io/File;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->aminoLogoFile:Ljava/io/File;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->aminoLogoFile:Ljava/io/File;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkCreatorFile:Ljava/io/File;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkCreatorFile:Ljava/io/File;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    sget v1, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_ABORT:I

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onError(I)V

    .line 65
    :cond_4
    return-void
.end method

.method public final create(Lcom/narvii/scene/model/TemplateConfig;Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;)V
    .locals 3
    .param p1    # Lcom/narvii/scene/model/TemplateConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    .line 1
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/narvii/scene/model/TemplateConfig;->folder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/template.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "open(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/narvii/videotemplate/Template;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/videotemplate/Template;

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 4
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    iget-boolean p1, p1, Lcom/narvii/scene/model/TemplateConfig;->isWatermark:Z

    invoke-virtual {p0, v1, p1, p2}, Lcom/narvii/videotemplate/VideoTemplateManager;->create(Lcom/narvii/videotemplate/Template;ZLcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;)V

    return-void
.end method

.method public final create(Lcom/narvii/videotemplate/Template;ZLcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;)V
    .locals 5
    .param p1    # Lcom/narvii/videotemplate/Template;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->managerAlive:Z

    iput-object p3, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    .line 5
    iget-object p3, p1, Lcom/narvii/videotemplate/Template;->segments:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/videotemplate/TemplateSegment;

    .line 6
    iget-object v2, v1, Lcom/narvii/videotemplate/TemplateSegment;->shader:[Ljava/lang/String;

    array-length v2, v2

    iput v2, v1, Lcom/narvii/videotemplate/TemplateSegment;->passCount:I

    .line 7
    iget-object v2, v1, Lcom/narvii/videotemplate/TemplateSegment;->pass2ExtraInputs:[I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    array-length v2, v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput v2, v1, Lcom/narvii/videotemplate/TemplateSegment;->pass2InputCount:I

    iget-object v2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    .line 8
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v4, v1, Lcom/narvii/videotemplate/TemplateSegment;->shader:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->readStringFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/videotemplate/TemplateSegment;->shaderString:Ljava/lang/String;

    .line 9
    iget-object v2, v1, Lcom/narvii/videotemplate/TemplateSegment;->shader:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v0, :cond_0

    iget-object v2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    .line 10
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, v1, Lcom/narvii/videotemplate/TemplateSegment;->shader:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->readStringFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/videotemplate/TemplateSegment;->shaderString2Pass:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_2
    new-instance p3, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "templateMusic.aac"

    invoke-direct {p3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->templateMusicFile:Ljava/io/File;

    .line 12
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->templateMusicFile:Ljava/io/File;

    if-nez p3, :cond_3

    const-string/jumbo p3, "templateMusicFile"

    .line 13
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_3
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_4
    if-nez p2, :cond_5

    .line 14
    iget-object p1, p1, Lcom/narvii/videotemplate/Template;->segments:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/narvii/videotemplate/VideoTemplateJni;->create(Ljava/util/ArrayList;)V

    .line 15
    :cond_5
    invoke-static {p0}, Lcom/narvii/videotemplate/VideoTemplateJni;->setVideoTemplateEventCallback(Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;)V

    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->managerAlive:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 17
    .line 18
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->removeVideoTemplateEventCallback()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->destroy()V

    .line 25
    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public onError(I)V
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_ABORT:I

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->destroy()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkLogoFile:Ljava/io/File;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkLogoFile:Ljava/io/File;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->aminoLogoFile:Ljava/io/File;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->aminoLogoFile:Ljava/io/File;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkCreatorFile:Ljava/io/File;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->watermarkCreatorFile:Ljava/io/File;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 60
    .line 61
    :cond_4
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, p1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onError(I)V

    .line 67
    :cond_5
    return-void
.end method

.method public onFinish()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/videotemplate/VideoTemplateManager;->doMix()V

    .line 4
    return-void
.end method

.method public onProgress(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onProgress(F)V

    .line 8
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "intent"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_5

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    sparse-switch v0, :sswitch_data_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :sswitch_0
    const-string v0, "com.narvii.amino.VIDEO_TEMPLATE_COMPILE_PROGRESS"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    .line 37
    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    const-string v0, "com.narvii.videotemplate.progress"

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    .line 45
    move-result p2

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, p2}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onProgress(F)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :sswitch_1
    const-string p2, "com.narvii.amino.VIDEO_TEMPLATE_COMPILE_FINISH"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result p1

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/narvii/videotemplate/VideoTemplateManager;->doMix()V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :sswitch_2
    const-string p2, "com.narvii.amino.VIDEO_TEMPLATE_PROCESS_FINISH"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result p1

    .line 71
    .line 72
    if-nez p1, :cond_2

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_2
    iput-boolean v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :sswitch_3
    const-string v0, "com.narvii.amino.VIDEO_TEMPLATE_COMPILE_ERROR"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result p1

    .line 83
    .line 84
    if-nez p1, :cond_3

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_3
    iput-boolean v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    .line 88
    .line 89
    const-string p1, "com.narvii.videotemplate.errorType"

    .line 90
    .line 91
    sget v0, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_NONE:I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 95
    move-result p1

    .line 96
    .line 97
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 101
    move-result p2

    .line 102
    .line 103
    if-eqz p2, :cond_4

    .line 104
    .line 105
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->tempOutVideoFile:Ljava/io/File;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 109
    .line 110
    :cond_4
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->callback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    .line 111
    .line 112
    if-eqz p2, :cond_5

    .line 113
    .line 114
    .line 115
    invoke-interface {p2, p1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onError(I)V

    .line 116
    :cond_5
    :goto_0
    return-void

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    :sswitch_data_0
    .sparse-switch
        -0x70e3abab -> :sswitch_3
        0x43e940a -> :sswitch_2
        0x55a253c6 -> :sswitch_1
        0x62d884a0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final printWatermark(Lcom/narvii/model/User;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "user"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "orgVideoPath"

    .line 9
    .line 10
    .line 11
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "outputPath"

    .line 14
    .line 15
    .line 16
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->managerAlive:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    iput-object p4, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->outputPath:Ljava/lang/String;

    .line 24
    .line 25
    new-instance p4, Ljava/io/File;

    .line 26
    .line 27
    .line 28
    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    iput-object p4, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->templateMusicFile:Ljava/io/File;

    .line 31
    .line 32
    iget-object p4, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->ctx:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    const-string v0, "community"

    .line 35
    .line 36
    .line 37
    invoke-interface {p4, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object p4

    .line 39
    .line 40
    check-cast p4, Lcom/narvii/community/CommunityService;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/narvii/videotemplate/VideoTemplateManager;->generateWatermarkLogo(Lcom/narvii/model/User;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;

    .line 48
    move-result-object p4

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/narvii/videotemplate/VideoTemplateManager;->generateCreatorInfoPage(Lcom/narvii/model/User;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/videotemplate/a;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0, p4, p1, p3}, Lcom/narvii/videotemplate/a;-><init>(Lcom/narvii/videotemplate/VideoTemplateManager;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 63
    const/4 p1, 0x1

    .line 64
    .line 65
    iput-boolean p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    .line 66
    return-void
.end method

.method public final startCompile(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lw7/u<",
            "+",
            "Lcom/narvii/model/Media;",
            "+",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "inputMediaList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "outputPath"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->managerAlive:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iput-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->outputPath:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->template:Lcom/narvii/videotemplate/Template;

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    .line 24
    const-string/jumbo p2, "template"

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 28
    const/4 p2, 0x0

    .line 29
    .line 30
    :cond_1
    iget-object p2, p2, Lcom/narvii/videotemplate/Template;->backgroundMusic:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/videotemplate/b;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/narvii/videotemplate/b;-><init>(Lcom/narvii/videotemplate/VideoTemplateManager;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    :cond_2
    iget-object p2, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 45
    .line 46
    new-instance v0, Lcom/narvii/videotemplate/c;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p1, p0}, Lcom/narvii/videotemplate/c;-><init>(Ljava/util/List;Lcom/narvii/videotemplate/VideoTemplateManager;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 53
    const/4 p1, 0x1

    .line 54
    .line 55
    iput-boolean p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager;->taskRunning:Z

    .line 56
    return-void
.end method
