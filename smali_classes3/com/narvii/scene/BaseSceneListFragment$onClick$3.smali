.class final Lcom/narvii/scene/BaseSceneListFragment$onClick$3;
.super Ljava/lang/Object;
.source "BaseSceneListFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/BaseSceneListFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/BaseSceneListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$onClick$3;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 530
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$onClick$3;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/scene/BaseSceneListFragment;->access$setVideoAdvanceDialog$p(Lcom/narvii/scene/BaseSceneListFragment;Lcom/narvii/scene/dialog/VideoAdvanceDialog;)V

    return-void
.end method
