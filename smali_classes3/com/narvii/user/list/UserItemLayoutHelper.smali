.class public final Lcom/narvii/user/list/UserItemLayoutHelper;
.super Ljava/lang/Object;
.source "UserItemLayoutHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserItemLayoutHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserItemLayoutHelper.kt\ncom/narvii/user/list/UserItemLayoutHelper\n*L\n1#1,72:1\n*E\n"
.end annotation


# instance fields
.field private final accountService:Lcom/narvii/account/AccountService;

.field private final ctx:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/user/list/UserItemLayoutHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 19
    iget-object p1, p0, Lcom/narvii/user/list/UserItemLayoutHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService<AccountService>(\"account\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/user/list/UserItemLayoutHelper;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method public static synthetic configLayout$default(Lcom/narvii/user/list/UserItemLayoutHelper;Landroid/view/View;Lcom/narvii/model/User;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 23
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/user/list/UserItemLayoutHelper;->configLayout(Landroid/view/View;Lcom/narvii/model/User;Z)V

    return-void
.end method

.method public static synthetic markDisabled$default(Lcom/narvii/user/list/UserItemLayoutHelper;Landroid/view/View;Lcom/narvii/model/NVObject;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/user/list/UserItemLayoutHelper;->markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;I)V

    return-void
.end method


# virtual methods
.method public final configLayout(Landroid/view/View;Lcom/narvii/model/User;)V
    .locals 6

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
    .locals 10

    if-eqz p1, :cond_10

    if-nez p2, :cond_0

    goto/16 :goto_7

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    const v0, 0x7f090c10

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0900e4

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/narvii/widget/ThumbImageView;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_3
    :goto_0
    const v0, 0x7f090764

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    instance-of v1, v0, Lcom/narvii/widget/NicknameView;

    if-eqz v1, :cond_4

    .line 36
    check-cast v0, Lcom/narvii/widget/NicknameView;

    invoke-virtual {v0, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    goto :goto_1

    .line 37
    :cond_4
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 38
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    const v0, 0x7f09006f

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_6

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const v0, 0x7f0900a0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    if-eqz p3, :cond_a

    .line 45
    iget-object p3, p2, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    if-eqz p3, :cond_8

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_7

    goto :goto_2

    :cond_7
    const/4 p3, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 p3, 0x1

    :goto_3
    if-eqz p3, :cond_9

    goto :goto_4

    :cond_9
    const/4 p3, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/16 p3, 0x8

    :goto_5
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    if-eqz v0, :cond_c

    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    const p3, 0x7f090411

    .line 49
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_d

    .line 51
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    const p3, 0x7f0907ba

    .line 53
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_f

    .line 55
    iget v0, p2, Lcom/narvii/model/User;->onlineStatus:I

    if-ne v0, v2, :cond_e

    goto :goto_6

    :cond_e
    const/4 v3, 0x4

    :goto_6
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 59
    invoke-static/range {v4 .. v9}, Lcom/narvii/user/list/UserItemLayoutHelper;->markDisabled$default(Lcom/narvii/user/list/UserItemLayoutHelper;Landroid/view/View;Lcom/narvii/model/NVObject;IILjava/lang/Object;)V

    :cond_10
    :goto_7
    return-void
.end method

.method public final getAccountService()Lcom/narvii/account/AccountService;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/user/list/UserItemLayoutHelper;->accountService:Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/narvii/user/list/UserItemLayoutHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method protected final markDisabled(Landroid/view/View;Lcom/narvii/model/NVObject;I)V
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 64
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->status()I

    move-result p2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 65
    iget-object p2, p0, Lcom/narvii/user/list/UserItemLayoutHelper;->accountService:Lcom/narvii/account/AccountService;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 66
    invoke-virtual {p2}, Lcom/narvii/model/User;->isCurator()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const p3, 0x7f0801ce

    .line 70
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
