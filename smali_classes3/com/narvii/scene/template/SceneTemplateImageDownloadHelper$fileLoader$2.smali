.class final Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$fileLoader$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SceneTemplateImageDownloadHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$fileLoader$2;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;
    .locals 4

    .line 23
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$fileLoader$2;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    invoke-static {v1}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->access$getCtx$p(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;)Lcom/narvii/app/NVContext;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$fileLoader$2;->this$0:Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;

    invoke-virtual {v3}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;-><init>(Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$fileLoader$2;->invoke()Lcom/narvii/scene/template/SceneTemplateImageDownloadHelper$SceneFileLoader;

    move-result-object v0

    return-object v0
.end method
