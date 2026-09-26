.class public Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

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

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d06d9

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0cb9

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/TextView;

    .line 17
    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    const v1, 0x7f12106e

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 38
    .line 39
    iget v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->count:I

    .line 40
    .line 41
    if-lez v0, :cond_0

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v1, " ("

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 54
    .line 55
    iget v1, v1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->count:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v1, ")"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_0
    const-string v0, ""

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p3

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    const p2, 0x7f0a0cbd

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-object p1
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
    iget-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

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
    move-result p2

    .line 14
    .line 15
    .line 16
    const p3, 0x7f0a0cbd

    .line 17
    .line 18
    if-ne p2, p3, :cond_1

    .line 19
    .line 20
    const-class p2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p2}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 30
    .line 31
    iget-object p2, p2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/narvii/monetization/sticker/StickerService;->refreshSharedStickerPackList(Z)V

    .line 35
    .line 36
    iget-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismiss()V

    .line 40
    :cond_1
    return p1
.end method
