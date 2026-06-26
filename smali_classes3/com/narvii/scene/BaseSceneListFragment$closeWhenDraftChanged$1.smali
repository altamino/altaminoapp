.class final Lcom/narvii/scene/BaseSceneListFragment$closeWhenDraftChanged$1;
.super Ljava/lang/Object;
.source "BaseSceneListFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/BaseSceneListFragment;->closeWhenDraftChanged()V
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

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$closeWhenDraftChanged$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$closeWhenDraftChanged$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 382
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$closeWhenDraftChanged$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 383
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$closeWhenDraftChanged$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {p1}, Lcom/narvii/scene/BaseSceneListFragment;->access$logEditClose(Lcom/narvii/scene/BaseSceneListFragment;)V

    :goto_0
    return-void
.end method
