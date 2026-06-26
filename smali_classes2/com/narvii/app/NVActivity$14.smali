.class Lcom/narvii/app/NVActivity$14;
.super Ljava/lang/Object;
.source "NVActivity.java"

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

    .line 1915
    iput-object p1, p0, Lcom/narvii/app/NVActivity$14;->this$0:Lcom/narvii/app/NVActivity;

    iput-object p2, p0, Lcom/narvii/app/NVActivity$14;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/narvii/app/NVActivity$14;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1923
    iget-object p1, p0, Lcom/narvii/app/NVActivity$14;->val$parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/narvii/app/NVActivity$14;->val$v:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

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
