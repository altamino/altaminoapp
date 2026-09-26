.class Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->this$1:Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->val$nvListView:Lcom/narvii/widget/NVListView;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->val$finalPosition:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->val$nvActivity:Lcom/narvii/app/NVActivity;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->val$nvListView:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->val$finalPosition:I

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->val$nvActivity:Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 10
    move-result v2

    .line 11
    .line 12
    iget-object v3, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3$1;->val$nvActivity:Lcom/narvii/app/NVActivity;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 16
    move-result v3

    .line 17
    add-int/2addr v2, v3

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lcom/narvii/widget/NVListView;->smoothScrollToPositionFromTop(Lcom/narvii/widget/NVListView;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .line 24
    const-string v1, "scroll"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :goto_0
    return-void
.end method
