.class public Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/monetization/sticker/model/StickerCollection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d06d7

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    instance-of p3, p2, Lcom/narvii/widget/ReversibleLinearLayout;

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    move-object p3, p2

    .line 19
    .line 20
    check-cast p3, Lcom/narvii/widget/ReversibleLinearLayout;

    .line 21
    const/4 v0, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v0}, Lcom/narvii/widget/ReversibleLinearLayout;->setReverse(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const p3, 0x7f0a06dd

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    check-cast p3, Landroid/widget/ImageView;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->colorDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    .line 42
    .line 43
    const p3, 0x7f0a0343

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    check-cast p3, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 50
    .line 51
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->smallIcon:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, v0, v1}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const p3, 0x7f0a0346

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p3

    .line 64
    .line 65
    check-cast p3, Landroid/widget/TextView;

    .line 66
    .line 67
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->name:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selected:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    .line 95
    const v0, 0x7f08097e

    .line 96
    goto :goto_1

    .line 97
    .line 98
    .line 99
    :cond_2
    const v0, 0x7f08097d

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 103
    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    .line 107
    const p1, -0xd7d1cd

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    const/4 p1, -0x1

    .line 110
    .line 111
    .line 112
    :goto_2
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    const p1, 0x7f0a026b

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    if-nez p5, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismiss()V

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 13
    move-result p3

    .line 14
    .line 15
    .line 16
    const p4, 0x7f0a026b

    .line 17
    .line 18
    if-ne p3, p4, :cond_1

    .line 19
    .line 20
    iget-object p3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 27
    .line 28
    iput-object p2, p3, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selected:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 32
    .line 33
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 34
    .line 35
    iget-object p3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 36
    .line 37
    iget-object p3, p3, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selectRunnable:Ljava/lang/Runnable;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    iget-object p3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 43
    .line 44
    iget-object p3, p3, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selectRunnable:Ljava/lang/Runnable;

    .line 45
    .line 46
    const-wide/16 p4, 0xc8

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    :cond_1
    return p1
.end method
