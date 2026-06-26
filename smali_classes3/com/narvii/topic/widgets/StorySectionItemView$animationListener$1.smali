.class public final Lcom/narvii/topic/widgets/StorySectionItemView$animationListener$1;
.super Ljava/lang/Object;
.source "StorySectionItemView.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/StorySectionItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/widgets/StorySectionItemView;


# direct methods
.method constructor <init>(Lcom/narvii/topic/widgets/StorySectionItemView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$animationListener$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$animationListener$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->getCurWindowIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/topic/widgets/StorySectionItemView;->setCurWindowIndex(I)V

    .line 217
    iget-object p1, p0, Lcom/narvii/topic/widgets/StorySectionItemView$animationListener$1;->this$0:Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/StorySectionItemView;->updateStory()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
