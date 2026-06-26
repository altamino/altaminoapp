.class Lcom/narvii/master/CreateCommunityFragment$1;
.super Ljava/lang/Object;
.source "CreateCommunityFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CreateCommunityFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CreateCommunityFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/master/CreateCommunityFragment;Landroid/view/View;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/master/CreateCommunityFragment$1;->this$0:Lcom/narvii/master/CreateCommunityFragment;

    iput-object p2, p0, Lcom/narvii/master/CreateCommunityFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 42
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    .line 43
    new-instance p1, Landroid/transition/TransitionManager;

    invoke-direct {p1}, Landroid/transition/TransitionManager;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/narvii/master/CreateCommunityFragment$1;->this$0:Lcom/narvii/master/CreateCommunityFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    const/high16 v1, 0x7f120000

    .line 45
    invoke-virtual {v0, v1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/narvii/master/CreateCommunityFragment$1;->val$view:Landroid/view/View;

    const v2, 0x7f0902ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0b0050

    .line 48
    iget-object v3, p0, Lcom/narvii/master/CreateCommunityFragment$1;->this$0:Lcom/narvii/master/CreateCommunityFragment;

    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v2

    const v3, 0x7f0b0051

    .line 49
    iget-object v4, p0, Lcom/narvii/master/CreateCommunityFragment$1;->this$0:Lcom/narvii/master/CreateCommunityFragment;

    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v1

    .line 51
    invoke-virtual {p1, v2, v0}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 54
    iget-object p1, p0, Lcom/narvii/master/CreateCommunityFragment$1;->this$0:Lcom/narvii/master/CreateCommunityFragment;

    iget p1, p1, Lcom/narvii/master/CreateCommunityFragment;->index:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;)V

    .line 55
    iget-object p1, p0, Lcom/narvii/master/CreateCommunityFragment$1;->this$0:Lcom/narvii/master/CreateCommunityFragment;

    iget v0, p1, Lcom/narvii/master/CreateCommunityFragment;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/narvii/master/CreateCommunityFragment;->index:I

    :cond_1
    return-void
.end method
