.class Lcom/narvii/drawer/DrawerHost$6$2;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost$6;
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

    .line 725
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$6$2;->this$1:Lcom/narvii/drawer/DrawerHost$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$6$2;->this$1:Lcom/narvii/drawer/DrawerHost$6;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v1, 0x7f090384

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 730
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$6$2;->this$1:Lcom/narvii/drawer/DrawerHost$6;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01002a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
