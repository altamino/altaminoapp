.class public Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MonetizationStoreSectionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TopAdapter"
.end annotation


# instance fields
.field private final HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

.field private headerPlaceHolder:Landroid/view/View;

.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    .line 390
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 386
    new-instance p1, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string p2, "user.header"

    invoke-direct {p1, p2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

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

    .line 400
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 405
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 410
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 412
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_0

    const p1, 0x7f0b06c6

    .line 413
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;->headerPlaceHolder:Landroid/view/View;

    .line 414
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;->headerPlaceHolder:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 415
    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x43020000    # 130.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 416
    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;->headerPlaceHolder:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;->headerPlaceHolder:Landroid/view/View;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
