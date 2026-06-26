.class final Lcom/narvii/video/SceneEditorFragment$progress$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SceneEditorFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SceneEditorFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/util/dialog/ProgressDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$progress$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 2

    .line 82
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment$progress$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v1, Lcom/narvii/video/SceneEditorFragment$progress$2$1;

    invoke-direct {v1, p0}, Lcom/narvii/video/SceneEditorFragment$progress$2$1;-><init>(Lcom/narvii/video/SceneEditorFragment$progress$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment$progress$2;->invoke()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    return-object v0
.end method
