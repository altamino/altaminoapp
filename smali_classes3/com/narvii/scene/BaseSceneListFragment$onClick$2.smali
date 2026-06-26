.class public final Lcom/narvii/scene/BaseSceneListFragment$onClick$2;
.super Lcom/narvii/scene/dialog/VideoAdvanceDialog;
.source "BaseSceneListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/BaseSceneListFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/BaseSceneListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/BaseSceneListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 524
    iput-object p1, p0, Lcom/narvii/scene/BaseSceneListFragment$onClick$2;->this$0:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/scene/dialog/VideoAdvanceDialog;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
