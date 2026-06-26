.class Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "UnlockLastMoodsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;


# direct methods
.method public constructor <init>(Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;->this$0:Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;

    .line 67
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;->this$0:Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;

    iget-object v0, v0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/narvii/onlinestatus/UnlockItem;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;->this$0:Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;

    iget-object v0, v0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/onlinestatus/UnlockItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;->getItem(I)Lcom/narvii/onlinestatus/UnlockItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 87
    invoke-virtual {p0, p1}, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;->getItem(I)Lcom/narvii/onlinestatus/UnlockItem;

    move-result-object p1

    const v0, 0x7f0b01a2

    .line 88
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090b5b

    .line 89
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 90
    iget v0, p1, Lcom/narvii/onlinestatus/UnlockItem;->textId:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f090a97

    .line 91
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 92
    iget v0, p1, Lcom/narvii/onlinestatus/UnlockItem;->numberZeroStatusId:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/narvii/onlinestatus/UnlockItem;->number:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/narvii/onlinestatus/UnlockItem;->numberZeroStatusId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/narvii/onlinestatus/UnlockItem;->statusId:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/narvii/onlinestatus/UnlockItem;->number:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f101c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f09020f

    .line 94
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 95
    iget-boolean p1, p1, Lcom/narvii/onlinestatus/UnlockItem;->finished:Z

    if-eqz p1, :cond_1

    const p1, 0x7f08014a

    goto :goto_1

    :cond_1
    const p1, 0x7f0806d1

    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2
.end method
