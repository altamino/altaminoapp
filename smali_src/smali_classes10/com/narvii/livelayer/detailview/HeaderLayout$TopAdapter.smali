.class public Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/HeaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopAdapter"
.end annotation


# instance fields
.field private final HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

.field private headerPlaceHolder:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 6
    .line 7
    const-string v0, "user.header"

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 13
    return-void
.end method

.method private updateHeaderPlaceHolder()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->headerPlaceHolder:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/narvii/livelayer/detailview/HeaderLayout;->c(Lcom/narvii/app/NVContext;)I

    .line 15
    move-result v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Lcom/narvii/livelayer/detailview/HeaderLayout;->b(Lcom/narvii/app/NVContext;)I

    .line 21
    move-result v2

    .line 22
    add-int/2addr v1, v2

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Lcom/narvii/livelayer/detailview/HeaderLayout;->a(Lcom/narvii/app/NVContext;)I

    .line 28
    move-result v2

    .line 29
    add-int/2addr v1, v2

    .line 30
    .line 31
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->headerPlaceHolder:Landroid/view/View;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0d077b

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->headerPlaceHolder:Landroid/view/View;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->updateHeaderPlaceHolder()V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->headerPlaceHolder:Landroid/view/View;

    .line 23
    return-object p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method
