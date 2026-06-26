.class Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$3;
.super Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$TitleAdapter;
.source "StickerCollectionHistoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$3;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$TitleAdapter;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Lcom/narvii/app/NVContext;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$3;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$3;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
