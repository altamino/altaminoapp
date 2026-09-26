.class public final Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateHelper;->startCompile(Ljava/util/List;Lcom/narvii/scene/model/TemplateConfig;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $downloadMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw7/u<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $it:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $medias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw7/u<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $outputPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateHelper;Lw7/u;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/scene/template/SceneTemplateHelper;",
            "Lw7/u<",
            "+",
            "Lcom/narvii/model/Media;",
            "+",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lw7/u<",
            "+",
            "Lcom/narvii/model/Media;",
            "+",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Lw7/u<",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->$it:Lw7/u;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->$outputPath:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->$downloadMediaList:Ljava/util/List;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->$medias:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onBitmapCropped(Landroid/net/Uri;IIII)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "resultUri"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->getCropMediaCount()I

    .line 11
    move-result p2

    .line 12
    .line 13
    add-int/lit8 p2, p2, -0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/narvii/scene/template/SceneTemplateHelper;->setCropMediaCount(I)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->$it:Lw7/u;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lw7/u;->c()Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/model/Media;

    .line 25
    .line 26
    const/16 p2, 0x64

    .line 27
    .line 28
    iput p2, p1, Lcom/narvii/model/Media;->type:I

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/narvii/scene/template/SceneTemplateHelper;->getPhoto()Lcom/narvii/photos/PhotoManager;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    new-instance p3, Ljava/io/File;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->$outputPath:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    iput-object p2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 48
    .line 49
    iput p4, p1, Lcom/narvii/model/Media;->width:I

    .line 50
    .line 51
    iput p5, p1, Lcom/narvii/model/Media;->height:I

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->getCropMediaCount()I

    .line 57
    move-result p1

    .line 58
    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->getDownloadMediaCount()I

    .line 65
    move-result p1

    .line 66
    .line 67
    if-lez p1, :cond_0

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 70
    .line 71
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->$downloadMediaList:Ljava/util/List;

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p2}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$downloadMediaList(Lcom/narvii/scene/template/SceneTemplateHelper;Ljava/util/List;)V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$getVideoTemplateManager(Lcom/narvii/scene/template/SceneTemplateHelper;)Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->$medias:Ljava/util/List;

    .line 84
    .line 85
    iget-object p3, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 86
    .line 87
    .line 88
    invoke-static {p3}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$getOutputPath(Lcom/narvii/scene/template/SceneTemplateHelper;)Ljava/lang/String;

    .line 89
    move-result-object p3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2, p3}, Lcom/narvii/videotemplate/VideoTemplateManager;->startCompile(Ljava/util/List;Ljava/lang/String;)V

    .line 93
    :cond_1
    :goto_0
    return-void
.end method

.method public onCropFailure(Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "t"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$getCtx$p(Lcom/narvii/scene/template/SceneTemplateHelper;)Lcom/narvii/app/NVContext;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    sget v0, Lcom/narvii/mediaeditor/R$string;->media_could_not_processed:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string v0, "getString(...)"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getOnCompileListener()Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$1$1$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileFail(Lcom/narvii/scene/template/SceneTemplateHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    :cond_0
    return-void
.end method
