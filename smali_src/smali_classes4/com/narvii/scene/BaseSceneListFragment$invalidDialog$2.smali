.class final Lcom/narvii/scene/BaseSceneListFragment$invalidDialog$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/BaseSceneListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/util/dialog/AlertDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/BaseSceneListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$invalidDialog$2;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/dialog/AlertDialog;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v1, p0, Lcom/narvii/scene/BaseSceneListFragment$invalidDialog$2;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/scene/BaseSceneListFragment$invalidDialog$2;->invoke()Lcom/narvii/util/dialog/AlertDialog;

    move-result-object v0

    return-object v0
.end method
