.class final Lcom/narvii/scene/BaseSceneListFragment$showInvalidDialog$1;
.super Ljava/lang/Object;
.source "BaseSceneListFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/BaseSceneListFragment;->showInvalidDialog()V
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

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$showInvalidDialog$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 934
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$showInvalidDialog$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 935
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$showInvalidDialog$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
