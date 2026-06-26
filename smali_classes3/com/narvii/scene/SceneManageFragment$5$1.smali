.class Lcom/narvii/scene/SceneManageFragment$5$1;
.super Ljava/lang/Object;
.source "SceneManageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneManageFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/SceneManageFragment$5;

.field final synthetic val$sw:Lcom/narvii/scene/SceneWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneManageFragment$5;Lcom/narvii/scene/SceneWrapper;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$5$1;->this$1:Lcom/narvii/scene/SceneManageFragment$5;

    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$5$1;->val$sw:Lcom/narvii/scene/SceneWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$5$1;->this$1:Lcom/narvii/scene/SceneManageFragment$5;

    iget-object v0, v0, Lcom/narvii/scene/SceneManageFragment$5;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {v0}, Lcom/narvii/scene/SceneManageFragment;->access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment$5$1;->val$sw:Lcom/narvii/scene/SceneWrapper;

    iget-object v2, p0, Lcom/narvii/scene/SceneManageFragment$5$1;->this$1:Lcom/narvii/scene/SceneManageFragment$5;

    iget v2, v2, Lcom/narvii/scene/SceneManageFragment$5;->val$position:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/NVArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 517
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$5$1;->this$1:Lcom/narvii/scene/SceneManageFragment$5;

    iget-object v0, v0, Lcom/narvii/scene/SceneManageFragment$5;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {v0}, Lcom/narvii/scene/SceneManageFragment;->access$200(Lcom/narvii/scene/SceneManageFragment;)V

    return-void
.end method
