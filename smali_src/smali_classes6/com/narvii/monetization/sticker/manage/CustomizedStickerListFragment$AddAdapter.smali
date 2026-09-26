.class Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$AddAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$AddAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d013a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$AddAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->t(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$AddAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->pickStickerImage(Lcom/narvii/media/MediaPickerFragment;)V

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1
.end method
