.class Lcom/narvii/amino/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

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

    .line 263
    iput-object p1, p0, Lcom/narvii/amino/MainActivity$1;->this$0:Lcom/narvii/amino/MainActivity;

    iput-object p2, p0, Lcom/narvii/amino/MainActivity$1;->val$root:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/narvii/amino/MainActivity$1;->val$iv:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 275
    invoke-virtual {p0, p1}, Lcom/narvii/amino/MainActivity$1;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 270
    iget-object p1, p0, Lcom/narvii/amino/MainActivity$1;->val$root:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/narvii/amino/MainActivity$1;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

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
