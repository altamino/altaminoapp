.class Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment$DetailAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment$DetailAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d06fc

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    new-instance p2, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p3

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, p3}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    const p3, 0x7f0a0da8

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    check-cast p3, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 29
    .line 30
    .line 31
    const p3, 0x7f0a0342

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p3

    .line 36
    .line 37
    check-cast p3, Landroid/widget/TextView;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getDescription()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const/4 v0, 0x0

    .line 52
    .line 53
    .line 54
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    new-instance v1, Lcom/narvii/util/text/NVText;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v0}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/util/text/DefaultTagClickListener;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0}, Lcom/narvii/util/text/DefaultTagClickListener;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lcom/narvii/util/text/NVText;->markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    .line 69
    const/4 v0, 0x1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, v0}, Landroid/view/View;->setClickable(Z)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 80
    .line 81
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 88
    .line 89
    .line 90
    :goto_0
    const p3, 0x7f0a0dc9

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object p3

    .line 95
    .line 96
    check-cast p3, Lcom/narvii/monetization/StoreItemStatusView;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment$DetailAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;

    .line 99
    .line 100
    iget-object v1, v0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 101
    .line 102
    if-nez v1, :cond_1

    .line 103
    .line 104
    new-instance v1, Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, v2, p3}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    .line 112
    .line 113
    iput-object v1, v0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 114
    .line 115
    :cond_1
    iget-object p3, p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment$DetailAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;

    .line 116
    .line 117
    iget-object p3, p3, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 121
    return-object p1
.end method
