.class Lcom/narvii/tipping/TippingBoxView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TippingBoxView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/tipping/TippingBoxView;->startTipSuccessAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/tipping/TippingBoxView;


# direct methods
.method constructor <init>(Lcom/narvii/tipping/TippingBoxView;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/narvii/tipping/TippingBoxView$3;->this$0:Lcom/narvii/tipping/TippingBoxView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView$3;->this$0:Lcom/narvii/tipping/TippingBoxView;

    invoke-static {v0}, Lcom/narvii/tipping/TippingBoxView;->access$200(Lcom/narvii/tipping/TippingBoxView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 191
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
