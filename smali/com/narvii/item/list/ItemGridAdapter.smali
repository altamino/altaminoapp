.class public abstract Lcom/narvii/item/list/ItemGridAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "ItemGridAdapter.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/Item;",
        "Lcom/narvii/model/api/ItemListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    .line 33
    const-class v0, Lcom/narvii/model/Item;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 53
    check-cast p1, Lcom/narvii/model/Item;

    .line 54
    invoke-virtual {p0}, Lcom/narvii/item/list/ItemGridAdapter;->layoutId()I

    move-result v0

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0905d7

    .line 55
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/CardView;

    invoke-virtual {p3, p1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b0327

    return v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 61
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Item;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "edit"

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "update"

    if-eq v0, v1, :cond_0

    const-string v1, "delete"

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_1
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ItemListResponse;",
            ">;"
        }
    .end annotation

    .line 38
    const-class v0, Lcom/narvii/model/api/ItemListResponse;

    return-object v0
.end method
