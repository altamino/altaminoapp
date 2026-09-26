.class Lcom/narvii/scene/SceneManageFragment$Adapter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2$1;->this$2:Lcom/narvii/scene/SceneManageFragment$Adapter$2;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2$1;->val$s:Lcom/narvii/scene/model/SceneInfo;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2$1;->this$2:Lcom/narvii/scene/SceneManageFragment$Adapter$2;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2$1;->val$s:Lcom/narvii/scene/model/SceneInfo;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/scene/SceneManageFragment;->onEditPoll(Lcom/narvii/scene/model/SceneInfo;)V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x1

    .line 16
    .line 17
    if-ne p2, p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2$1;->this$2:Lcom/narvii/scene/SceneManageFragment$Adapter$2;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter$2;->this$1:Lcom/narvii/scene/SceneManageFragment$Adapter;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/scene/SceneManageFragment$Adapter;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/scene/SceneManageFragment$Adapter$2$1;->val$s:Lcom/narvii/scene/model/SceneInfo;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/narvii/scene/SceneManageFragment;->onDeletePoll(Lcom/narvii/scene/model/SceneInfo;)V

    .line 29
    :cond_1
    :goto_0
    return-void
.end method
