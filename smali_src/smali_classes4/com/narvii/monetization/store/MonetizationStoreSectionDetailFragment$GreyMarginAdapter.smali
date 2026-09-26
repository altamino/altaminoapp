.class Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$GreyMarginAdapter;
.super Lcom/narvii/adapter/MarginAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$GreyMarginAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/adapter/MarginAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const p2, -0x111112

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    return-object p1
.end method
