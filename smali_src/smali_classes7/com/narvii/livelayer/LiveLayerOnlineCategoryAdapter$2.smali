.class Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$2;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$2;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    const v3, 0x7f0d0509

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    const/4 v2, -0x1

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    const v1, 0x7f0a06eb

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    const/16 v2, 0x9

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v2, 0x6

    .line 48
    .line 49
    :goto_0
    iput v2, v1, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 50
    return-object v0
.end method
