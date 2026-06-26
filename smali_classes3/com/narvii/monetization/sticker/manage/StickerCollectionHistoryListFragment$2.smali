.class Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$2;
.super Ljava/lang/Object;
.source "StickerCollectionHistoryListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$2;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 106
    const-class p1, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "scrollSectionGroupId"

    const-string v1, "sticker"

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Source"

    const-string v1, "Added History (Empty)"

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$2;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
