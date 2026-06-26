.class Lcom/narvii/scene/SceneManageFragment$Adapter$2$2;
.super Ljava/lang/Object;
.source "SceneManageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneManageFragment$Adapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/scene/SceneManageFragment$Adapter$2;

.field final synthetic val$s:Lcom/narvii/scene/model/SceneInfo;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneManageFragment$Adapter$2;Lcom/narvii/scene/model/SceneInfo;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2$2;->this$2:Lcom/narvii/scene/SceneManageFragment$Adapter$2;

    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2$2;->val$s:Lcom/narvii/scene/model/SceneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 352
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2$2;->this$2:Lcom/narvii/scene/SceneManageFragment$Adapter$2;

    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2$2;->val$s:Lcom/narvii/scene/model/SceneInfo;

    invoke-virtual {p1, p2}, Lcom/narvii/scene/SceneManageFragment;->onEditQuiz(Lcom/narvii/scene/model/SceneInfo;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 354
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2$2;->this$2:Lcom/narvii/scene/SceneManageFragment$Adapter$2;

    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2$2;->val$s:Lcom/narvii/scene/model/SceneInfo;

    invoke-virtual {p1, p2}, Lcom/narvii/scene/SceneManageFragment;->onDeleteQuiz(Lcom/narvii/scene/model/SceneInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
