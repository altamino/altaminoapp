.class Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$5;
.super Ljava/lang/Object;
.source "CustomizedStickerListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/Sticker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$5;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/Sticker;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$5;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-object v1, v0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    if-eqz v1, :cond_1

    .line 249
    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$5;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/list/NVArrayAdapter;->add(ILjava/lang/Object;)V

    .line 253
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$5;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->access$100(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 245
    check-cast p1, Lcom/narvii/model/Sticker;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$5;->call(Lcom/narvii/model/Sticker;)V

    return-void
.end method
