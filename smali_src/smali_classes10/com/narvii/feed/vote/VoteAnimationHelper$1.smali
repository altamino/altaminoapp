.class Lcom/narvii/feed/vote/VoteAnimationHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/vote/VoteAnimationHelper$1;->this$0:Lcom/narvii/feed/vote/VoteAnimationHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/feed/vote/VoteAnimationHelper$1;->val$view:Landroid/view/View;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/feed/vote/VoteAnimationHelper$1;->val$listener:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/vote/VoteAnimationHelper$1;->val$view:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/feed/vote/VoteAnimationHelper$1;->val$view:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    return-void

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/vote/VoteAnimationHelper$1;->val$listener:Lcom/narvii/util/Callback;

    .line 28
    .line 29
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
