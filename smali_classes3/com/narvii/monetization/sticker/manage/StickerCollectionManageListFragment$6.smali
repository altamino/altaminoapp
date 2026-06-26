.class Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$6;
.super Lcom/narvii/monetization/common/ManageEntryAdapter;
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
.method constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$6;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;

    invoke-direct {p0, p2, p3}, Lcom/narvii/monetization/common/ManageEntryAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 241
    const-class p1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Source"

    const-string p3, "Management"

    .line 242
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
