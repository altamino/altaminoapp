.class public Lcom/narvii/notice/NoticeDetailFragment;
.super Lcom/narvii/list/NVListFragment;
.source "NoticeDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;,
        Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;,
        Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;,
        Lcom/narvii/notice/NoticeDetailFragment$AttachInfoAdapter;,
        Lcom/narvii/notice/NoticeDetailFragment$NoticeDetailAdapter;
    }
.end annotation


# instance fields
.field private appealTicketId:Ljava/lang/String;

.field private btnAppeal:Landroid/widget/TextView;

.field btnGotit:Landroid/view/View;

.field private community:Lcom/narvii/model/Community;

.field private notice:Lcom/narvii/account/notice/AccountNotice;

.field tagClickListener:Lcom/narvii/util/text/DefaultTagClickListener;

.field userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 153
    new-instance v0, Lcom/narvii/notice/NoticeDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeDetailFragment$1;-><init>(Lcom/narvii/notice/NoticeDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->tagClickListener:Lcom/narvii/util/text/DefaultTagClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/notice/NoticeDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeDetailFragment;->configDetailView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/notice/NoticeDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeDetailFragment;->configRefObjView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/notice/NoticeDetailFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/narvii/notice/NoticeDetailFragment;->updateNoticeCount()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/notice/NoticeDetailFragment;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/notice/NoticeDetailFragment;->btnAppeal:Landroid/widget/TextView;

    return-object p0
.end method

.method private appealNotice()V
    .locals 3

    .line 336
    new-instance v0, Lcom/narvii/notice/NoticeHelper;

    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 337
    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    new-instance v2, Lcom/narvii/notice/NoticeDetailFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/narvii/notice/NoticeDetailFragment$2;-><init>(Lcom/narvii/notice/NoticeDetailFragment;Lcom/narvii/notice/NoticeHelper;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/notice/NoticeHelper;->sendAppealNoticeRequest(Lcom/narvii/account/notice/AccountNotice;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private configDetailView(Landroid/view/View;)V
    .locals 8

    .line 161
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/narvii/account/notice/AccountNotice;->type:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 163
    :goto_0
    iget-object v3, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    if-eqz v3, :cond_2

    iget v3, v3, Lcom/narvii/account/notice/AccountNotice;->type:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 164
    iget-object v4, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    invoke-virtual {v4}, Lcom/narvii/account/notice/AccountNotice;->getNoticeLableColor()I

    move-result v4

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    const v4, -0x7a8a9

    goto :goto_2

    :cond_4
    const v4, -0x8800

    .line 165
    :goto_2
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 166
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 167
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v4, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz v3, :cond_5

    .line 169
    iget-object v3, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    invoke-virtual {v3}, Lcom/narvii/account/notice/AccountNotice;->getNoticeLabel()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    const v3, 0x7f0f1063

    goto :goto_3

    :cond_6
    const v3, 0x7f0f1188

    :goto_3
    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    const v4, 0x7f090619

    .line 170
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 171
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v6, 0x8

    if-eqz v3, :cond_7

    const/16 v3, 0x8

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f09032e

    .line 175
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 176
    iget-object v4, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    const/4 v5, 0x0

    if-nez v4, :cond_8

    move-object v4, v5

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object v4

    iget-object v7, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    iget-object v7, v7, Lcom/narvii/account/notice/AccountNotice;->createdTime:Ljava/util/Date;

    invoke-virtual {v4, v7}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f090742

    .line 178
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 179
    iget-object v4, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    if-nez v4, :cond_9

    const/4 v4, 0x0

    goto :goto_7

    :cond_9
    invoke-virtual {v4}, Lcom/narvii/account/notice/AccountNotice;->getMuteTime()I

    move-result v4

    :goto_7
    if-eqz v3, :cond_c

    if-eqz v0, :cond_a

    if-lez v4, :cond_a

    const/4 v0, 0x0

    goto :goto_8

    :cond_a
    const/16 v0, 0x8

    .line 181
    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne v4, v1, :cond_b

    const v0, 0x7f0f0be2

    new-array v1, v1, [Ljava/lang/Object;

    .line 183
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_b
    const v0, 0x7f0f0be3

    new-array v1, v1, [Ljava/lang/Object;

    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_9
    const v0, 0x7f0902d0

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    new-instance v1, Lcom/narvii/util/text/NVText;

    iget-object v3, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    if-nez v3, :cond_d

    const-string v3, ""

    goto :goto_a

    :cond_d
    invoke-virtual {v3}, Lcom/narvii/account/notice/AccountNotice;->strikeContent()Ljava/lang/String;

    move-result-object v3

    :goto_a
    invoke-direct {v1, v3}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v3, p0, Lcom/narvii/notice/NoticeDetailFragment;->tagClickListener:Lcom/narvii/util/text/DefaultTagClickListener;

    invoke-virtual {v1, v3}, Lcom/narvii/util/text/NVText;->markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    .line 192
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09029e

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->community:Lcom/narvii/model/Community;

    if-nez v1, :cond_e

    const/16 v2, 0x8

    :cond_e
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->community:Lcom/narvii/model/Community;

    if-eqz v0, :cond_f

    const v0, 0x7f0902a3

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 198
    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->community:Lcom/narvii/model/Community;

    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v0, 0x7f0902b6

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 201
    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->community:Lcom/narvii/model/Community;

    iget-object v1, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_f
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    if-nez v0, :cond_10

    move-object v0, v5

    goto :goto_b

    :cond_10
    iget-object v0, v0, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    :goto_b
    const v1, 0x7f090c10

    .line 205
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v0, :cond_14

    .line 207
    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const v1, 0x7f0900e4

    .line 208
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 209
    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v2, 0x7f090764

    .line 210
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    .line 211
    invoke-virtual {v0}, Lcom/narvii/model/User;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_11

    const v3, -0xc4c0c0

    goto :goto_c

    :cond_11
    const v3, -0xb56f1e

    .line 212
    :goto_c
    invoke-virtual {p1, v3}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 213
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    if-eqz v2, :cond_12

    move-object v0, v5

    goto :goto_d

    :cond_12
    move-object v0, p0

    .line 214
    :goto_d
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_13

    goto :goto_e

    :cond_13
    move-object v5, p0

    .line 215
    :goto_e
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    return-void
.end method

.method private configRefObjView(Landroid/view/View;)V
    .locals 12

    .line 253
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090afc

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090949

    .line 258
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 259
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0907a1

    .line 260
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    const v3, 0x7f0907a4

    .line 261
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0907a2

    .line 262
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090722

    .line 263
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/EmojioneView;

    .line 265
    iget-object v5, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    invoke-virtual {v5}, Lcom/narvii/account/notice/AccountNotice;->isGlobal()Z

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    const/16 v8, 0x8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 266
    :goto_0
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 267
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->attchObjectType()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 271
    :goto_2
    iget-object v5, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    const/4 v8, 0x0

    if-nez v5, :cond_4

    move-object v5, v8

    goto :goto_3

    :cond_4
    iget-object v5, v5, Lcom/narvii/account/notice/AccountNotice;->targetUser:Lcom/narvii/model/User;

    :goto_3
    if-eqz v0, :cond_5

    .line 273
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0702be

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v2, v9}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    if-eqz v0, :cond_6

    if-eqz v5, :cond_6

    .line 275
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0807ec

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v2, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 276
    invoke-virtual {v5}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto/16 :goto_a

    .line 278
    :cond_6
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060174

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v9, v2, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 279
    iget-object v9, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    invoke-virtual {v9}, Lcom/narvii/account/notice/AccountNotice;->attachObjectFirstMedia()Lcom/narvii/model/Media;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 281
    iget-object v10, v9, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-eqz v10, :cond_7

    const-string v11, "ndcsticker://e/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_8

    const/4 v10, 0x0

    goto :goto_6

    :cond_8
    const/16 v10, 0x8

    .line 282
    :goto_6
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    if-eqz v9, :cond_a

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    const/4 v10, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/16 v10, 0x8

    .line 283
    :goto_8
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_b

    .line 285
    iget-object v1, v9, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const/16 v10, 0xf

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    new-instance v10, Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v10}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    goto :goto_9

    .line 287
    :cond_b
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->attchObjectType()I

    move-result p1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_c

    const-string v8, "chat-message"

    goto :goto_9

    .line 289
    :cond_c
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->attchObjectType()I

    move-result p1

    const/16 v1, 0x6d

    if-ne p1, v1, :cond_d

    const-string v8, "shared-folder-image"

    .line 292
    :cond_d
    :goto_9
    iput-object v8, v2, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 293
    invoke-virtual {v2, v9}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    :goto_a
    if-eqz v0, :cond_f

    if-eqz v5, :cond_f

    .line 297
    invoke-virtual {v5}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {v5}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p1, 0x8

    goto :goto_b

    :cond_e
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d

    .line 300
    :cond_f
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->attachTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->attachTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/16 p1, 0x8

    goto :goto_c

    :cond_10
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    if-eqz v0, :cond_11

    if-eqz v5, :cond_11

    .line 305
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f

    .line 307
    :cond_11
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->attachContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->attachContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_e

    :cond_12
    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_f
    return-void
.end method

.method private openRefObject()V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "link"

    .line 393
    invoke-virtual {v0, v1}, Lcom/narvii/account/notice/AccountNotice;->attchObjectString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 396
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private resolveCurNotice()V
    .locals 5

    .line 403
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 407
    new-instance v1, Lcom/narvii/notice/NoticeDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/narvii/notice/NoticeDetailFragment$4;-><init>(Lcom/narvii/notice/NoticeDetailFragment;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 416
    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    iget v1, v1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 417
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/notice/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    iget-object v4, v4, Lcom/narvii/account/notice/AccountNotice;->noticeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/accept"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    if-nez v1, :cond_1

    .line 419
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 423
    :goto_0
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 424
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 425
    iget-object v3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 426
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method

.method private updateNoticeCount()V
    .locals 5

    .line 355
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "account"

    .line 358
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 359
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    iget v1, v1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    if-lez v1, :cond_2

    const-string v1, "api"

    .line 364
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 365
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "reminder/check"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    iget v3, v3, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 366
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    sget-object v3, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 367
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 368
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "ignoreUnreadChatThreadsCount"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 369
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "timezone"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    .line 370
    new-instance v3, Lcom/narvii/notice/NoticeDetailFragment$3;

    const-class v4, Lcom/narvii/community/ReminderCheckResult;

    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/notice/NoticeDetailFragment$3;-><init>(Lcom/narvii/notice/NoticeDetailFragment;Ljava/lang/Class;Lcom/narvii/account/AccountService;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_2
    const-string v0, "_notice"

    .line 383
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/incubator/IncubatorNoticeService;

    if-eqz v0, :cond_3

    .line 385
    invoke-virtual {v0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->sendGlobalNoticeRequest()V

    :cond_3
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 115
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 116
    new-instance v0, Lcom/narvii/notice/NoticeDetailFragment$NoticeDetailAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/notice/NoticeDetailFragment$NoticeDetailAdapter;-><init>(Lcom/narvii/notice/NoticeDetailFragment;Lcom/narvii/app/NVContext;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 117
    new-instance v0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;-><init>(Lcom/narvii/notice/NoticeDetailFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    new-instance v0, Lcom/narvii/notice/NoticeDetailFragment$AttachInfoAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/notice/NoticeDetailFragment$AttachInfoAdapter;-><init>(Lcom/narvii/notice/NoticeDetailFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x432a0000    # 170.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 316
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/notice/NoticeDetailFragment;->openRefObject()V

    goto :goto_0

    .line 319
    :sswitch_1
    invoke-direct {p0}, Lcom/narvii/notice/NoticeDetailFragment;->resolveCurNotice()V

    goto :goto_0

    .line 326
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    iget-object p1, p1, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 322
    :sswitch_3
    invoke-direct {p0}, Lcom/narvii/notice/NoticeDetailFragment;->appealNotice()V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900b7 -> :sswitch_3
        0x7f0900e4 -> :sswitch_2
        0x7f0904da -> :sswitch_1
        0x7f090764 -> :sswitch_2
        0x7f090afc -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "notice"

    .line 82
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/account/notice/AccountNotice;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/notice/AccountNotice;

    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    const-string p1, "community"

    .line 83
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->community:Lcom/narvii/model/Community;

    .line 84
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/narvii/account/notice/AccountNotice;->type:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const p1, 0x7f0f106a

    goto :goto_1

    :cond_2
    const p1, 0x7f0f118a

    .line 86
    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 87
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->getAppealTicketId()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->appealTicketId:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02c6

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 104
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0900b7

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment;->btnAppeal:Landroid/widget/TextView;

    .line 106
    iget-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment;->btnAppeal:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment;->btnAppeal:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->appealTicketId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p2, 0x7f0904da

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->btnGotit:Landroid/view/View;

    .line 109
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->btnGotit:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
