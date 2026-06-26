.class Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$AddAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "CustomizedStickerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$AddAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    .line 262
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b011d

    .line 283
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 289
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$AddAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->access$200(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$AddAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->pickStickerImage(Lcom/narvii/media/MediaPickerFragment;)V

    const/4 p1, 0x1

    return p1
.end method
