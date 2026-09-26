.class public final Lcom/narvii/scene/template/CropTemplateImageFragment$crop$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/CropTemplateImageFragment;->crop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $themeImage:Lcom/narvii/theme/ThemeImage;

.field final synthetic this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/CropTemplateImageFragment;Lcom/narvii/theme/ThemeImage;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$crop$1$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$crop$1$1;->$themeImage:Lcom/narvii/theme/ThemeImage;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onBitmapCropped(Landroid/net/Uri;IIII)V
    .locals 0
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
    new-instance p1, Lcom/narvii/model/Media;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Lcom/narvii/model/Media;-><init>()V

    .line 11
    .line 12
    const/16 p2, 0x64

    .line 13
    .line 14
    iput p2, p1, Lcom/narvii/model/Media;->type:I

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$crop$1$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$getOutputUrl$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    iput-object p2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 23
    .line 24
    iput p4, p1, Lcom/narvii/model/Media;->width:I

    .line 25
    .line 26
    iput p5, p1, Lcom/narvii/model/Media;->height:I

    .line 27
    .line 28
    new-instance p2, Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 32
    .line 33
    const-string p3, "previewMedia"

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$crop$1$1;->$themeImage:Lcom/narvii/theme/ThemeImage;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    const-string/jumbo p3, "themeImage"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$crop$1$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$getImageId$p(Lcom/narvii/scene/template/CropTemplateImageFragment;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    const-string p3, "imageId"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$crop$1$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    .line 66
    const/4 p3, -0x1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p3, p2}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$crop$1$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 75
    return-void
.end method

.method public onCropFailure(Ljava/lang/Throwable;)V
    .locals 1
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
    iget-object p1, p0, Lcom/narvii/scene/template/CropTemplateImageFragment$crop$1$1;->this$0:Lcom/narvii/scene/template/CropTemplateImageFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/scene/template/CropTemplateImageFragment;->access$showError(Lcom/narvii/scene/template/CropTemplateImageFragment;)V

    .line 12
    return-void
.end method
