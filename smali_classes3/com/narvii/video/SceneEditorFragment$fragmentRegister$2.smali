.class final Lcom/narvii/video/SceneEditorFragment$fragmentRegister$2;
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
        "Lcom/narvii/app/FragmentRegister;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$fragmentRegister$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/app/FragmentRegister;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$fragmentRegister$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    const-string v1, "fragmentRegister"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/FragmentRegister;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/narvii/video/SceneEditorFragment$fragmentRegister$2;->invoke()Lcom/narvii/app/FragmentRegister;

    move-result-object v0

    return-object v0
.end method
