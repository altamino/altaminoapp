.class Lcom/narvii/drawer/DrawerHost$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$1;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(IIII)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$1;->bg:Landroid/view/View;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$1;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 7
    .line 8
    .line 9
    const p3, 0x7f0a0468

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$1;->bg:Landroid/view/View;

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$1;->bg:Landroid/view/View;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 21
    move-result p1

    .line 22
    .line 23
    mul-int/lit8 p3, p1, 0x3

    .line 24
    .line 25
    div-int/lit8 p1, p1, 0x2

    .line 26
    sub-int/2addr p2, p1

    .line 27
    .line 28
    if-gtz p2, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$1;->bg:Landroid/view/View;

    .line 31
    const/4 p2, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 38
    .line 39
    if-lt p2, p3, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$1;->bg:Landroid/view/View;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    int-to-float p2, p2

    .line 47
    mul-float/2addr p2, p1

    .line 48
    int-to-float p1, p3

    .line 49
    div-float/2addr p2, p1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$1;->bg:Landroid/view/View;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 55
    :goto_0
    return-void
.end method
