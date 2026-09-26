.class Lcom/narvii/tipping/TippingBoxView$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/tipping/TippingBoxView$4$1;->this$1:Lcom/narvii/tipping/TippingBoxView$4;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView$4$1;->this$1:Lcom/narvii/tipping/TippingBoxView$4;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/tipping/TippingBoxView;->d(Lcom/narvii/tipping/TippingBoxView;)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView$4$1;->this$1:Lcom/narvii/tipping/TippingBoxView$4;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/tipping/TippingBoxView;->g(Lcom/narvii/tipping/TippingBoxView;)V

    .line 21
    return-void
.end method
