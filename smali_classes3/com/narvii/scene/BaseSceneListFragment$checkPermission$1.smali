.class final Lcom/narvii/scene/BaseSceneListFragment$checkPermission$1;
.super Ljava/lang/Object;
.source "BaseSceneListFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/BaseSceneListFragment;->checkPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/BaseSceneListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$checkPermission$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 963
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$checkPermission$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/scene/BaseSceneListFragment;->access$setPermissionDenied$p(Lcom/narvii/scene/BaseSceneListFragment;Z)V

    .line 964
    iget-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$checkPermission$1;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {p1}, Lcom/narvii/scene/BaseSceneListFragment;->access$updateSceneDraft(Lcom/narvii/scene/BaseSceneListFragment;)V

    return-void
.end method
