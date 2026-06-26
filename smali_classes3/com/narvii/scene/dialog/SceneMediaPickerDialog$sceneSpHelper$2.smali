.class final Lcom/narvii/scene/dialog/SceneMediaPickerDialog$sceneSpHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SceneMediaPickerDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/dialog/SceneMediaPickerDialog;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/scene/helper/SceneSpHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $ctx:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$sceneSpHelper$2;->$ctx:Lcom/narvii/app/NVContext;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/scene/helper/SceneSpHelper;
    .locals 2

    .line 39
    new-instance v0, Lcom/narvii/scene/helper/SceneSpHelper;

    iget-object v1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$sceneSpHelper$2;->$ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/scene/helper/SceneSpHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$sceneSpHelper$2;->invoke()Lcom/narvii/scene/helper/SceneSpHelper;

    move-result-object v0

    return-object v0
.end method
