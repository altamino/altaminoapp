.class Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;->FOOT_SUB:Ljava/lang/Object;

    .line 13
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

    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;->FOOT_SUB:Ljava/lang/Object;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;->getItem(I)Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;->FOOT_SUB:Ljava/lang/Object;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0d05b0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
