.class public Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SharedStickerCollectionPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeeAllAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 233
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
    .locals 2

    const p1, 0x7f0b062a

    .line 268
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0909f2

    .line 269
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 270
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0f62

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    iget v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->count:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    iget v1, v1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0909f7

    .line 271
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    if-nez p5, :cond_0

    .line 240
    iget-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismiss()V

    return p1

    .line 242
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0909f7

    if-ne p2, p3, :cond_1

    .line 243
    const-class p2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 244
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 245
    iget-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    iget-object p2, p2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {p2, p1}, Lcom/narvii/monetization/sticker/StickerService;->refreshSharedStickerPackList(Z)V

    .line 246
    iget-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismiss()V

    :cond_1
    return p1
.end method
