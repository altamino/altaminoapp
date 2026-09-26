.class final Lcom/narvii/scene/template/SceneTemplateHelper$videoTemplateManager$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


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
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/videotemplate/VideoTemplateManager;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneTemplateHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneTemplateHelper.kt\ncom/narvii/scene/template/SceneTemplateHelper$videoTemplateManager$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,389:1\n1#2:390\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/SceneTemplateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$videoTemplateManager$2;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/videotemplate/VideoTemplateManager;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/narvii/videotemplate/VideoTemplateManager;

    iget-object v1, p0, Lcom/narvii/scene/template/SceneTemplateHelper$videoTemplateManager$2;->this$0:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-static {v1}, Lcom/narvii/scene/template/SceneTemplateHelper;->access$getCtx$p(Lcom/narvii/scene/template/SceneTemplateHelper;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateManager;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->cancel()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/scene/template/SceneTemplateHelper$videoTemplateManager$2;->invoke()Lcom/narvii/videotemplate/VideoTemplateManager;

    move-result-object v0

    return-object v0
.end method
