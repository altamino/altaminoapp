.class final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->access$getDraftFile(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 3
    new-instance v2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2$1$1;

    invoke-direct {v2, v1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2$1$1;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V

    invoke-virtual {v0, v2}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->setOnDownloadListener(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$OnDownloadListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$downLoadImageHelper$2;->invoke()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    move-result-object v0

    return-object v0
.end method
