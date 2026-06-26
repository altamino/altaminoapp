.class Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$7;
.super Lcom/narvii/list/SimpleViewAdapter;
.source "StickerCollectionManageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$7;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/SimpleViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreStickers"

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b064c

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 266
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 267
    const-class p1, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "scrollSectionGroupId"

    const-string p3, "sticker"

    .line 268
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "Source"

    const-string p3, "More Stickers"

    .line 269
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
