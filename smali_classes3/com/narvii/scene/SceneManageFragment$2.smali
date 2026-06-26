.class Lcom/narvii/scene/SceneManageFragment$2;
.super Ljava/lang/Object;
.source "SceneManageFragment.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/SceneManageFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/narvii/model/Media;",
        "Landroid/os/Bundle;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/SceneManageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/SceneManageFragment;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/narvii/scene/SceneManageFragment$2;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 213
    check-cast p1, Lcom/narvii/model/Media;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/SceneManageFragment$2;->invoke(Lcom/narvii/model/Media;Landroid/os/Bundle;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lcom/narvii/model/Media;Landroid/os/Bundle;)Lkotlin/Unit;
    .locals 7

    .line 216
    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$2;->this$0:Lcom/narvii/scene/SceneManageFragment;

    invoke-static {v0}, Lcom/narvii/scene/SceneManageFragment;->access$400(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/helper/SceneListHelper;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/narvii/scene/SceneManageFragment$2;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 217
    invoke-static {v0}, Lcom/narvii/scene/SceneManageFragment;->access$300(Lcom/narvii/scene/SceneManageFragment;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object v3

    iget p1, p1, Lcom/narvii/model/Media;->type:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object p1, p0, Lcom/narvii/scene/SceneManageFragment$2;->this$0:Lcom/narvii/scene/SceneManageFragment;

    .line 219
    invoke-virtual {p1}, Lcom/narvii/scene/SceneManageFragment;->getDraftAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v6, p2

    .line 216
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/scene/helper/SceneListHelper;->launchSceneEditor(Ljava/util/List;Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    return-object p1
.end method
