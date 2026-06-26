.class final Lcom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SceneMediaPickerHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/scene/dialog/SceneMediaPickerDialog;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaPickerHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaPickerHelper.kt\ncom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2\n*L\n1#1,122:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/helper/SceneMediaPickerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2;->this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/scene/dialog/SceneMediaPickerDialog;
    .locals 2

    .line 31
    new-instance v0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;

    iget-object v1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2;->this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    invoke-virtual {v1}, Lcom/narvii/scene/helper/SceneMediaPickerHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 32
    iget-object v1, p0, Lcom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2;->this$0:Lcom/narvii/scene/helper/SceneMediaPickerHelper;

    invoke-virtual {v0, v1}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog;->setOnPickerListener(Lcom/narvii/scene/dialog/SceneMediaPickerDialog$OnPickerListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/narvii/scene/helper/SceneMediaPickerHelper$sceneMediaPickerDialog$2;->invoke()Lcom/narvii/scene/dialog/SceneMediaPickerDialog;

    move-result-object v0

    return-object v0
.end method
