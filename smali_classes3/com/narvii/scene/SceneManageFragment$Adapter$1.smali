.class Lcom/narvii/scene/SceneManageFragment$Adapter$1;
.super Ljava/lang/Object;
.source "SceneManageFragment.java"

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

    .line 313
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$1;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$1;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iput p3, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 316
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$1;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$1;->val$sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iget v1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$1;->val$position:I

    invoke-static {p1, v0, v1}, Lcom/narvii/scene/SceneManageFragment$Adapter;->access$600(Lcom/narvii/scene/SceneManageFragment$Adapter;Lcom/narvii/scene/SceneWrapper;I)V

    return-void
.end method
