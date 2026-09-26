.class Lcom/narvii/util/ScaleBounceHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ScaleBounceHelper$1;->this$0:Lcom/narvii/util/ScaleBounceHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/ScaleBounceHelper$1;->this$0:Lcom/narvii/util/ScaleBounceHelper;

    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/narvii/util/ScaleBounceHelper;->canceled:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget v0, p1, Lcom/narvii/util/ScaleBounceHelper;->index:I

    .line 10
    .line 11
    add-int/lit8 v1, v0, 0x1

    .line 12
    .line 13
    iput v1, p1, Lcom/narvii/util/ScaleBounceHelper;->index:I

    .line 14
    .line 15
    iget-object v1, p1, Lcom/narvii/util/ScaleBounceHelper;->scaleList:[F

    .line 16
    array-length v1, v1

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    if-le v1, v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/util/ScaleBounceHelper;->a(Lcom/narvii/util/ScaleBounceHelper;)V

    .line 24
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
