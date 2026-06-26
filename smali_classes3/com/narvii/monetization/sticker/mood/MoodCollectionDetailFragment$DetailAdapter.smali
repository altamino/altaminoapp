.class Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment$DetailAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "MoodCollectionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment$DetailAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;

    .line 104
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const p1, 0x7f0b0645

    .line 109
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 110
    new-instance p2, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    const p3, 0x7f090aae

    .line 112
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 113
    invoke-virtual {p3, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    const p3, 0x7f090279

    .line 115
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 116
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 119
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    goto :goto_0

    .line 121
    :cond_0
    new-instance v1, Lcom/narvii/util/text/NVText;

    invoke-direct {v1, v0}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    new-instance v0, Lcom/narvii/util/text/DefaultTagClickListener;

    invoke-direct {v0}, Lcom/narvii/util/text/DefaultTagClickListener;-><init>()V

    .line 123
    invoke-virtual {v1, v0}, Lcom/narvii/util/text/NVText;->markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 125
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 126
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p3, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 127
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    :goto_0
    const p3, 0x7f090ace

    .line 130
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/StoreItemStatusView;

    .line 132
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment$DetailAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;

    iget-object v1, v0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    if-nez v1, :cond_1

    .line 133
    new-instance v1, Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    iput-object v1, v0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 135
    :cond_1
    iget-object p3, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment$DetailAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;

    iget-object p3, p3, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    invoke-virtual {p3, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    return-object p1
.end method
