.class Lcom/narvii/tipping/TippingBoxView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/tipping/TippingBoxView$2;->this$0:Lcom/narvii/tipping/TippingBoxView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView$2;->this$0:Lcom/narvii/tipping/TippingBoxView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/tipping/TippingBoxView;->d(Lcom/narvii/tipping/TippingBoxView;)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/tipping/TippingBoxView$2;->this$0:Lcom/narvii/tipping/TippingBoxView;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/narvii/tipping/TippingBoxView;->a(Lcom/narvii/tipping/TippingBoxView;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    xor-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 18
    .line 19
    .line 20
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 21
    return-void
.end method
