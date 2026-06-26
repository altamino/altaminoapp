.class final Lcom/narvii/scene/template/SceneTemplateHelper$fileLoader$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SceneTemplateHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/SceneTemplateHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$fileLoader$2;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;
    .locals 4

    .line 52
    new-instance v0, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$fileLoader$2;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-static {v1}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$getCtx$p(Lcom/narvii/scene/template/SceneTemplateHelper;)Lcom/narvii/app/NVContext;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/scene/template/SceneTemplateHelper$fileLoader$2;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-virtual {v3}, Lcom/narvii/scene/template/SceneTemplateHelper;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;-><init>(Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateHelper$fileLoader$2;->invoke()Lcom/narvii/scene/template/SceneTemplateHelper$SceneFileLoader;

    move-result-object v0

    return-object v0
.end method
