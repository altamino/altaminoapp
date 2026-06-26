.class Lcom/narvii/tipping/TippingBoxView$2;
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

    .line 167
    iput-object p1, p0, Lcom/narvii/tipping/TippingBoxView$2;->this$0:Lcom/narvii/tipping/TippingBoxView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView$2;->this$0:Lcom/narvii/tipping/TippingBoxView;

    invoke-static {v0}, Lcom/narvii/tipping/TippingBoxView;->access$000(Lcom/narvii/tipping/TippingBoxView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView$2;->this$0:Lcom/narvii/tipping/TippingBoxView;

    invoke-static {v1}, Lcom/narvii/tipping/TippingBoxView;->access$100(Lcom/narvii/tipping/TippingBoxView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 171
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
