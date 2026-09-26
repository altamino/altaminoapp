.class Lcom/narvii/master/CreateCommunityFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CreateCommunityFragment$1;->this$0:Lcom/narvii/master/CreateCommunityFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/CreateCommunityFragment$1;->val$view:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    new-instance p1, Landroid/transition/TransitionManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Landroid/transition/TransitionManager;-><init>()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/master/CreateCommunityFragment$1;->this$0:Lcom/narvii/master/CreateCommunityFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const/high16 v1, 0x7f150000

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/master/CreateCommunityFragment$1;->val$view:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    const v2, 0x7f0a039a

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Landroid/view/ViewGroup;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/master/CreateCommunityFragment$1;->this$0:Lcom/narvii/master/CreateCommunityFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    const v3, 0x7f0d0054

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v3, v2}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    iget-object v3, p0, Lcom/narvii/master/CreateCommunityFragment$1;->this$0:Lcom/narvii/master/CreateCommunityFragment;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    const v4, 0x7f0d0055

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v4, v3}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2, v0}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/master/CreateCommunityFragment$1;->this$0:Lcom/narvii/master/CreateCommunityFragment;

    .line 67
    .line 68
    iget p1, p1, Lcom/narvii/master/CreateCommunityFragment;->index:I

    .line 69
    .line 70
    rem-int/lit8 p1, p1, 0x2

    .line 71
    .line 72
    if-nez p1, :cond_0

    .line 73
    move-object v2, v1

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-static {v2}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;)V

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/master/CreateCommunityFragment$1;->this$0:Lcom/narvii/master/CreateCommunityFragment;

    .line 79
    .line 80
    iget v0, p1, Lcom/narvii/master/CreateCommunityFragment;->index:I

    .line 81
    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    iput v0, p1, Lcom/narvii/master/CreateCommunityFragment;->index:I

    .line 85
    return-void
.end method
