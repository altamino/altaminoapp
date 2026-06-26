.class public Lcom/narvii/user/list/UserListHelper;
.super Ljava/lang/Object;
.source "UserListHelper.java"


# instance fields
.field nvContext:Lcom/narvii/app/NVContext;

.field userListItemHost:Lcom/narvii/user/list/UserListItemHost;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/user/list/UserListItemHost;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/narvii/user/list/UserListHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 21
    iput-object p2, p0, Lcom/narvii/user/list/UserListHelper;->userListItemHost:Lcom/narvii/user/list/UserListItemHost;

    return-void
.end method


# virtual methods
.method public updateCell(Lcom/narvii/model/User;Landroid/view/View;)V
    .locals 5

    const v0, 0x7f090c10

    .line 25
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0900e4

    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :goto_0
    const v0, 0x7f090764

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    instance-of v1, v0, Lcom/narvii/widget/NicknameView;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/narvii/widget/NicknameView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    goto :goto_1

    .line 34
    :cond_1
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 35
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    const v0, 0x7f09006f

    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    .line 40
    iget-object v2, p1, Lcom/narvii/model/User;->address:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 41
    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/narvii/model/User;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const v0, 0x7f0900a0

    .line 46
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 48
    iget-object v3, p0, Lcom/narvii/user/list/UserListHelper;->userListItemHost:Lcom/narvii/user/list/UserListItemHost;

    invoke-interface {v3}, Lcom/narvii/user/list/UserListItemHost;->showAminoId()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 52
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_2
    const v0, 0x7f090411

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    const v0, 0x7f090359

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_9

    .line 64
    iget-object v0, p0, Lcom/narvii/user/list/UserListHelper;->userListItemHost:Lcom/narvii/user/list/UserListItemHost;

    invoke-interface {v0}, Lcom/narvii/user/list/UserListItemHost;->showDisableView()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    :cond_8
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method
