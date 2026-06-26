.class Lcom/narvii/drawer/DrawerHost$6$1;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost$6;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/drawer/DrawerHost$6;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost$6;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$6$1;->this$1:Lcom/narvii/drawer/DrawerHost$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 699
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$6$1;->this$1:Lcom/narvii/drawer/DrawerHost$6;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v1, 0x7f090720

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 700
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$6$1;->this$1:Lcom/narvii/drawer/DrawerHost$6;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v4, 0x7f0900a3

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 701
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$6$1;->this$1:Lcom/narvii/drawer/DrawerHost$6;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v4, 0x7f0900a2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
