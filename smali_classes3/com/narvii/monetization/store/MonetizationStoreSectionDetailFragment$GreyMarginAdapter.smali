.class Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$GreyMarginAdapter;
.super Lcom/narvii/adapter/MarginAdapter;
.source "MonetizationStoreSectionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GreyMarginAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$GreyMarginAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    .line 249
    invoke-direct {p0, p2, p3}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 254
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/adapter/MarginAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, -0x111112

    .line 255
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1
.end method
