.class Lcom/narvii/tipping/TippingBoxView$1;
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

    .line 151
    iput-object p1, p0, Lcom/narvii/tipping/TippingBoxView$1;->this$0:Lcom/narvii/tipping/TippingBoxView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 155
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView$1;->this$0:Lcom/narvii/tipping/TippingBoxView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0e0009

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->playAudioEffect(Landroid/content/Context;I)V

    return-void
.end method
