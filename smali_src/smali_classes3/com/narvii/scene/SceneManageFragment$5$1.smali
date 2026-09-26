.class Lcom/narvii/scene/SceneManageFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$5$1;->this$1:Lcom/narvii/scene/SceneManageFragment$5;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$5$1;->val$sw:Lcom/narvii/scene/SceneWrapper;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$5$1;->this$1:Lcom/narvii/scene/SceneManageFragment$5;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/scene/SceneManageFragment$5;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/scene/SceneManageFragment;->access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment$5$1;->val$sw:Lcom/narvii/scene/SceneWrapper;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/scene/SceneManageFragment$5$1;->this$1:Lcom/narvii/scene/SceneManageFragment$5;

    .line 13
    .line 14
    iget v2, v2, Lcom/narvii/scene/SceneManageFragment$5;->val$position:I

    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/NVArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$5$1;->this$1:Lcom/narvii/scene/SceneManageFragment$5;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/narvii/scene/SceneManageFragment$5;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/scene/SceneManageFragment;->access$200(Lcom/narvii/scene/SceneManageFragment;)V

    .line 27
    return-void
.end method
