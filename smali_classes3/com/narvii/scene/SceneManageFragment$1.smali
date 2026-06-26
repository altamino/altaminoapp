.class Lcom/narvii/scene/SceneManageFragment$1;
.super Ljava/lang/Object;
.source "SceneManageFragment.java"

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

    .line 167
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$1;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 171
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$1;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$1;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {v0}, Lcom/narvii/scene/SceneManageFragment;->access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->createEmptyScene()Lcom/narvii/scene/model/SceneInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/scene/SceneWrapper;->create(Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/SceneWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment$1;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {v1}, Lcom/narvii/scene/SceneManageFragment;->access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 172
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$1;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$200(Lcom/narvii/scene/SceneManageFragment;)V

    return-void
.end method
