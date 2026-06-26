.class public Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SharedStickerCollectionPickerDialog.java"


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

    .line 278
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 279
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 284
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    const v0, 0x7f0b0628

    .line 285
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 286
    instance-of p3, p2, Lcom/narvii/widget/ReversibleLinearLayout;

    if-eqz p3, :cond_0

    .line 287
    move-object p3, p2

    check-cast p3, Lcom/narvii/widget/ReversibleLinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/narvii/widget/ReversibleLinearLayout;->setReverse(Z)V

    :cond_0
    const p3, 0x7f090565

    .line 289
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 290
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->colorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f09027a

    .line 292
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 293
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->smallIcon:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f09027d

    .line 295
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 296
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selected:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const v0, 0x7f080781

    goto :goto_1

    :cond_2
    const v0, 0x7f080780

    .line 299
    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    if-eqz p1, :cond_3

    const p1, -0xd7d1cd

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    .line 300
    :goto_2
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0901ba

    .line 302
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    if-nez p5, :cond_0

    .line 309
    iget-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismiss()V

    return p1

    .line 312
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p3

    const p4, 0x7f0901ba

    if-ne p3, p4, :cond_1

    .line 313
    iget-object p3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    invoke-virtual {p0, p2}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    iput-object p2, p3, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selected:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 314
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 315
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    iget-object p3, p3, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selectRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    iget-object p3, p3, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selectRunnable:Ljava/lang/Runnable;

    const-wide/16 p4, 0xc8

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return p1
.end method
