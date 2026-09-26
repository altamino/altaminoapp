.class public Landroidx/transition/Scene;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnterAction:Ljava/lang/Runnable;

.field private mExitAction:Ljava/lang/Runnable;

.field private mLayout:Landroid/view/View;

.field private mLayoutId:I

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/transition/Scene;->mLayoutId:I

    iput-object p1, p0, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/transition/Scene;->mLayoutId:I

    iput-object p1, p0, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/transition/Scene;->mLayout:Landroid/view/View;

    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)Landroidx/transition/Scene;
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroidx/transition/R$id;->transition_current_scene:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroidx/transition/Scene;

    .line 9
    return-object p0
.end method

.method static c(Landroid/view/ViewGroup;Landroidx/transition/Scene;)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/transition/Scene;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget v0, Landroidx/transition/R$id;->transition_current_scene:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/transition/Scene;->b(Landroid/view/ViewGroup;)Landroidx/transition/Scene;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-ne v0, p0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 16
    :cond_0
    return-void
.end method
