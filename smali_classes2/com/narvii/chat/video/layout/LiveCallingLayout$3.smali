.class Lcom/narvii/chat/video/layout/LiveCallingLayout$3;
.super Ljava/lang/Object;
.source "LiveCallingLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/layout/LiveCallingLayout;->startCallingAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/layout/LiveCallingLayout;Landroid/view/View;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$3;->this$0:Lcom/narvii/chat/video/layout/LiveCallingLayout;

    iput-object p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 292
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
