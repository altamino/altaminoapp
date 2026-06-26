.class Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;
.super Ljava/lang/Object;
.source "MonetizationStoreMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/store/data/StoreSectionListResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;

.field final synthetic val$finalPosition:I

.field final synthetic val$nvActivity:Lcom/narvii/app/NVActivity;

.field final synthetic val$nvListView:Lcom/narvii/widget/NVListView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;Lcom/narvii/widget/NVListView;ILcom/narvii/app/NVActivity;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->this$1:Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;

    iput-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->val$nvListView:Lcom/narvii/widget/NVListView;

    iput p3, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->val$finalPosition:I

    iput-object p4, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->val$nvActivity:Lcom/narvii/app/NVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->val$nvListView:Lcom/narvii/widget/NVListView;

    iget v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->val$finalPosition:I

    iget-object v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->val$nvActivity:Lcom/narvii/app/NVActivity;

    invoke-virtual {v2}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->val$nvActivity:Lcom/narvii/app/NVActivity;

    invoke-virtual {v3}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/narvii/widget/NVListView;->smoothScrollToPositionFromTop(Lcom/narvii/widget/NVListView;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "scroll"

    .line 317
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
