.class public final Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "SceneTemplateHelper.kt"

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
.field final synthetic $downloadMediaList$inlined:Ljava/util/List;

.field final synthetic $it$inlined:Lkotlin/Pair;

.field final synthetic $medias$inlined:Ljava/util/List;

.field final synthetic $options$inlined:Landroid/graphics/BitmapFactory$Options;

.field final synthetic $outputPath$inlined:Ljava/lang/String;

.field final synthetic $path$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateHelper;


# direct methods
.method constructor <init>(Landroid/graphics/BitmapFactory$Options;Lkotlin/Pair;Ljava/lang/String;Lcom/narvii/scene/template/SceneTemplateHelper;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->$options$inlined:Landroid/graphics/BitmapFactory$Options;

    iput-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->$it$inlined:Lkotlin/Pair;

    iput-object p3, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->$outputPath$inlined:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    iput-object p5, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->$path$inlined:Ljava/lang/String;

    iput-object p6, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->$downloadMediaList$inlined:Ljava/util/List;

    iput-object p7, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->$medias$inlined:Ljava/util/List;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapCropped(Landroid/net/Uri;IIII)V
    .locals 1

    const-string p2, "resultUri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->getCropMediaCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lcom/narvii/scene/template/SceneTemplateHelper;->setCropMediaCount(I)V

    .line 126
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->$it$inlined:Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    const/16 p2, 0x64

    .line 127
    iput p2, p1, Lcom/narvii/model/Media;->type:I

    .line 128
    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {p2}, Lcom/narvii/scene/template/SceneTemplateHelper;->getPhoto()Lcom/narvii/photos/PhotoManager;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->$outputPath$inlined:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 129
    iput p4, p1, Lcom/narvii/model/Media;->width:I

    .line 130
    iput p5, p1, Lcom/narvii/model/Media;->height:I

    .line 131
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->getCropMediaCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->getDownloadMediaCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->$downloadMediaList$inlined:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$downloadMediaList(Lcom/narvii/scene/template/SceneTemplateHelper;Ljava/util/List;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-static {p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$getVideoTemplateManager$p(Lcom/narvii/scene/template/SceneTemplateHelper;)Lcom/narvii/videotemplate/VideoTemplateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->$medias$inlined:Ljava/util/List;

    iget-object p3, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-static {p3}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$getOutputPath(Lcom/narvii/scene/template/SceneTemplateHelper;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/narvii/videotemplate/VideoTemplateManager;->startCompile(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCropFailure(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-static {p1}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$getCtx$p(Lcom/narvii/scene/template/SceneTemplateHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$string;->media_could_not_processed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->getOnCompileListener()Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$startCompile$$inlined$forEach$lambda$1;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;->onCompileFail(Lcom/narvii/scene/template/SceneTemplateHelper;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
