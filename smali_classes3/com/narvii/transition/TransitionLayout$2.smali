.class Lcom/narvii/transition/TransitionLayout$2;
.super Ljava/lang/Object;
.source "TransitionLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/transition/TransitionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/transition/TransitionLayout;


# direct methods
.method constructor <init>(Lcom/narvii/transition/TransitionLayout;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout$2;->this$0:Lcom/narvii/transition/TransitionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/transition/TransitionLayout$2;->this$0:Lcom/narvii/transition/TransitionLayout;

    iget-object v0, v0, Lcom/narvii/transition/TransitionLayout;->va:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
