.class public Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;
.super Landroid/widget/LinearLayout;
.source "GlobalProfileHeaderView.java"

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

.field private recentVisitorHelper:Lcom/narvii/account/visitor/RecentVisitorHelper;

.field showBioDetailClickListener:Landroid/view/View$OnClickListener;

.field tvBio:Landroid/widget/TextView;

.field private tvHint:Landroid/widget/TextView;

.field user:Lcom/narvii/model/User;

.field visitorContainer:Landroid/view/View;

.field visitorCount:Lcom/narvii/widget/AutoSizingTextView;

.field visitorCountUnitTV:Landroid/widget/TextView;

.field visitorIncreaseLayout:Landroid/view/View;

.field visitorIncreaseTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 60
    iput-boolean p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    .line 97
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nvContext:Lcom/narvii/app/NVContext;

    const/4 p1, 0x0

    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 99
    invoke-direct {p0}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->configServices()V

    .line 100
    new-instance p1, Lcom/narvii/account/visitor/RecentVisitorHelper;

    iget-object p2, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/account/visitor/RecentVisitorHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->recentVisitorHelper:Lcom/narvii/account/visitor/RecentVisitorHelper;

    return-void
.end method

.method private configServices()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->account:Lcom/narvii/account/AccountService;

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->account:Lcom/narvii/account/AccountService;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipService:Lcom/narvii/wallet/MembershipService;

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "membership"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipService:Lcom/narvii/wallet/MembershipService;

    :cond_1
    return-void
.end method

.method private getRequiredLineCount(Landroid/widget/TextView;Ljava/lang/String;I)I
    .locals 8

    .line 441
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 442
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 443
    new-instance p1, Landroid/text/StaticLayout;

    const v5, 0x3f8ccccd    # 1.1f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 445
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    return p1
.end method

.method private updateViews()V
    .locals 10

    .line 198
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 199
    :goto_0
    iget-boolean v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    if-eqz v3, :cond_2

    .line 200
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isPremiumItemMembership()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 202
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v4, v2}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    .line 203
    iget-object v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v4, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    invoke-virtual {v3, v4, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 204
    iget-object v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nicknameView:Lcom/narvii/widget/NicknameView;

    iget-object v4, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    invoke-virtual {v3, v4}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 205
    iget-object v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nicknameView:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v3, v0}, Lcom/narvii/widget/NicknameView;->setMembership(Z)V

    .line 210
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    const/4 v3, 0x0

    if-nez v0, :cond_3

    move-object v0, v3

    goto :goto_2

    :cond_3
    iget-object v0, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    :goto_2
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 211
    iget-object v4, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    const/4 v5, -0x1

    if-eqz v0, :cond_4

    const v6, 0x50ffffff

    goto :goto_3

    :cond_4
    const/4 v6, -0x1

    :goto_3
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    iget-object v4, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v7, 0x2

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v4, v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 213
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    const-string v4, ""

    if-nez v0, :cond_6

    move-object v0, v4

    goto :goto_5

    :cond_6
    iget-object v0, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 214
    :goto_5
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    iget v6, v6, Lcom/narvii/model/User;->status:I

    const/16 v8, 0x9

    if-ne v6, v8, :cond_7

    goto :goto_6

    .line 218
    :cond_7
    new-instance v4, Lcom/narvii/util/text/NVText;

    invoke-direct {v4, v0, v5}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;I)V

    .line 219
    invoke-virtual {v4, v1}, Lcom/narvii/util/text/NVText;->setDarkTheme(Z)V

    .line 220
    sget-object v5, Lcom/narvii/util/text/DefaultTagClickListener;->instance:Lcom/narvii/util/text/OnTagClickListener;

    invoke-virtual {v4, v5, v1}, Lcom/narvii/util/text/NVText;->markHashtagAndLink(Lcom/narvii/util/text/OnTagClickListener;Z)I

    .line 221
    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 215
    :cond_8
    :goto_6
    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    const/16 v4, 0x8

    if-eqz v0, :cond_e

    .line 224
    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    if-nez v5, :cond_9

    .line 226
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07022b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    mul-float v8, v8, v6

    sub-float/2addr v5, v8

    float-to-int v5, v5

    .line 228
    :cond_9
    iget-object v6, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    if-le v6, v7, :cond_a

    .line 229
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->hintFrame:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_9

    .line 231
    :cond_a
    iget-object v6, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    if-lez v6, :cond_b

    .line 232
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->hintFrame:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_9

    .line 235
    :cond_b
    iget-object v6, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    invoke-direct {p0, v6, v0, v5}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->getRequiredLineCount(Landroid/widget/TextView;Ljava/lang/String;I)I

    move-result v0

    if-le v0, v7, :cond_c

    .line 237
    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 239
    :cond_c
    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->hintFrame:Landroid/view/View;

    if-le v0, v7, :cond_d

    const/4 v0, 0x0

    goto :goto_8

    :cond_d
    const/16 v0, 0x8

    :goto_8
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :goto_9
    iput-boolean v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    .line 242
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvHint:Landroid/widget/TextView;

    const v5, 0x7f0f0f62

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 243
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->imgHint:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0804f4

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 245
    :cond_e
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->hintFrame:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :goto_a
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstanceIgnoreScroll()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 248
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

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
    const v6, 0x7f0f0c2f

    goto :goto_c

    :cond_10
    :goto_b
    const v6, 0x7f0f109d

    :goto_c
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

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
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->chatEntry:Landroid/view/View;

    iget-boolean v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    if-eqz v5, :cond_13

    const/16 v5, 0x8

    goto :goto_e

    :cond_13
    const/4 v5, 0x0

    :goto_e
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->aminoId:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-nez v5, :cond_14

    move-object v5, v3

    goto :goto_f

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

    .line 253
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followerCount:Lcom/narvii/widget/AutoSizingTextView;

    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-nez v5, :cond_15

    move-object v5, v3

    goto :goto_10

    :cond_15
    iget v5, v5, Lcom/narvii/model/User;->membersCount:I

    invoke-static {v5}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v5

    :goto_10
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followerCount:Lcom/narvii/widget/AutoSizingTextView;

    invoke-virtual {v0}, Lcom/narvii/widget/AutoSizingTextView;->resizingFromMaxSize()V

    .line 255
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_16

    iget v0, v0, Lcom/narvii/model/User;->membersCount:I

    if-ne v0, v1, :cond_16

    .line 256
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followerCountUnitTV:Landroid/widget/TextView;

    const v5, 0x7f0f112a

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_11

    .line 258
    :cond_16
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followerCountUnitTV:Landroid/widget/TextView;

    const v5, 0x7f0f112b

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 260
    :goto_11
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followingCount:Lcom/narvii/widget/AutoSizingTextView;

    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-nez v5, :cond_17

    move-object v5, v3

    goto :goto_12

    :cond_17
    iget v5, v5, Lcom/narvii/model/User;->joinedCount:I

    invoke-static {v5}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v5

    :goto_12
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followingCount:Lcom/narvii/widget/AutoSizingTextView;

    invoke-virtual {v0}, Lcom/narvii/widget/AutoSizingTextView;->resizingFromMaxSize()V

    .line 263
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorCount:Lcom/narvii/widget/AutoSizingTextView;

    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-nez v5, :cond_18

    goto :goto_13

    :cond_18
    iget v3, v5, Lcom/narvii/model/User;->visitorsCount:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v3

    :goto_13
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorCount:Lcom/narvii/widget/AutoSizingTextView;

    invoke-virtual {v0}, Lcom/narvii/widget/AutoSizingTextView;->resizingFromMaxSize()V

    .line 265
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_19

    iget v0, v0, Lcom/narvii/model/User;->visitorsCount:I

    if-ne v0, v1, :cond_19

    .line 266
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorCountUnitTV:Landroid/widget/TextView;

    const v3, 0x7f0f1146

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_14

    .line 268
    :cond_19
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorCountUnitTV:Landroid/widget/TextView;

    const v3, 0x7f0f1147

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 270
    :goto_14
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_1a

    iget v0, v0, Lcom/narvii/model/User;->visitPrivacy:I

    if-ne v0, v7, :cond_1a

    goto :goto_15

    :cond_1a
    const/4 v1, 0x0

    .line 271
    :goto_15
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorCount:Lcom/narvii/widget/AutoSizingTextView;

    const/4 v3, 0x4

    if-eqz v1, :cond_1c

    iget-boolean v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    if-eqz v5, :cond_1b

    goto :goto_16

    :cond_1b
    const/4 v5, 0x4

    goto :goto_17

    :cond_1c
    :goto_16
    const/4 v5, 0x0

    :goto_17
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f090cad

    .line 272
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_1d

    iget-boolean v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    if-eqz v5, :cond_1d

    const/4 v3, 0x0

    :cond_1d
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0901bf

    .line 273
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    if-nez v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_18

    :cond_1e
    const/16 v1, 0x8

    :goto_18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->editButton:Landroid/view/View;

    iget-boolean v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    goto :goto_19

    :cond_1f
    const/16 v1, 0x8

    :goto_19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    iget-boolean v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    iget-object v5, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0, v1, v3, v5}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->updateFollowState(Lcom/narvii/model/User;ZLcom/narvii/account/AccountService;)V

    .line 278
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_20

    .line 279
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->linkedCommuView:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->linkedCommuView:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    iget-object v1, v1, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->updateLinkedCommunities(Ljava/util/List;)V

    goto :goto_1a

    .line 282
    :cond_20
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->linkedCommuView:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1a
    return-void
.end method


# virtual methods
.method public getNicknameView()Lcom/narvii/widget/NicknameView;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nicknameView:Lcom/narvii/widget/NicknameView;

    return-object v0
.end method

.method public hideToolTip()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    invoke-virtual {v0}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->hideToolTip()V

    .line 431
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->recentVisitorHelper:Lcom/narvii/account/visitor/RecentVisitorHelper;

    invoke-virtual {v0}, Lcom/narvii/account/visitor/RecentVisitorHelper;->hideToolTips()V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$GlobalProfileHeaderView()Ljava/lang/Boolean;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->recentVisitorHelper:Lcom/narvii/account/visitor/RecentVisitorHelper;

    invoke-virtual {v0}, Lcom/narvii/account/visitor/RecentVisitorHelper;->isTooltipShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "id"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    .line 401
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-nez p1, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "VisitorIcon"

    .line 405
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    iget v0, v0, Lcom/narvii/model/User;->visitPrivacy:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    .line 406
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "privacyMode"

    invoke-virtual {p1, v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 407
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 408
    const-class p1, Lcom/narvii/visitor/RecentVisitorListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 409
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    const-string v3, "uid"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    iget v0, v0, Lcom/narvii/model/User;->visitPrivacy:I

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 308
    :sswitch_1
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipPreClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    .line 309
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 312
    :cond_3
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_4

    .line 313
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 317
    :cond_4
    const-class p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 318
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 329
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 322
    :sswitch_3
    iget-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    .line 323
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvHint:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0f0f62

    goto :goto_0

    :cond_5
    const v0, 0x7f0f0760

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 324
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->imgHint:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    if-eqz v1, :cond_6

    const v1, 0x7f0804f4

    goto :goto_1

    :cond_6
    const v1, 0x7f0804f3

    :goto_1
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isCollapsed:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_2

    :cond_7
    const/16 v0, 0x64

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_3

    .line 379
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-nez p1, :cond_8

    return-void

    .line 382
    :cond_8
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->page:Lcom/narvii/app/NVContext;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Following"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 384
    const-class p1, Lcom/narvii/master/home/follow/GlobalFollowingListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 385
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 390
    :sswitch_5
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    if-nez p1, :cond_9

    return-void

    .line 393
    :cond_9
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->page:Lcom/narvii/app/NVContext;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Followers"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 395
    const-class p1, Lcom/narvii/master/home/follow/GlobalFollowersListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 396
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 372
    :sswitch_6
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->page:Lcom/narvii/app/NVContext;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "EditProfile"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 374
    const-class p1, Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 375
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 334
    :sswitch_7
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->addBioPreClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_a

    .line 335
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 337
    :cond_a
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_b

    .line 338
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 343
    :cond_b
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->showBioDetailClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_c

    .line 344
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_c
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090131 -> :sswitch_7
        0x7f0903c0 -> :sswitch_6
        0x7f0904b1 -> :sswitch_5
        0x7f0904b3 -> :sswitch_4
        0x7f090512 -> :sswitch_3
        0x7f0906a3 -> :sswitch_2
        0x7f0906f5 -> :sswitch_1
        0x7f0906f6 -> :sswitch_1
        0x7f090cb3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 143
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090c10

    .line 144
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f090131

    .line 147
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvBio:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090764

    .line 149
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->nicknameView:Lcom/narvii/widget/NicknameView;

    const v0, 0x7f090512

    .line 150
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->hintFrame:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->hintFrame:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090514

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->tvHint:Landroid/widget/TextView;

    const v0, 0x7f090513

    .line 153
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->imgHint:Landroid/widget/ImageView;

    const v0, 0x7f0906f6

    .line 154
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipHint:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipHint:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903c0

    .line 156
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->editButton:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->editButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904ae

    .line 158
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    const v0, 0x7f0900a0

    .line 159
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->aminoId:Landroid/widget/TextView;

    const v0, 0x7f0904af

    .line 161
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/AutoSizingTextView;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followerCount:Lcom/narvii/widget/AutoSizingTextView;

    const v0, 0x7f0904b0

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followerCountUnitTV:Landroid/widget/TextView;

    const v0, 0x7f0904b1

    .line 163
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904b2

    .line 164
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/AutoSizingTextView;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followingCount:Lcom/narvii/widget/AutoSizingTextView;

    const v0, 0x7f0904b3

    .line 165
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090cae

    .line 167
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/AutoSizingTextView;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorCount:Lcom/narvii/widget/AutoSizingTextView;

    const v0, 0x7f090caf

    .line 168
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorCountUnitTV:Landroid/widget/TextView;

    const v0, 0x7f090cb0

    .line 169
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorIncreaseLayout:Landroid/view/View;

    const v0, 0x7f090cb1

    .line 170
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorIncreaseTV:Landroid/widget/TextView;

    const v0, 0x7f090cb3

    .line 171
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorContainer:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090671

    .line 174
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->linkedCommuView:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    const v0, 0x7f0901e2

    .line 175
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->chatEntry:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->linkedCommuView:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->page:Lcom/narvii/app/NVContext;

    invoke-virtual {v0, v1}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->setPage(Lcom/narvii/app/NVContext;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    new-instance v1, Lcom/narvii/master/home/widgets/-$$Lambda$GlobalProfileHeaderView$wwSrqGAZv7zwcze4zhORJrx8v0o;

    invoke-direct {v1, p0}, Lcom/narvii/master/home/widgets/-$$Lambda$GlobalProfileHeaderView$wwSrqGAZv7zwcze4zhORJrx8v0o;-><init>(Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;)V

    invoke-virtual {v0, v1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->setCheckCanShowTooltip(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public performFollowAnimation()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    invoke-virtual {v0}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->performFollowAnimation()V

    return-void
.end method

.method public setAddBioPreClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->addBioPreClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setFollowClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    invoke-virtual {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->setFollowClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFollowNotificationListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    invoke-virtual {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->setFollowNotificationListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMembershipPreClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->membershipPreClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setPage(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 105
    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->page:Lcom/narvii/app/NVContext;

    .line 106
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->linkedCommuView:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;->setPage(Lcom/narvii/app/NVContext;)V

    :cond_0
    return-void
.end method

.method public setSendingFollow(Z)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    invoke-virtual {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->setSendingFollow(Z)V

    return-void
.end method

.method public setSendingFollowNotification(Z)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->followView:Lcom/narvii/master/home/widgets/GlobalProfileFollowView;

    invoke-virtual {v0, p1}, Lcom/narvii/master/home/widgets/GlobalProfileFollowView;->setSendingFollowNotification(Z)V

    return-void
.end method

.method public setShowBioDetailClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->showBioDetailClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setStartChatListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->chatEntry:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public updateTooltipHints(Landroid/view/View;)V
    .locals 6

    .line 300
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->recentVisitorHelper:Lcom/narvii/account/visitor/RecentVisitorHelper;

    iget-object v1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    iget-boolean v2, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->isMe:Z

    iget-object v3, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorCountUnitTV:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->chatEntry:Landroid/view/View;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/visitor/RecentVisitorHelper;->checkVisitorTooltips(Lcom/narvii/model/User;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public updateViews(Lcom/narvii/model/User;)V
    .locals 2

    .line 192
    iput-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->user:Lcom/narvii/model/User;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 193
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

    .line 194
    invoke-direct {p0}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->updateViews()V

    return-void
.end method

.method public updateVisitorIncreaseView(I)V
    .locals 2

    if-gtz p1, :cond_0

    .line 288
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorIncreaseLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorIncreaseLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    .line 292
    iget-object p1, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorIncreaseTV:Landroid/widget/TextView;

    const-string v0, "99+"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->visitorIncreaseTV:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
