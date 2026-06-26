.class Lcom/narvii/util/ScaleBounceHelper$1;
.super Ljava/lang/Object;
.source "ScaleBounceHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/ScaleBounceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/ScaleBounceHelper;


# direct methods
.method constructor <init>(Lcom/narvii/util/ScaleBounceHelper;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/narvii/util/ScaleBounceHelper$1;->this$0:Lcom/narvii/util/ScaleBounceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 29
    iget-object p1, p0, Lcom/narvii/util/ScaleBounceHelper$1;->this$0:Lcom/narvii/util/ScaleBounceHelper;

    iget-boolean v0, p1, Lcom/narvii/util/ScaleBounceHelper;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget v0, p1, Lcom/narvii/util/ScaleBounceHelper;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/narvii/util/ScaleBounceHelper;->index:I

    .line 33
    iget-object v0, p1, Lcom/narvii/util/ScaleBounceHelper;->scaleList:[F

    array-length v0, v0

    iget v1, p1, Lcom/narvii/util/ScaleBounceHelper;->index:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_1

    .line 34
    invoke-static {p1}, Lcom/narvii/util/ScaleBounceHelper;->access$000(Lcom/narvii/util/ScaleBounceHelper;)V

    :cond_1
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
