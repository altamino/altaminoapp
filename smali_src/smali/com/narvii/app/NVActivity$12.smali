.class Lcom/narvii/app/NVActivity$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVActivity;->startRemoveViewAnimation(Landroid/view/ViewGroup;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVActivity;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVActivity;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVActivity$12;->this$0:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/app/NVActivity$12;->val$parent:Landroid/view/ViewGroup;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/app/NVActivity$12;->val$v:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/app/NVActivity$12;->val$parent:Landroid/view/ViewGroup;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/app/NVActivity$12;->val$v:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
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
