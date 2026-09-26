.class Lcom/narvii/scene/SceneManageFragment$Adapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneManageFragment$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

.field final synthetic val$position:I

.field final synthetic val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$3;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$3;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$3;->val$position:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$3;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$3;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$3;->val$position:I

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lcom/narvii/scene/SceneManageFragment$Adapter;->access$600(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;I)V

    .line 10
    return-void
.end method
