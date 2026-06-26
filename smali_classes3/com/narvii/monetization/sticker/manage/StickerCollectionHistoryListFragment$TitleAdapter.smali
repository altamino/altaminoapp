.class Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$TitleAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "StickerCollectionHistoryListFragment.java"


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

    .line 180
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$TitleAdapter;->this$0:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;

    .line 181
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 182
    iput p3, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$TitleAdapter;->strId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b065a

    .line 187
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 188
    iget p2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$TitleAdapter;->strId:I

    if-eqz p2, :cond_0

    const p2, 0x7f090b9a

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 190
    iget p3, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$TitleAdapter;->strId:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-object p1
.end method
