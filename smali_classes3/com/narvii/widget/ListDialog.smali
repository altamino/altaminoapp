.class public abstract Lcom/narvii/widget/ListDialog;
.super Lcom/narvii/app/NVDialog;
.source "ListDialog.java"


# instance fields
.field protected context:Lcom/narvii/app/NVContext;

.field protected listView:Lcom/narvii/widget/NVListView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 21
    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/ListDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 26
    iput-object p1, p0, Lcom/narvii/widget/ListDialog;->context:Lcom/narvii/app/NVContext;

    .line 27
    invoke-virtual {p0}, Lcom/narvii/widget/ListDialog;->layout()I

    move-result p1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 28
    sget p1, Lcom/narvii/lib/R$id;->list:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    iput-object p1, p0, Lcom/narvii/widget/ListDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 29
    iget-object p1, p0, Lcom/narvii/widget/ListDialog;->listView:Lcom/narvii/widget/NVListView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 30
    iget-object p1, p0, Lcom/narvii/widget/ListDialog;->listView:Lcom/narvii/widget/NVListView;

    const p2, 0x106000d

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelector(I)V

    return-void
.end method


# virtual methods
.method protected abstract createAdapter()Lcom/narvii/list/NVAdapter;
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/widget/ListDialog;->listView:Lcom/narvii/widget/NVListView;

    return-object v0
.end method

.method protected layout()I
    .locals 1

    .line 44
    sget v0, Lcom/narvii/lib/R$layout;->dialog_list:I

    return v0
.end method

.method protected setListAdapter()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/narvii/widget/ListDialog;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {p0}, Lcom/narvii/widget/ListDialog;->createAdapter()Lcom/narvii/list/NVAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
