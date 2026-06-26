.class Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$2;
.super Ljava/lang/Object;
.source "StickerCollectionHistoryListFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

.field final synthetic val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$2;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$2;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 323
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$2;->this$1:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter$2;->val$stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-static {p1, v0, p2}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;->access$100(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V

    return-void
.end method
