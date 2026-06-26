.class final Lcom/narvii/scene/dialog/SceneMediaPickerDialog$photo$2;
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
        "Lcom/narvii/photos/PhotoManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $ctx:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$photo$2;->$ctx:Lcom/narvii/app/NVContext;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/photos/PhotoManager;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$photo$2;->$ctx:Lcom/narvii/app/NVContext;

    const-string v1, "photo"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/narvii/scene/dialog/SceneMediaPickerDialog$photo$2;->invoke()Lcom/narvii/photos/PhotoManager;

    move-result-object v0

    return-object v0
.end method
