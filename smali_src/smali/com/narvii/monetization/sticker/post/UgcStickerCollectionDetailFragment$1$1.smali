.class Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/monetization/store/StoreHelper;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    new-instance v1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1$1;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;)V

    .line 27
    .line 28
    const/16 v2, 0x72

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/monetization/store/StoreHelper;->shareRequest(Ljava/lang/String;ILcom/narvii/util/Callback;)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1$1;->this$1:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 36
    .line 37
    const-string/jumbo v0, "statistics"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 44
    .line 45
    const-string v0, "Publishes a Sticker Pack"

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    const-string v0, "Publishes a Sticker Pack Total"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 55
    return-void
.end method
