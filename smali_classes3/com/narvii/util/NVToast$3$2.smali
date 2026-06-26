.class Lcom/narvii/util/NVToast$3$2;
.super Ljava/lang/Object;
.source "NVToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/NVToast$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/NVToast$3;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/narvii/util/NVToast$3;Ljava/lang/Runnable;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/narvii/util/NVToast$3$2;->this$0:Lcom/narvii/util/NVToast$3;

    iput-object p2, p0, Lcom/narvii/util/NVToast$3$2;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 277
    iget-object p1, p0, Lcom/narvii/util/NVToast$3$2;->val$r:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 278
    invoke-static {}, Lcom/narvii/util/NVToast;->access$1000()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/util/NVToast$3$2;->val$r:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
