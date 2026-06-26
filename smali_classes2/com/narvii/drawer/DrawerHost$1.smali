.class Lcom/narvii/drawer/DrawerHost$1;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Lcom/narvii/widget/NVScrollView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bg:Landroid/view/View;

.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$1;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(IIII)V
    .locals 0

    .line 467
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$1;->bg:Landroid/view/View;

    if-nez p1, :cond_0

    .line 468
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$1;->this$0:Lcom/narvii/drawer/DrawerHost;

    const p3, 0x7f090379

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$1;->bg:Landroid/view/View;

    .line 470
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$1;->bg:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    mul-int/lit8 p3, p1, 0x3

    .line 472
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    if-gtz p2, :cond_1

    .line 474
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$1;->bg:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    if-lt p2, p3, :cond_2

    .line 476
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$1;->bg:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    int-to-float p2, p2

    mul-float p2, p2, p1

    int-to-float p1, p3

    div-float/2addr p2, p1

    .line 479
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$1;->bg:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method
