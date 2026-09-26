.class Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment$Adapter;
.super Lcom/narvii/sharedfolder/SharedPhotosAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment$Adapter;->this$0:Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected allowShowNormalDisable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    instance-of p3, p1, Lcom/narvii/model/SharedFile;

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/model/SharedFile;

    .line 11
    .line 12
    .line 13
    const p3, 0x7f0a0442

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 25
    .line 26
    .line 27
    const p3, 0x7f0a0446

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    iget p1, p1, Lcom/narvii/model/SharedFile;->status:I

    .line 34
    .line 35
    const/16 v0, 0x9

    .line 36
    .line 37
    if-ne p1, v0, :cond_0

    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {p3, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 44
    :cond_1
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/SharedFile;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/SharedFile;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "update"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    instance-of v1, v0, Lcom/narvii/model/NVObject;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->status()I

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string v0, "delete"

    .line 28
    .line 29
    iput-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 33
    :cond_0
    return-void
.end method

.method protected showNew()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected sourceType()Ljava/lang/String;
    .locals 1

    const-string v0, "disabled"

    return-object v0
.end method
