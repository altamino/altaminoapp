.class Lcom/narvii/feed/vote/VoteAnimationHelper$1;
.super Ljava/lang/Object;
.source "VoteAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/vote/VoteAnimationHelper;->startAnimation(Landroid/view/View;ILcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/vote/VoteAnimationHelper;

.field final synthetic val$listener:Lcom/narvii/util/Callback;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/feed/vote/VoteAnimationHelper;Landroid/view/View;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/narvii/feed/vote/VoteAnimationHelper$1;->this$0:Lcom/narvii/feed/vote/VoteAnimationHelper;

    iput-object p2, p0, Lcom/narvii/feed/vote/VoteAnimationHelper$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/narvii/feed/vote/VoteAnimationHelper$1;->val$listener:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/narvii/feed/vote/VoteAnimationHelper$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/feed/vote/VoteAnimationHelper$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/vote/VoteAnimationHelper$1;->val$listener:Lcom/narvii/util/Callback;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method
