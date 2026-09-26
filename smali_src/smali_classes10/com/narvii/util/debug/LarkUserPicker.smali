.class public Lcom/narvii/util/debug/LarkUserPicker;
.super Lcom/narvii/widget/ListDialog;
.source "SourceFile"


# instance fields
.field names:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ListDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 4
    .line 5
    const-string v0, "All"

    .line 6
    .line 7
    const-string v1, "Jixin"

    .line 8
    .line 9
    const-string v2, "Guangjing"

    .line 10
    .line 11
    const-string v3, "Haomeng"

    .line 12
    .line 13
    const-string v4, "ShenJun"

    .line 14
    .line 15
    const-string v5, "ChenWei"

    .line 16
    .line 17
    const-string v6, "Wenrong"

    .line 18
    .line 19
    const-string v7, "Yueyue"

    .line 20
    .line 21
    .line 22
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/util/debug/LarkUserPicker;->names:[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/widget/ListDialog;->setListAdapter()V

    .line 29
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/list/NVAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/debug/LarkUserPicker$1;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/widget/ListDialog;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Lcom/narvii/util/debug/LarkUserPicker$1;-><init>(Lcom/narvii/util/debug/LarkUserPicker;Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/widget/ListDialog;->getListView()Landroid/widget/ListView;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 15
    return-object v0
.end method

.method protected onUserClicked(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
