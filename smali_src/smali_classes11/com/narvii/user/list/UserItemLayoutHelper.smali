.class public final Lcom/narvii/user/list/UserItemLayoutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final accountService:Lcom/narvii/account/AccountService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/user/list/UserItemLayoutHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v0, "account"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "getService(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/user/list/UserItemLayoutHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 26
    return-void
.end method

.method public static synthetic configLayout$default(Lcom/narvii/user/list/UserItemLayoutHelper;Landroid/view/View;Lcom/narvii/model/User;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x4

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p3, 0x1

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/user/list/UserItemLayoutHelper;->configLayout(Landroid/view/View;Lcom/narvii/model/User;Z)V

    .line 9
    return-void
.end method

.method public static synthetic markDisabled$default(Lcom/narvii/user/list/UserItemLayoutHelper;Landroid/view/View;Lcom/narvii/model/NVObject;IILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x4

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/user/list/UserItemLayoutHelper;->markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;I)V

    .line 9
    return-void
.end method


# virtual methods
.method public final configLayout(Landroid/view/View;Lcom/narvii/model/User;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/narvii/user/list/UserItemLayoutHelper;->configLayout$default(Lcom/narvii/user/list/UserItemLayoutHelper;Landroid/view/View;Lcom/narvii/model/User;ZILjava/lang/Object;)V

    return-void
.end method

.method public final configLayout(Landroid/view/View;Lcom/narvii/model/User;Z)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_e

    if-nez p2, :cond_0

    goto/16 :goto_a

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    const v0, 0x7f0a0f36

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    goto :goto_1

    :cond_1
    const v0, 0x7f0a0171

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/narvii/widget/ThumbImageView;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_3
    :goto_1
    const v0, 0x7f0a09f9

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/narvii/widget/NicknameView;

    if-eqz v1, :cond_4

    .line 8
    check-cast v0, Lcom/narvii/widget/NicknameView;

    invoke-virtual {v0, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    goto :goto_2

    .line 9
    :cond_4
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 10
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    const v0, 0x7f0a00a8

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const v0, 0x7f0a0108

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    if-eqz p3, :cond_9

    .line 14
    iget-object p3, p2, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_8

    goto :goto_4

    :cond_8
    move p3, v2

    goto :goto_5

    :cond_9
    :goto_4
    move p3, v1

    :goto_5
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    if-nez v0, :cond_a

    goto :goto_7

    .line 15
    :cond_a
    iget-object p3, p2, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    const p3, 0x7f0a0549

    .line 16
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-nez p3, :cond_b

    goto :goto_8

    .line 17
    :cond_b
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    const p3, 0x7f0a0a5e

    .line 18
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_d

    .line 19
    iget v0, p2, Lcom/narvii/model/User;->onlineStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_9

    :cond_c
    const/4 v2, 0x4

    :goto_9
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 20
    invoke-static/range {v3 .. v8}, Lcom/narvii/user/list/UserItemLayoutHelper;->markDisabled$default(Lcom/narvii/user/list/UserItemLayoutHelper;Landroid/view/View;Lcom/narvii/model/NVObject;IILjava/lang/Object;)V

    :cond_e
    :goto_a
    return-void
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/user/list/UserItemLayoutHelper;->accountService:Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/user/list/UserItemLayoutHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method protected final markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/NVObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "cell"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->status()I

    .line 11
    move-result p2

    .line 12
    .line 13
    const/16 v0, 0x9

    .line 14
    .line 15
    if-ne p2, v0, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/user/list/UserItemLayoutHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 23
    move-result-object p2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, 0x0

    .line 26
    .line 27
    :goto_0
    if-eqz p2, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/narvii/model/User;->isCurator()Z

    .line 31
    move-result p2

    .line 32
    const/4 v0, 0x1

    .line 33
    .line 34
    if-ne p2, v0, :cond_1

    .line 35
    .line 36
    .line 37
    const p3, 0x7f080259

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    return-void
.end method
