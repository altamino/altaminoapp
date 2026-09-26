.class Lcom/narvii/scene/SceneManageFragment$Adapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneManageFragment$Adapter;->deleteCurrentScene(Lcom/narvii/scene/SceneWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

.field final synthetic val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$200(Lcom/narvii/scene/SceneManageFragment;)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$100(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    move-result p1

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/scene/SceneManageFragment;->access$000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneDraft;

    .line 59
    move-result-object p1

    .line 60
    const/4 v0, 0x0

    .line 61
    .line 62
    iput v0, p1, Lcom/narvii/scene/model/SceneDraft;->serialNo:I

    .line 63
    .line 64
    :cond_0
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$5;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lcom/narvii/scene/SceneManageFragment;->access$1000(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/video/services/VideoManager;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/narvii/video/services/SceneMediaProcessor;->removeScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;)V

    .line 80
    return-void
.end method
