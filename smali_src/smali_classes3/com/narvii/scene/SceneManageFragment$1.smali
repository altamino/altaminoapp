.class Lcom/narvii/scene/SceneManageFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneManageFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/SceneManageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneManageFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$1;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$1;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$1;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/scene/SceneManageFragment;->access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->createEmptyScene()Lcom/narvii/scene/model/SceneInfo;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/scene/SceneWrapper;->create(Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/SceneWrapper;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment$1;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/narvii/scene/SceneManageFragment;->access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getCount()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$1;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$200(Lcom/narvii/scene/SceneManageFragment;)V

    .line 39
    return-void
.end method
