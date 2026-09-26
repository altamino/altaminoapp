.class public Lcom/narvii/community/CommunityLayoutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;
    }
.end annotation


# instance fields
.field private context:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private flowLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private languageManager:Lcom/narvii/language/LanguageManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private languageService:Lcom/narvii/language/ContentLanguageService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private localCode:Ljava/lang/String;
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
    const-string v0, "context"

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
    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;-><init>(Lcom/narvii/community/CommunityLayoutHelper;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->flowLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    const-string v0, "language"

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string v0, "getService(...)"

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/language/LanguageManager;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->languageManager:Lcom/narvii/language/LanguageManager;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    const-string v0, "content_language"

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 47
    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-string v0, "getLanguage(...)"

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    goto :goto_1

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/narvii/language/ContentLanguageService;->getLanguageShowCode()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    const-string v0, "getLanguageShowCode(...)"

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :goto_1
    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->localCode:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static synthetic configCommunityCard$default(Lcom/narvii/community/CommunityLayoutHelper;Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;ILjava/lang/Object;)V
    .locals 7

    .line 1
    .line 2
    if-nez p7, :cond_3

    .line 3
    .line 4
    and-int/lit8 p7, p6, 0x4

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p7, :cond_0

    .line 8
    move v4, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v4, p3

    .line 11
    .line 12
    :goto_0
    and-int/lit8 p3, p6, 0x8

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    move v5, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v5, p4

    .line 18
    .line 19
    :goto_1
    and-int/lit8 p3, p6, 0x10

    .line 20
    .line 21
    if-eqz p3, :cond_2

    .line 22
    const/4 p5, 0x0

    .line 23
    :cond_2
    move-object v6, p5

    .line 24
    move-object v1, p0

    .line 25
    move-object v2, p1

    .line 26
    move-object v3, p2

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 30
    return-void

    .line 31
    .line 32
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 33
    .line 34
    const-string p1, "Super calls with default arguments not supported in this target, function: configCommunityCard"

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0
.end method


# virtual methods
.method public final configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard$default(Lcom/narvii/community/CommunityLayoutHelper;Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;Z)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v8}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard$default(Lcom/narvii/community/CommunityLayoutHelper;Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZ)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v8}, Lcom/narvii/community/CommunityLayoutHelper;->configCommunityCard$default(Lcom/narvii/community/CommunityLayoutHelper;Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;ILjava/lang/Object;)V

    return-void
.end method

.method public configCommunityCard(Landroid/view/View;Lcom/narvii/model/Community;ZZLcom/narvii/widget/NVImageView$OnImageChangedListener;)V
    .locals 15
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/NVImageView$OnImageChangedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "cell"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/narvii/lib/R$id;->community_icon:I

    .line 4
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/NVImageView;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    .line 5
    iget-object v5, v2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/Community;->themeColor()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    :cond_2
    sget v3, Lcom/narvii/lib/R$id;->community_name:I

    .line 7
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 8
    iget-object v5, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    if-eqz v3, :cond_6

    if-eqz p3, :cond_5

    move v7, v5

    goto :goto_3

    :cond_5
    move v7, v6

    .line 9
    :goto_3
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    if-eqz p4, :cond_7

    .line 10
    invoke-static {v3}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    :cond_7
    sget v3, Lcom/narvii/lib/R$id;->community_language:I

    .line 11
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_9

    if-eqz p3, :cond_8

    move v7, v5

    goto :goto_4

    :cond_8
    move v7, v6

    .line 12
    :goto_4
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    if-nez v3, :cond_a

    goto :goto_7

    :cond_a
    iget-object v7, v0, Lcom/narvii/community/CommunityLayoutHelper;->languageManager:Lcom/narvii/language/LanguageManager;

    if-eqz v2, :cond_b

    .line 13
    iget-object v8, v2, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object v8, v4

    :goto_5
    invoke-virtual {v7, v8}, Lcom/narvii/language/LanguageManager;->getLocalDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    goto :goto_6

    :cond_c
    if-eqz v2, :cond_d

    .line 14
    iget-object v7, v2, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    goto :goto_6

    :cond_d
    move-object v7, v4

    .line 15
    :goto_6
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    sget v3, Lcom/narvii/lib/R$id;->member_count:I

    .line 16
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v7, ""

    if-nez v3, :cond_e

    goto :goto_9

    :cond_e
    if-eqz v2, :cond_f

    .line 17
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/Community;->getMemberCount()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    goto :goto_8

    :cond_f
    move-object v8, v7

    :goto_8
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    if-eqz v3, :cond_11

    if-eqz p3, :cond_10

    move v8, v5

    goto :goto_a

    :cond_10
    move v8, v6

    .line 18
    :goto_a
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_11
    const/16 v8, 0x8

    const/16 v9, 0x14

    const/4 v10, 0x0

    if-nez v3, :cond_12

    goto :goto_d

    :cond_12
    if-eqz v2, :cond_14

    .line 19
    iget v11, v2, Lcom/narvii/model/Community;->membersCount:I

    if-ge v11, v9, :cond_13

    goto :goto_b

    :cond_13
    move v11, v10

    goto :goto_c

    :cond_14
    :goto_b
    move v11, v8

    :goto_c
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    sget v3, Lcom/narvii/lib/R$id;->extra_info:I

    .line 20
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v2, :cond_16

    .line 21
    iget v11, v2, Lcom/narvii/model/Community;->membersCount:I

    if-le v11, v9, :cond_16

    .line 22
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_15

    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/Community;->getMemberCount()Ljava/lang/String;

    move-result-object v11

    goto :goto_e

    :cond_15
    move-object v11, v4

    :goto_e
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_f

    :cond_16
    move-object v9, v7

    .line 23
    :goto_f
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_17

    .line 24
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 25
    :cond_17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/narvii/community/CommunityLayoutHelper;->languageManager:Lcom/narvii/language/LanguageManager;

    if-eqz v2, :cond_18

    iget-object v12, v2, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    goto :goto_10

    :cond_18
    move-object v12, v4

    :goto_10
    invoke-virtual {v9, v12}, Lcom/narvii/language/LanguageManager;->getLocalDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v3, :cond_19

    goto :goto_11

    .line 26
    :cond_19
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    sget v3, Lcom/narvii/lib/R$id;->community_amino_id:I

    .line 27
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v9, 0x1

    if-nez v3, :cond_1a

    goto :goto_15

    :cond_1a
    iget-object v11, v0, Lcom/narvii/community/CommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    if-eqz v11, :cond_1d

    .line 28
    invoke-interface {v11}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_1d

    sget v12, Lcom/narvii/lib/R$string;->amino_id_with_name:I

    new-array v13, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_1b

    iget-object v14, v2, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    goto :goto_12

    :cond_1b
    move-object v14, v4

    :goto_12
    if-nez v14, :cond_1c

    goto :goto_13

    :cond_1c
    move-object v7, v14

    :goto_13
    aput-object v7, v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_14

    :cond_1d
    move-object v7, v4

    :goto_14
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_15
    if-eqz v3, :cond_1f

    if-eqz p3, :cond_1e

    const v7, -0x19191a

    goto :goto_16

    :cond_1e
    move v7, v6

    .line 29
    :goto_16
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1f
    sget v3, Lcom/narvii/lib/R$id;->community_description:I

    .line 30
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_20

    goto :goto_18

    :cond_20
    if-eqz v2, :cond_21

    .line 31
    iget-object v7, v2, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    goto :goto_17

    :cond_21
    move-object v7, v4

    :goto_17
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_18
    if-eqz v3, :cond_23

    if-eqz p3, :cond_22

    goto :goto_19

    :cond_22
    move v5, v6

    .line 32
    :goto_19
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_23
    if-nez v3, :cond_24

    goto :goto_1b

    :cond_24
    if-eqz v2, :cond_25

    .line 33
    iget-object v5, v2, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    if-eqz v5, :cond_25

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_25

    move v5, v10

    goto :goto_1a

    :cond_25
    const/4 v5, 0x4

    :goto_1a
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1b
    sget v3, Lcom/narvii/lib/R$id;->image:I

    .line 34
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/PromotionalImageView;

    if-eqz v3, :cond_26

    move-object/from16 v5, p5

    .line 35
    invoke-virtual {v3, v5}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    :cond_26
    if-eqz v3, :cond_27

    .line 36
    invoke-virtual {v3, v2}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    :cond_27
    sget v3, Lcom/narvii/lib/R$id;->topic_flow_layout:I

    .line 37
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/layouts/NVFlowLayout;

    if-eqz v3, :cond_29

    iget-object v5, v0, Lcom/narvii/community/CommunityLayoutHelper;->flowLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;

    if-eqz v2, :cond_28

    .line 38
    iget-object v4, v2, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    :cond_28
    const/16 v6, 0xa

    invoke-virtual {v5, v3, v4, v6}, Lcom/narvii/util/FlowLayoutHelper;->updateList(Lcom/narvii/util/layouts/NVFlowLayout;Ljava/util/List;I)V

    :cond_29
    sget v3, Lcom/narvii/lib/R$id;->community_invite_lock:I

    .line 39
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2a

    goto :goto_1c

    :cond_2a
    if-eqz v2, :cond_2b

    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/Community;->shouldShowLock()Z

    move-result v2

    if-ne v2, v9, :cond_2b

    move v8, v10

    :cond_2b
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1c
    return-void
.end method

.method public final getContext$Lib_release()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/CommunityLayoutHelper;->flowLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;

    return-object v0
.end method

.method public final getLanguageManager$Lib_release()Lcom/narvii/language/LanguageManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/CommunityLayoutHelper;->languageManager:Lcom/narvii/language/LanguageManager;

    return-object v0
.end method

.method public final getLanguageService$Lib_release()Lcom/narvii/language/ContentLanguageService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/CommunityLayoutHelper;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-object v0
.end method

.method public final getLocalCode$Lib_release()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/CommunityLayoutHelper;->localCode:Ljava/lang/String;

    return-object v0
.end method

.method public final setContext$Lib_release(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public final setFlowLayoutHelper$Lib_release(Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;)V
    .locals 1
    .param p1    # Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->flowLayoutHelper:Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;

    return-void
.end method

.method public final setLanguageManager$Lib_release(Lcom/narvii/language/LanguageManager;)V
    .locals 1
    .param p1    # Lcom/narvii/language/LanguageManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->languageManager:Lcom/narvii/language/LanguageManager;

    return-void
.end method

.method public final setLanguageService$Lib_release(Lcom/narvii/language/ContentLanguageService;)V
    .locals 0
    .param p1    # Lcom/narvii/language/ContentLanguageService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public final setLocalCode$Lib_release(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper;->localCode:Ljava/lang/String;

    return-void
.end method
