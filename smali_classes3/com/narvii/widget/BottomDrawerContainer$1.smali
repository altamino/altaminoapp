.class Lcom/narvii/widget/BottomDrawerContainer$1;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "BottomDrawerContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/BottomDrawerContainer;->dismissView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/BottomDrawerContainer;

.field final synthetic val$oldPosY:F


# direct methods
.method constructor <init>(Lcom/narvii/widget/BottomDrawerContainer;F)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/narvii/widget/BottomDrawerContainer$1;->this$0:Lcom/narvii/widget/BottomDrawerContainer;

    iput p2, p0, Lcom/narvii/widget/BottomDrawerContainer$1;->val$oldPosY:F

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 4

    .line 287
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float p1, v0

    .line 288
    iget-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer$1;->this$0:Lcom/narvii/widget/BottomDrawerContainer;

    iget v1, p0, Lcom/narvii/widget/BottomDrawerContainer$1;->val$oldPosY:F

    invoke-static {v0}, Lcom/narvii/widget/BottomDrawerContainer;->access$000(Lcom/narvii/widget/BottomDrawerContainer;)F

    move-result v2

    iget v3, p0, Lcom/narvii/widget/BottomDrawerContainer$1;->val$oldPosY:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    float-to-int p1, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 290
    iget-object p1, p0, Lcom/narvii/widget/BottomDrawerContainer$1;->this$0:Lcom/narvii/widget/BottomDrawerContainer;

    invoke-static {p1}, Lcom/narvii/widget/BottomDrawerContainer;->access$100(Lcom/narvii/widget/BottomDrawerContainer;)Lcom/narvii/widget/BottomDrawerContainer$DismissListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/narvii/widget/BottomDrawerContainer$1;->this$0:Lcom/narvii/widget/BottomDrawerContainer;

    invoke-static {p1}, Lcom/narvii/widget/BottomDrawerContainer;->access$100(Lcom/narvii/widget/BottomDrawerContainer;)Lcom/narvii/widget/BottomDrawerContainer$DismissListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/widget/BottomDrawerContainer$DismissListener;->onDismiss()V

    :cond_0
    return-void
.end method
