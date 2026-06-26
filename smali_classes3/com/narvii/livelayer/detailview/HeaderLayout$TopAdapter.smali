.class public Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "HeaderLayout.java"


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

    .line 176
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 172
    new-instance p1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v0, "user.header"

    invoke-direct {p1, v0}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method private updateHeaderPlaceHolder()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->headerPlaceHolder:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {v1}, Lcom/narvii/livelayer/detailview/HeaderLayout;->access$000(Lcom/narvii/app/NVContext;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {v2}, Lcom/narvii/livelayer/detailview/HeaderLayout;->access$100(Lcom/narvii/app/NVContext;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {v2}, Lcom/narvii/livelayer/detailview/HeaderLayout;->access$200(Lcom/narvii/app/NVContext;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 215
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->headerPlaceHolder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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

    .line 186
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 191
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 196
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 198
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_0

    const p1, 0x7f0b06c6

    .line 199
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->headerPlaceHolder:Landroid/view/View;

    .line 200
    invoke-direct {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->updateHeaderPlaceHolder()V

    .line 203
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;->headerPlaceHolder:Landroid/view/View;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
