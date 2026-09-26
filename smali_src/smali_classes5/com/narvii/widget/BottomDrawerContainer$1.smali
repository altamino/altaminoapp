.class Lcom/narvii/widget/BottomDrawerContainer$1;
.super Lcom/facebook/rebound/d;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/BottomDrawerContainer$1;->this$0:Lcom/narvii/widget/BottomDrawerContainer;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/BottomDrawerContainer$1;->val$oldPosY:F

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/e;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/facebook/rebound/e;->c()D

    .line 4
    move-result-wide v0

    .line 5
    double-to-float p1, v0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/BottomDrawerContainer$1;->this$0:Lcom/narvii/widget/BottomDrawerContainer;

    .line 8
    .line 9
    iget v1, p0, Lcom/narvii/widget/BottomDrawerContainer$1;->val$oldPosY:F

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/widget/BottomDrawerContainer;->b(Lcom/narvii/widget/BottomDrawerContainer;)F

    .line 13
    move-result v2

    .line 14
    .line 15
    iget v3, p0, Lcom/narvii/widget/BottomDrawerContainer$1;->val$oldPosY:F

    .line 16
    sub-float/2addr v2, v3

    .line 17
    mul-float/2addr v2, p1

    .line 18
    add-float/2addr v1, v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 22
    float-to-int p1, p1

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    if-ne p1, v0, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/widget/BottomDrawerContainer$1;->this$0:Lcom/narvii/widget/BottomDrawerContainer;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/widget/BottomDrawerContainer;->a(Lcom/narvii/widget/BottomDrawerContainer;)Lcom/narvii/widget/BottomDrawerContainer$DismissListener;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/widget/BottomDrawerContainer$1;->this$0:Lcom/narvii/widget/BottomDrawerContainer;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/widget/BottomDrawerContainer;->a(Lcom/narvii/widget/BottomDrawerContainer;)Lcom/narvii/widget/BottomDrawerContainer$DismissListener;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Lcom/narvii/widget/BottomDrawerContainer$DismissListener;->onDismiss()V

    .line 43
    :cond_0
    return-void
.end method
