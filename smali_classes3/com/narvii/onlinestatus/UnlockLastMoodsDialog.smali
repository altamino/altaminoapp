.class public Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;
.super Lcom/narvii/widget/ListDialog;
.source "UnlockLastMoodsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;,
        Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/onlinestatus/UnlockItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/onlinestatus/UnlockItem;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/widget/ListDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    iput-object p2, p0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;->list:Ljava/util/List;

    .line 28
    invoke-virtual {p0}, Lcom/narvii/widget/ListDialog;->setListAdapter()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/list/NVAdapter;
    .locals 6

    .line 33
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    iget-object v1, p0, Lcom/narvii/widget/ListDialog;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 35
    new-instance v1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const v5, 0x7f0b01a3

    aput v5, v3, v4

    .line 36
    invoke-virtual {v1, v3}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    new-instance v1, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;

    iget-object v3, p0, Lcom/narvii/widget/ListDialog;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, p0, v3}, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;-><init>(Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;Lcom/narvii/app/NVContext;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    new-instance v1, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;-><init>(Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;)V

    new-array v2, v2, [I

    const v3, 0x7f0b01a1

    aput v3, v2, v4

    .line 43
    invoke-virtual {v1, v2}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method
