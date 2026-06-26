.class Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$3;
.super Ljava/lang/Object;
.source "StickerCollectionSortListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->saveChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$3;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 119
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$3;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$3;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 123
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$3;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;

    const-string v1, "sticker"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/StickerService;

    .line 128
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/StickerService;->setStickerCollectionList(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 116
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$3;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
