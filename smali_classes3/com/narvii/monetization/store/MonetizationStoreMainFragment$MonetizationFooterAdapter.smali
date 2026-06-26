.class Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MonetizationStoreMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/MonetizationStoreMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonetizationFooterAdapter"
.end annotation


# instance fields
.field private FOOT_SUB:Ljava/lang/Object;

.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 655
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 652
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;->FOOT_SUB:Ljava/lang/Object;

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

    .line 670
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;->FOOT_SUB:Ljava/lang/Object;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 675
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 680
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 682
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;->FOOT_SUB:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const p1, 0x7f0b0528

    .line 683
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
