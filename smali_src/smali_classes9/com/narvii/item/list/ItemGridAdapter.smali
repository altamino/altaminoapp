.class public abstract Lcom/narvii/item/list/ItemGridAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
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

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/model/Item;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/item/list/ItemGridAdapter;->layoutId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    const p3, 0x7f0a0756

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    check-cast p3, Lcom/narvii/widget/CardView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 23
    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d0359

    return v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/Item;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "edit"

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const-string v1, "update"

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const-string v1, "delete"

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 25
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

    const-class v0, Lcom/narvii/model/api/ItemListResponse;

    return-object v0
.end method
