.class Lcom/narvii/tipping/TippingBoxView$4$1;
.super Ljava/lang/Object;
.source "TippingBoxView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/tipping/TippingBoxView$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/tipping/TippingBoxView$4;


# direct methods
.method constructor <init>(Lcom/narvii/tipping/TippingBoxView$4;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/narvii/tipping/TippingBoxView$4$1;->this$1:Lcom/narvii/tipping/TippingBoxView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView$4$1;->this$1:Lcom/narvii/tipping/TippingBoxView$4;

    iget-object v0, v0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    invoke-static {v0}, Lcom/narvii/tipping/TippingBoxView;->access$000(Lcom/narvii/tipping/TippingBoxView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView$4$1;->this$1:Lcom/narvii/tipping/TippingBoxView$4;

    iget-object v0, v0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    invoke-static {v0}, Lcom/narvii/tipping/TippingBoxView;->access$500(Lcom/narvii/tipping/TippingBoxView;)V

    return-void
.end method
