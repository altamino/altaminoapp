.class public Lcom/narvii/util/debug/LarkUserPicker;
.super Lcom/narvii/widget/ListDialog;
.source "LarkUserPicker.java"


# instance fields
.field names:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ListDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "All"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const-string v0, "Jixin"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "Guangjing"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "Haomeng"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "ShenJun"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "ChenWei"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "Wenrong"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "Yueyue"

    aput-object v0, p1, p2

    .line 16
    iput-object p1, p0, Lcom/narvii/util/debug/LarkUserPicker;->names:[Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Lcom/narvii/widget/ListDialog;->setListAdapter()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/list/NVAdapter;
    .locals 2

    .line 29
    new-instance v0, Lcom/narvii/util/debug/LarkUserPicker$1;

    iget-object v1, p0, Lcom/narvii/widget/ListDialog;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, p0, v1}, Lcom/narvii/util/debug/LarkUserPicker$1;-><init>(Lcom/narvii/util/debug/LarkUserPicker;Lcom/narvii/app/NVContext;)V

    .line 62
    invoke-virtual {p0}, Lcom/narvii/widget/ListDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method protected onUserClicked(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
