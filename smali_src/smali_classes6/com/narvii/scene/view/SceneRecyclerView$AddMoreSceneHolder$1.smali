.class Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;-><init>(Lcom/narvii/scene/view/SceneRecyclerView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

.field final synthetic val$this$0:Lcom/narvii/scene/view/SceneRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;Lcom/narvii/scene/view/SceneRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->val$this$0:Lcom/narvii/scene/view/SceneRecyclerView;

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
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$700(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/model/SceneDraft;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$700(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/model/SceneDraft;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->createEmptyScene()Lcom/narvii/scene/model/SceneInfo;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/scene/SceneWrapper;->create(Lcom/narvii/scene/model/SceneInfo;)Lcom/narvii/scene/SceneWrapper;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$800(Lcom/narvii/scene/view/SceneRecyclerView;)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$900(Lcom/narvii/scene/view/SceneRecyclerView;)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$1000(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$1000(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder$1;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;

    .line 81
    .line 82
    iget-object v1, v1, Lcom/narvii/scene/view/SceneRecyclerView$AddMoreSceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 90
    move-result v1

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v0, v1}, Lcom/narvii/scene/view/SceneRecyclerView$OnListSizeChangedListener;->onSizeChanged(Ljava/util/List;I)V

    .line 94
    :cond_1
    return-void
.end method
