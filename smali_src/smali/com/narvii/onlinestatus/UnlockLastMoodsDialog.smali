.class public Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;
.super Lcom/narvii/widget/ListDialog;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/widget/ListDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;->list:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/ListDialog;->setListAdapter()V

    .line 9
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/list/NVAdapter;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/widget/ListDialog;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/list/StaticViewAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 13
    .line 14
    .line 15
    const v2, 0x7f0d01c4

    .line 16
    .line 17
    .line 18
    filled-new-array {v2}, [I

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/widget/ListDialog;->context:Lcom/narvii/app/NVContext;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0, v2}, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$Adapter;-><init>(Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;Lcom/narvii/app/NVContext;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    .line 37
    new-instance v1, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/narvii/onlinestatus/UnlockLastMoodsDialog$CloseAdapter;-><init>(Lcom/narvii/onlinestatus/UnlockLastMoodsDialog;)V

    .line 41
    .line 42
    .line 43
    const v2, 0x7f0d01c2

    .line 44
    .line 45
    .line 46
    filled-new-array {v2}, [I

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    return-object v0
.end method
