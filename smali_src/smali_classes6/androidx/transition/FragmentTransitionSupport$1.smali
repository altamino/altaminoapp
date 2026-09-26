.class Landroidx/transition/FragmentTransitionSupport$1;
.super Landroidx/transition/Transition$EpicenterCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/FragmentTransitionSupport;->p(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/FragmentTransitionSupport;

.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/transition/FragmentTransitionSupport$1;->this$0:Landroidx/transition/FragmentTransitionSupport;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/transition/FragmentTransitionSupport$1;->val$epicenter:Landroid/graphics/Rect;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/transition/Transition$EpicenterCallback;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroidx/transition/Transition;)Landroid/graphics/Rect;
    .locals 0
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/transition/FragmentTransitionSupport$1;->val$epicenter:Landroid/graphics/Rect;

    return-object p1
.end method
