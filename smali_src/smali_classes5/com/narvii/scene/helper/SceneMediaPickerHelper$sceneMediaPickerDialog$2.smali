.class final Lcom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/helper/SceneMediaPickerHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/media/MediaPickerFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/scene/dialog/SceneMediaPickerDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/helper/SceneMediaPickerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2;->this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/scene/dialog/SceneMediaPickerDialog;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;

    iget-object v1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2;->this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    invoke-virtual {v1}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2;->this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    .line 3
    invoke-virtual {v0, v1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->setOnPickerListener(Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2;->invoke()Lcom/narvii/scene/dialog/SceneMediaPickerDialog;

    move-result-object v0

    return-object v0
.end method
