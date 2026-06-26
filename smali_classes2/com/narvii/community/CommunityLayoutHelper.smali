.class public Lcom/narvii/community/CommunityLayoutHelper;
.super Ljava/lang/Object;
.source "CommunityLayoutHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommunityLayoutHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommunityLayoutHelper.kt\ncom/narvii/community/CommunityLayoutHelper\n*L\n1#1,119:1\n*E\n"
.end annotation


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field private flowLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation
.end field

.field private languageManager:Lcom/narvii/language/LanguageManager;

.field private languageService:Lcom/narvii/language/ContentLanguageService;

.field private localCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    .line 29
    new-instance p1, Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;

    invoke-direct {p1, p0}, Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;-><init>(Lcom/narvii/community/CommunityLayoutHelper;)V

    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->flowLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;

    .line 35
    iget-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "language"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "context.getService(\"language\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/language/LanguageManager;

    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->languageManager:Lcom/narvii/language/LanguageManager;

    .line 36
    iget-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "content_language"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 37
    iget-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v0, "Locale.getDefault()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Locale.getDefault().language"

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/language/ContentLanguageService;->getLanguageShowCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "languageService!!.languageShowCode"

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->localCode:Ljava/lang/String;

    return-void

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static synthetic configCommunityCard$default(Lcom/narvii/community/CommunityLayoutHelper;Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;ILjava/lang/Object;)V
    .locals 7

    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 54
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    return-void

    .line 0
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: configCommunityCard"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard$default(Lcom/narvii/community/CommunityLayoutHelper;Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;ILjava/lang/Object;)V

    return-void
.end method

.method public configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;Z)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard$default(Lcom/narvii/community/CommunityLayoutHelper;Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;ILjava/lang/Object;)V

    return-void
.end method

.method public configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZ)V
    .locals 8

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard$default(Lcom/narvii/community/CommunityLayoutHelper;Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;ILjava/lang/Object;)V

    return-void
.end method

.method public configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "cell"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget v3, Lcom/narvii/lib/R$id;->community_icon:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/NVImageView;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    .line 57
    iget-object v5, v2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/Community;->themeColor()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    .line 62
    :cond_2
    sget v3, Lcom/narvii/lib/R$id;->community_name:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    .line 63
    iget-object v5, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    if-eqz v3, :cond_6

    if-eqz p3, :cond_5

    const/4 v7, -0x1

    goto :goto_2

    :cond_5
    const/high16 v7, -0x1000000

    .line 64
    :goto_2
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    if-eqz p4, :cond_7

    .line 66
    invoke-static {v3}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 69
    :cond_7
    sget v3, Lcom/narvii/lib/R$id;->community_language:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_9

    if-eqz p3, :cond_8

    const/4 v7, -0x1

    goto :goto_3

    :cond_8
    const/high16 v7, -0x1000000

    .line 70
    :goto_3
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    if-eqz v3, :cond_d

    .line 71
    iget-object v7, v0, Lcom/narvii/community/CommunityLayoutHelper;->languageManager:Lcom/narvii/language/LanguageManager;

    if-eqz v2, :cond_a

    iget-object v8, v2, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object v8, v4

    :goto_4
    invoke-virtual {v7, v8}, Lcom/narvii/language/LanguageManager;->getLocalDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    goto :goto_5

    :cond_b
    if-eqz v2, :cond_c

    .line 72
    iget-object v7, v2, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    goto :goto_5

    :cond_c
    move-object v7, v4

    :goto_5
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_d
    sget v3, Lcom/narvii/lib/R$id;->member_count:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v7, ""

    if-eqz v3, :cond_f

    if-eqz v2, :cond_e

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/Community;->getMemberCount()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    goto :goto_6

    :cond_e
    move-object v8, v7

    :goto_6
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    if-eqz v3, :cond_11

    if-eqz p3, :cond_10

    const/4 v8, -0x1

    goto :goto_7

    :cond_10
    const/high16 v8, -0x1000000

    .line 77
    :goto_7
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_11
    const/16 v8, 0x8

    const/16 v9, 0x14

    const/4 v10, 0x0

    if-eqz v3, :cond_14

    if-eqz v2, :cond_12

    .line 78
    iget v11, v2, Lcom/narvii/model/Community;->membersCount:I

    goto :goto_8

    :cond_12
    const/4 v11, 0x0

    :goto_8
    if-ge v11, v9, :cond_13

    const/16 v11, 0x8

    goto :goto_9

    :cond_13
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :cond_14
    sget v3, Lcom/narvii/lib/R$id;->extra_info:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v2, :cond_15

    .line 83
    iget v11, v2, Lcom/narvii/model/Community;->membersCount:I

    goto :goto_a

    :cond_15
    const/4 v11, 0x0

    :goto_a
    if-le v11, v9, :cond_17

    if-eqz v2, :cond_16

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/Community;->getMemberCount()Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_16
    move-object v9, v4

    :goto_b
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_c

    :cond_17
    move-object v9, v7

    .line 86
    :goto_c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_18

    const-string v11, " | "

    .line 87
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 89
    :cond_18
    iget-object v11, v0, Lcom/narvii/community/CommunityLayoutHelper;->languageManager:Lcom/narvii/language/LanguageManager;

    if-eqz v2, :cond_19

    iget-object v12, v2, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    goto :goto_d

    :cond_19
    move-object v12, v4

    :goto_d
    invoke-virtual {v11, v12}, Lcom/narvii/language/LanguageManager;->getLocalDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz v3, :cond_1a

    .line 90
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_1a
    sget v3, Lcom/narvii/lib/R$id;->community_amino_id:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v9, 0x1

    if-eqz v3, :cond_1d

    .line 94
    iget-object v11, v0, Lcom/narvii/community/CommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    if-eqz v11, :cond_1c

    invoke-interface {v11}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_1c

    sget v12, Lcom/narvii/lib/R$string;->amino_id_with_name:I

    new-array v13, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_1b

    iget-object v14, v2, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    if-eqz v14, :cond_1b

    goto :goto_e

    :cond_1b
    move-object v14, v7

    :goto_e
    aput-object v14, v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    :cond_1c
    move-object v7, v4

    :goto_f
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    if-eqz v3, :cond_1f

    if-eqz p3, :cond_1e

    const-wide v11, 0xffe6e6e6L

    long-to-int v7, v11

    goto :goto_10

    :cond_1e
    const/high16 v7, -0x1000000

    .line 96
    :goto_10
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    :cond_1f
    sget v3, Lcom/narvii/lib/R$id;->community_description:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_21

    if-eqz v2, :cond_20

    .line 100
    iget-object v7, v2, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    goto :goto_11

    :cond_20
    move-object v7, v4

    :goto_11
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_21
    if-eqz v3, :cond_23

    if-eqz p3, :cond_22

    goto :goto_12

    :cond_22
    const/high16 v5, -0x1000000

    .line 101
    :goto_12
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_23
    if-eqz v3, :cond_26

    if-eqz v2, :cond_25

    .line 102
    iget-object v5, v2, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    if-eqz v5, :cond_25

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_24

    const/4 v5, 0x1

    goto :goto_13

    :cond_24
    const/4 v5, 0x0

    :goto_13
    if-ne v5, v9, :cond_25

    const/4 v5, 0x0

    goto :goto_14

    :cond_25
    const/4 v5, 0x4

    :goto_14
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :cond_26
    sget v3, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/PromotionalImageView;

    if-eqz v3, :cond_27

    move-object/from16 v5, p5

    .line 106
    invoke-virtual {v3, v5}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    :cond_27
    if-eqz v3, :cond_28

    .line 107
    invoke-virtual {v3, v2}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 109
    :cond_28
    sget v3, Lcom/narvii/lib/R$id;->topic_flow_layout:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/layouts/NVFlowLayout;

    if-eqz v3, :cond_2a

    .line 111
    iget-object v5, v0, Lcom/narvii/community/CommunityLayoutHelper;->flowLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;

    if-eqz v2, :cond_29

    iget-object v4, v2, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    :cond_29
    const/16 v6, 0xa

    invoke-virtual {v5, v3, v4, v6}, Lcom/narvii/util/FlowLayoutHelper;->updateList(Lcom/narvii/util/layouts/NVFlowLayout;Ljava/util/List;I)V

    .line 114
    :cond_2a
    sget v3, Lcom/narvii/lib/R$id;->community_invite_lock:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2c

    if-eqz v2, :cond_2b

    .line 115
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/Community;->shouldShowLock()Z

    move-result v2

    if-ne v2, v9, :cond_2b

    goto :goto_15

    :cond_2b
    const/16 v10, 0x8

    :goto_15
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    return-void
.end method

.method public final getContext$Lib_release()Lcom/narvii/app/NVContext;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/community/CommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getFlowLayoutHelper$Lib_release()Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/narvii/community/CommunityLayoutHelper;->flowLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;

    return-object v0
.end method

.method public final getLanguageManager$Lib_release()Lcom/narvii/language/LanguageManager;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/community/CommunityLayoutHelper;->languageManager:Lcom/narvii/language/LanguageManager;

    return-object v0
.end method

.method public final getLanguageService$Lib_release()Lcom/narvii/language/ContentLanguageService;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/community/CommunityLayoutHelper;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-object v0
.end method

.method public final getLocalCode$Lib_release()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/community/CommunityLayoutHelper;->localCode:Ljava/lang/String;

    return-object v0
.end method

.method public final setContext$Lib_release(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public final setFlowLayoutHelper$Lib_release(Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->flowLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;

    return-void
.end method

.method public final setLanguageManager$Lib_release(Lcom/narvii/language/LanguageManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->languageManager:Lcom/narvii/language/LanguageManager;

    return-void
.end method

.method public final setLanguageService$Lib_release(Lcom/narvii/language/ContentLanguageService;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public final setLocalCode$Lib_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->localCode:Ljava/lang/String;

    return-void
.end method
