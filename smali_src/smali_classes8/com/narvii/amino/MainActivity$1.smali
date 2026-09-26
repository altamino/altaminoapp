.class Lcom/narvii/amino/MainActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/MainActivity;

.field final synthetic val$iv:Landroid/widget/ImageView;

.field final synthetic val$root:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/narvii/amino/MainActivity;Landroid/view/ViewGroup;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/MainActivity$1;->this$0:Lcom/narvii/amino/MainActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/amino/MainActivity$1;->val$root:Landroid/view/ViewGroup;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/amino/MainActivity$1;->val$iv:Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/amino/MainActivity$1;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$1;->val$root:Landroid/view/ViewGroup;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/amino/MainActivity$1;->val$iv:Landroid/widget/ImageView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
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
