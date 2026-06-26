.class Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment$Adapter;
.super Lcom/narvii/sharedfolder/SharedPhotosAdapter;
.source "DisabledSharedPhotosFragment.java"


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

    .line 40
    iput-object p1, p0, Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment$Adapter;->this$0:Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment;

    .line 41
    invoke-direct {p0, p2}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    instance-of p3, p1, Lcom/narvii/model/SharedFile;

    if-eqz p3, :cond_1

    .line 74
    check-cast p1, Lcom/narvii/model/SharedFile;

    const p3, 0x7f09035a

    .line 75
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    move-result v0

    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const p3, 0x7f09035e

    .line 76
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget p1, p1, Lcom/narvii/model/SharedFile;->status:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p3, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    :cond_1
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 61
    instance-of v0, p3, Lcom/narvii/model/SharedFile;

    if-eqz v0, :cond_0

    .line 62
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/SharedFile;

    .line 63
    invoke-virtual {v0}, Lcom/narvii/model/SharedFile;->isDisabledByAmino()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 67
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 83
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/NVObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->status()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "delete"

    .line 84
    iput-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 85
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

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
