.class public Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BIO_MAX_LINES_COLLAPSE:I = 0x2


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field addBioPreClickListener:Landroid/view/View$OnClickListener;

.field aminoId:Landroid/widget/TextView;

.field avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

.field chatEntry:Landroid/view/View;

.field editButton:Landroid/view/View;

.field followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

.field followerCount:Lcom/narvii/widget/AutoSizingTextView;

.field followerCountUnitTV:Landroid/widget/TextView;

.field followingCount:Lcom/narvii/widget/AutoSizingTextView;

.field private hintFrame:Landroid/view/View;

.field private imgHint:Landroid/widget/ImageView;

.field private isCollapsed:Z

.field isMe:Z

.field linkedCommuView:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

.field membershipHint:Landroid/view/View;

.field membershipPreClickListener:Landroid/view/View$OnClickListener;

.field membershipService:Lcom/narvii/wallet/MembershipService;

.field nicknameView:Lcom/narvii/widget/NicknameView;

.field nvContext:Lcom/narvii/app/NVContext;

.field page:Lcom/narvii/app/NVContext;

.field showBioDetailClickListener:Landroid/view/View$OnClickListener;

.field tvBio:Landroid/widget/TextView;

.field private tvHint:Landroid/widget/TextView;

.field user:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    .line 3
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nvContext:Lcom/narvii/app/NVContext;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5
    invoke-direct {p0}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->configServices()V

    return-void
.end method

.method private configServices()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v1, "account"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->account:Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nvContext:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    const-string v1, "membership"

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 33
    :cond_1
    return-void
.end method

.method private getRequiredLineCount(Landroid/widget/TextView;Ljava/lang/String;I)I
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 4
    move-result-object v2

    .line 5
    .line 6
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 7
    .line 8
    new-instance p1, Landroid/text/StaticLayout;

    .line 9
    .line 10
    .line 11
    const v5, 0x3f8ccccd    # 1.1f

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    move-object v0, p1

    .line 15
    move-object v1, p2

    .line 16
    move v3, p3

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateViews()V
    .locals 9

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 4
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isPremiumItemMembership()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 5
    invoke-virtual {v3, v4, v2}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    iget-object v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v4, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    .line 6
    invoke-virtual {v3, v4, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    iget-object v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nicknameView:Lcom/narvii/widget/NicknameView;

    iget-object v4, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    .line 7
    invoke-virtual {v3, v4}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    iget-object v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 8
    invoke-virtual {v3, v0}, Lcom/narvii/widget/NicknameView;->setMembership(Z)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    const/4 v3, 0x0

    if-nez v0, :cond_3

    move-object v0, v3

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    :goto_2
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v4, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    const/4 v5, -0x1

    if-eqz v0, :cond_4

    const v6, 0x50ffffff

    goto :goto_3

    :cond_4
    move v6, v5

    .line 10
    :goto_3
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 11
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v7, 0x2

    if-eqz v0, :cond_5

    move v0, v7

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    invoke-virtual {v4, v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    const-string v4, ""

    if-nez v0, :cond_6

    move-object v0, v4

    goto :goto_5

    .line 12
    :cond_6
    iget-object v0, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 13
    :goto_5
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    iget v6, v6, Lcom/narvii/model/User;->status:I

    const/16 v8, 0x9

    if-ne v6, v8, :cond_7

    goto :goto_6

    .line 14
    :cond_7
    new-instance v4, Lcom/narvii/util/text/NVText;

    invoke-direct {v4, v0, v5}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;I)V

    .line 15
    invoke-virtual {v4, v1}, Lcom/narvii/util/text/NVText;->setDarkTheme(Z)V

    .line 16
    sget-object v5, Lcom/narvii/util/text/DefaultTagClickListener;->instance:Lcom/narvii/util/text/OnTagClickListener;

    invoke-virtual {v4, v5, v1}, Lcom/narvii/util/text/NVText;->markHashtagAndLink(Lcom/narvii/util/text/OnTagClickListener;Z)I

    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 17
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_8
    :goto_6
    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 18
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    const/16 v4, 0x8

    if-eqz v0, :cond_e

    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 19
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-nez v5, :cond_9

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f070448

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    float-to-int v5, v5

    :cond_9
    iget-object v6, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 21
    invoke-virtual {v6}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    if-le v6, v7, :cond_a

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->hintFrame:Landroid/view/View;

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 23
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_9

    :cond_a
    iget-object v6, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 24
    invoke-virtual {v6}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    if-lez v6, :cond_b

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->hintFrame:Landroid/view/View;

    .line 25
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 26
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_9

    :cond_b
    iget-object v6, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 27
    invoke-direct {p0, v6, v0, v5}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->getRequiredLineCount(Landroid/widget/TextView;Ljava/lang/String;I)I

    move-result v0

    if-le v0, v7, :cond_c

    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 28
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_c
    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->hintFrame:Landroid/view/View;

    if-le v0, v7, :cond_d

    move v0, v2

    goto :goto_8

    :cond_d
    move v0, v4

    .line 29
    :goto_8
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    iput-boolean v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvHint:Landroid/widget/TextView;

    const v5, 0x7f12106e

    .line 30
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->imgHint:Landroid/widget/ImageView;

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080622

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_e
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->hintFrame:Landroid/view/View;

    .line 32
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 33
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstanceIgnoreScroll()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v6, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v6}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_b

    :cond_f
    const v6, 0x7f120d5d

    goto :goto_c

    :cond_10
    :goto_b
    const v6, 0x7f121198

    :goto_c
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 35
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-boolean v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v5}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    move-object v5, p0

    goto :goto_d

    :cond_12
    move-object v5, v3

    :goto_d
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->chatEntry:Landroid/view/View;

    iget-boolean v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    if-eqz v5, :cond_13

    move v5, v4

    goto :goto_e

    :cond_13
    move v5, v2

    .line 36
    :goto_e
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->aminoId:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-nez v5, :cond_14

    move-object v5, v3

    goto :goto_f

    .line 37
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    iget-object v6, v6, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_f
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followerCount:Lcom/narvii/widget/AutoSizingTextView;

    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-nez v5, :cond_15

    move-object v5, v3

    goto :goto_10

    .line 38
    :cond_15
    iget v5, v5, Lcom/narvii/model/User;->membersCount:I

    invoke-static {v5}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v5

    :goto_10
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followerCount:Lcom/narvii/widget/AutoSizingTextView;

    .line 39
    invoke-virtual {v0}, Lcom/narvii/widget/AutoSizingTextView;->resizingFromMaxSize()V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_16

    .line 40
    iget v0, v0, Lcom/narvii/model/User;->membersCount:I

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followerCountUnitTV:Landroid/widget/TextView;

    const v1, 0x7f121235

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_11

    :cond_16
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followerCountUnitTV:Landroid/widget/TextView;

    const v1, 0x7f121236

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_11
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followingCount:Lcom/narvii/widget/AutoSizingTextView;

    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-nez v1, :cond_17

    goto :goto_12

    .line 43
    :cond_17
    iget v1, v1, Lcom/narvii/model/User;->joinedCount:I

    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v3

    :goto_12
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followingCount:Lcom/narvii/widget/AutoSizingTextView;

    .line 44
    invoke-virtual {v0}, Lcom/narvii/widget/AutoSizingTextView;->resizingFromMaxSize()V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->editButton:Landroid/view/View;

    iget-boolean v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    if-eqz v1, :cond_18

    move v1, v2

    goto :goto_13

    :cond_18
    move v1, v4

    .line 45
    :goto_13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    iget-boolean v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->account:Lcom/narvii/account/AccountService;

    .line 46
    invoke-virtual {v0, v1, v3, v5}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->updateFollowState(Lcom/narvii/model/User;ZLcom/narvii/account/AccountService;)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->linkedCommuView:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->linkedCommuView:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    .line 48
    iget-object v1, v1, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->updateLinkedCommunities(Ljava/util/List;)V

    goto :goto_14

    :cond_19
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->linkedCommuView:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    .line 49
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_14
    return-void
.end method


# virtual methods
.method public getNicknameView()Lcom/narvii/widget/NicknameView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nicknameView:Lcom/narvii/widget/NicknameView;

    return-object v0
.end method

.method public hideToolTip()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->hideToolTip()V

    .line 6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, "id"

    .line 7
    .line 8
    const-class v2, Lcom/narvii/account/LoginActivity;

    .line 9
    .line 10
    .line 11
    sparse-switch v0, :sswitch_data_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :sswitch_0
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipPreClickListener:Landroid/view/View$OnClickListener;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->account:Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    new-instance p1, Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 45
    return-void

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-static {}, Lcom/narvii/wallet/membership/MembershipActivity;->createMembershipIntent()Landroid/content/Intent;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-static {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :sswitch_2
    iget-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    .line 79
    .line 80
    xor-int/lit8 p1, p1, 0x1

    .line 81
    .line 82
    iput-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvHint:Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    .line 89
    const p1, 0x7f12106e

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :cond_2
    const p1, 0x7f12080d

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->imgHint:Landroid/widget/ImageView;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    iget-boolean v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    .line 105
    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    .line 109
    const v1, 0x7f080622

    .line 110
    goto :goto_1

    .line 111
    .line 112
    .line 113
    :cond_3
    const v1, 0x7f080621

    .line 114
    .line 115
    .line 116
    :goto_1
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    .line 122
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 123
    .line 124
    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    .line 125
    .line 126
    if-eqz v0, :cond_4

    .line 127
    const/4 v0, 0x2

    .line 128
    goto :goto_2

    .line 129
    .line 130
    :cond_4
    const/16 v0, 0x64

    .line 131
    .line 132
    .line 133
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 134
    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    .line 138
    .line 139
    if-nez p1, :cond_5

    .line 140
    return-void

    .line 141
    .line 142
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->page:Lcom/narvii/app/NVContext;

    .line 143
    .line 144
    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 145
    .line 146
    .line 147
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    const-string v0, "Following"

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 158
    .line 159
    const-class p1, Lcom/narvii/master/home/follow/GlobalFollowingListFragment;

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    .line 177
    invoke-static {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 178
    goto :goto_3

    .line 179
    .line 180
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    .line 181
    .line 182
    if-nez p1, :cond_6

    .line 183
    return-void

    .line 184
    .line 185
    :cond_6
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->page:Lcom/narvii/app/NVContext;

    .line 186
    .line 187
    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 188
    .line 189
    .line 190
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    const-string v0, "Followers"

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 197
    move-result-object p1

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 201
    .line 202
    const-class p1, Lcom/narvii/master/home/follow/GlobalFollowersListFragment;

    .line 203
    .line 204
    .line 205
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 206
    move-result-object p1

    .line 207
    .line 208
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    .line 209
    .line 210
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    .line 220
    invoke-static {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 221
    goto :goto_3

    .line 222
    .line 223
    :sswitch_5
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->page:Lcom/narvii/app/NVContext;

    .line 224
    .line 225
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 226
    .line 227
    .line 228
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    const-string v0, "EditProfile"

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 235
    move-result-object p1

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 239
    .line 240
    const-class p1, Lcom/narvii/master/home/profile/ProfileListFragment;

    .line 241
    .line 242
    .line 243
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 244
    move-result-object p1

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 248
    move-result-object v0

    .line 249
    .line 250
    .line 251
    invoke-static {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 252
    goto :goto_3

    .line 253
    .line 254
    :sswitch_6
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->addBioPreClickListener:Landroid/view/View$OnClickListener;

    .line 255
    .line 256
    if-eqz v0, :cond_7

    .line 257
    .line 258
    .line 259
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 260
    .line 261
    :cond_7
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->account:Lcom/narvii/account/AccountService;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 265
    move-result v0

    .line 266
    .line 267
    if-nez v0, :cond_8

    .line 268
    .line 269
    new-instance p1, Landroid/content/Intent;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 273
    move-result-object v0

    .line 274
    .line 275
    .line 276
    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 280
    move-result-object v0

    .line 281
    .line 282
    .line 283
    invoke-static {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 284
    return-void

    .line 285
    .line 286
    :cond_8
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->showBioDetailClickListener:Landroid/view/View$OnClickListener;

    .line 287
    .line 288
    if-eqz v0, :cond_9

    .line 289
    .line 290
    .line 291
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 292
    :cond_9
    :goto_3
    return-void

    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :sswitch_data_0
    .sparse-switch
        0x7f0a01cd -> :sswitch_6
        0x7f0a04b7 -> :sswitch_5
        0x7f0a05f3 -> :sswitch_4
        0x7f0a05f5 -> :sswitch_3
        0x7f0a066c -> :sswitch_2
        0x7f0a082e -> :sswitch_1
        0x7f0a0957 -> :sswitch_0
        0x7f0a0958 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0f36

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a01cd

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0a09f9

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a066c

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->hintFrame:Landroid/view/View;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0a0670

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvHint:Landroid/widget/TextView;

    .line 63
    .line 64
    .line 65
    const v0, 0x7f0a066d

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    check-cast v0, Landroid/widget/ImageView;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->imgHint:Landroid/widget/ImageView;

    .line 74
    .line 75
    .line 76
    const v0, 0x7f0a0958

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipHint:Landroid/view/View;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    const v0, 0x7f0a04b7

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->editButton:Landroid/view/View;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    const v0, 0x7f0a05f0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    check-cast v0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 107
    .line 108
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 109
    .line 110
    .line 111
    const v0, 0x7f0a0108

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    check-cast v0, Landroid/widget/TextView;

    .line 118
    .line 119
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->aminoId:Landroid/widget/TextView;

    .line 120
    .line 121
    .line 122
    const v0, 0x7f0a05f1

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    check-cast v0, Lcom/narvii/widget/AutoSizingTextView;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followerCount:Lcom/narvii/widget/AutoSizingTextView;

    .line 131
    .line 132
    .line 133
    const v0, 0x7f0a05f2

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    check-cast v0, Landroid/widget/TextView;

    .line 140
    .line 141
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followerCountUnitTV:Landroid/widget/TextView;

    .line 142
    .line 143
    .line 144
    const v0, 0x7f0a05f3

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    const v0, 0x7f0a05f4

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    check-cast v0, Lcom/narvii/widget/AutoSizingTextView;

    .line 161
    .line 162
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followingCount:Lcom/narvii/widget/AutoSizingTextView;

    .line 163
    .line 164
    .line 165
    const v0, 0x7f0a05f5

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    const v0, 0x7f0a07f6

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    check-cast v0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    .line 182
    .line 183
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->linkedCommuView:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    .line 184
    .line 185
    .line 186
    const v0, 0x7f0a0299

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->chatEntry:Landroid/view/View;

    .line 193
    .line 194
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->linkedCommuView:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    .line 195
    .line 196
    if-eqz v0, :cond_0

    .line 197
    .line 198
    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->page:Lcom/narvii/app/NVContext;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->setPage(Lcom/narvii/app/NVContext;)V

    .line 202
    :cond_0
    return-void
.end method

.method public performFollowAnimation()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->performFollowAnimation()V

    .line 6
    return-void
.end method

.method public setAddBioPreClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->addBioPreClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setFollowClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->setFollowClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    return-void
.end method

.method public setFollowNotificationListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->setFollowNotificationListener(Landroid/view/View$OnClickListener;)V

    .line 6
    return-void
.end method

.method public setMembershipPreClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipPreClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPage(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->page:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->linkedCommuView:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->setPage(Lcom/narvii/app/NVContext;)V

    .line 10
    :cond_0
    return-void
.end method

.method public setSendingFollow(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->setSendingFollow(Z)V

    .line 6
    return-void
.end method

.method public setSendingFollowNotification(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->setSendingFollowNotification(Z)V

    .line 6
    return-void
.end method

.method public setShowBioDetailClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->showBioDetailClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setStartChatListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->chatEntry:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    return-void
.end method

.method public updateTooltipHints(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public updateViews(Lcom/narvii/model/User;)V
    .locals 2

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->account:Lcom/narvii/account/AccountService;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    .line 2
    invoke-direct {p0}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->updateViews()V

    return-void
.end method
