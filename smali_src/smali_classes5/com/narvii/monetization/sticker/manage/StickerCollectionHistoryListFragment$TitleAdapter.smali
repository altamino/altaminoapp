.class Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$TitleAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TitleAdapter"
.end annotation


# instance fields
.field strId:I

.field final synthetic this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$TitleAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput p3, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$TitleAdapter;->strId:I

    .line 8
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0711

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$TitleAdapter;->strId:I

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    .line 14
    const p2, 0x7f0a0e9e

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Landroid/widget/TextView;

    .line 21
    .line 22
    iget p3, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$TitleAdapter;->strId:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 26
    :cond_0
    return-object p1
.end method
