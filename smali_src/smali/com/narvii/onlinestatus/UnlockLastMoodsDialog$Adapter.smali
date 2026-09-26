.class Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;->this$0:Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;->this$0:Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;->list:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/narvii/onlinestatus/UnlockItem;
    .locals 1

    iget-object v0, p0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;->this$0:Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;

    .line 2
    iget-object v0, v0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/onlinestatus/UnlockItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;->getItem(I)Lcom/narvii/onlinestatus/UnlockItem;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0d01c3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    const p3, 0x7f0a0e51

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Landroid/widget/TextView;

    .line 21
    .line 22
    iget v0, p1, Lcom/narvii/onlinestatus/UnlockItem;->textId:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 26
    .line 27
    .line 28
    const p3, 0x7f0a0d90

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    check-cast p3, Landroid/widget/TextView;

    .line 35
    .line 36
    iget v0, p1, Lcom/narvii/onlinestatus/UnlockItem;->numberZeroStatusId:I

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget v0, p1, Lcom/narvii/onlinestatus/UnlockItem;->number:I

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iget v1, p1, Lcom/narvii/onlinestatus/UnlockItem;->numberZeroStatusId:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iget v1, p1, Lcom/narvii/onlinestatus/UnlockItem;->statusId:I

    .line 60
    const/4 v2, 0x1

    .line 61
    .line 62
    new-array v2, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    iget v3, p1, Lcom/narvii/onlinestatus/UnlockItem;->number:I

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v3

    .line 69
    const/4 v4, 0x0

    .line 70
    .line 71
    aput-object v3, v2, v4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    .line 87
    const v3, 0x7f121133

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v2, ": "

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    const p3, 0x7f0a02c7

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object p3

    .line 117
    .line 118
    check-cast p3, Landroid/widget/ImageView;

    .line 119
    .line 120
    iget-boolean p1, p1, Lcom/narvii/onlinestatus/UnlockItem;->finished:Z

    .line 121
    .line 122
    if-eqz p1, :cond_1

    .line 123
    .line 124
    .line 125
    const p1, 0x7f0801d9

    .line 126
    goto :goto_1

    .line 127
    .line 128
    .line 129
    :cond_1
    const p1, 0x7f0808cc

    .line 130
    .line 131
    .line 132
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    return-object p2
.end method
