.class public Lcom/narvii/app/incubator/IncubatorNavigator;
.super Lcom/narvii/app/BaseNavigator;
.source "IncubatorNavigator.java"


# static fields
.field private static final NARVIIAPP_X:Ljava/util/regex/Pattern;

.field private static final PATH_X:Ljava/util/regex/Pattern;

.field private static final PEBKITAPP_X:Ljava/util/regex/Pattern;


# instance fields
.field private communityId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "narviiapp(\\d+)"

    .line 205
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/narvii/app/incubator/IncubatorNavigator;->NARVIIAPP_X:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "pebkitapp(\\d+)"

    .line 206
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/narvii/app/incubator/IncubatorNavigator;->PEBKITAPP_X:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "x(\\d+)"

    .line 207
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/narvii/app/incubator/IncubatorNavigator;->PATH_X:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 37
    iput p3, p0, Lcom/narvii/app/incubator/IncubatorNavigator;->communityId:I

    return-void
.end method


# virtual methods
.method public intentMapping(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/app/BaseNavigator;->noMapping(Landroid/content/Intent;)Z

    move-result v0

    .line 61
    invoke-super {p0, p1}, Lcom/narvii/app/BaseNavigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "__communityId"

    .line 63
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget v3, p0, Lcom/narvii/app/incubator/IncubatorNavigator;->communityId:I

    if-eq v2, v3, :cond_0

    const-string v3, "__forwardCommunityId"

    .line 65
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "__forward"

    .line 66
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/narvii/app/ForwardActivity;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_0
    return-object v1
.end method

.method protected isMyScheme(Ljava/lang/String;)Z
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcom/narvii/app/BaseNavigator;->isMyScheme(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 46
    :cond_0
    sget-object v0, Lcom/narvii/app/incubator/IncubatorNavigator;->NARVIIAPP_X:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 50
    :cond_1
    sget-object v0, Lcom/narvii/app/incubator/IncubatorNavigator;->PEBKITAPP_X:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected pathMapping(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 13

    .line 89
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v7, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 91
    sget-object v3, Lcom/narvii/app/incubator/IncubatorNavigator;->NARVIIAPP_X:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 93
    sget-object v3, Lcom/narvii/app/incubator/IncubatorNavigator;->PEBKITAPP_X:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 97
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "g"

    .line 101
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v5, :cond_6

    .line 103
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v10

    .line 104
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v4, v10

    .line 105
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_4

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v5, v10

    .line 106
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v6, :cond_5

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    :cond_5
    move-object v3, v0

    move-object v6, v10

    const/4 v0, 0x0

    goto/16 :goto_a

    :cond_6
    if-eqz v4, :cond_b

    .line 107
    sget-object v5, Lcom/narvii/app/incubator/IncubatorNavigator;->PATH_X:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 108
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 109
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v4, v10

    .line 110
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_8

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object v5, v10

    .line 111
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v8, :cond_9

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_6

    :cond_9
    move-object v8, v10

    .line 112
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v6, :cond_a

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    :cond_a
    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    goto :goto_9

    .line 114
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_7

    :cond_c
    move-object v5, v10

    .line 115
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_d

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_8

    :cond_d
    move-object v6, v10

    .line 116
    :goto_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v8, :cond_e

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    :cond_e
    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    :goto_9
    move-object v6, v10

    :goto_a
    const-string v8, "__communityId"

    if-gtz v0, :cond_12

    const-string v10, "default"

    .line 126
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "home"

    if-nez v10, :cond_f

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string/jumbo v10, "relogin"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_f
    const v0, 0x10008000

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    const-class v0, Lcom/narvii/master/MasterActivity;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 129
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "headlines"

    .line 130
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "my"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "explore"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "chat"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    const-string/jumbo v0, "tab"

    .line 131
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    :cond_11
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1

    :cond_12
    if-nez v0, :cond_13

    const-string v10, "notifications"

    .line 138
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 139
    const-class v0, Lcom/narvii/notice/AggregationNoticeFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    const-string/jumbo v0, "targetCidTab"

    .line 140
    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1

    :cond_13
    if-nez v0, :cond_15

    const-string v10, "new-visitors"

    .line 144
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 145
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v2, "stoptime"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 147
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :cond_14
    const-class v0, Lcom/narvii/visitor/NewVisitorsFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    return-object p1

    :cond_15
    const-string v10, "account"

    const-string v11, "id"

    if-lez v0, :cond_18

    const-string v12, "description"

    .line 153
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 154
    const-class v3, Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p0, p1, v3}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 155
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "inviteCode"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p1, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    iget-object v0, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, v10}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_16

    .line 158
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_b

    :cond_16
    const/4 v0, 0x0

    .line 159
    :goto_b
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-nez v0, :cond_17

    if-eqz v3, :cond_17

    goto :goto_c

    :cond_17
    const/4 v2, 0x0

    :goto_c
    const-string v0, "autoJoin"

    .line 160
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1

    :cond_18
    if-lez v0, :cond_19

    const-string v12, "guideline"

    .line 164
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 165
    const-class v2, Lcom/narvii/guideline/GuidelineFragment;

    invoke-virtual {p0, p1, v2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 166
    invoke-virtual {p1, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1

    :cond_19
    const-string v11, "create-story"

    .line 170
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 171
    iget-object v0, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, v10}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 172
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const-string/jumbo v3, "post"

    const/16 v4, 0x9

    if-nez v0, :cond_1a

    .line 173
    const-class v0, Lcom/narvii/account/LoginActivity;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    const-string v0, "not_show_login_when_open_master"

    .line 174
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "skipInterestPicker"

    .line 175
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Lcom/narvii/blog/post/StoryPostActivity;

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    new-instance v2, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {v2}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 178
    iput v4, v2, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 179
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "loginIntent"

    .line 180
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1

    .line 184
    :cond_1a
    new-instance v0, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {v0}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 185
    iput v4, v0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 186
    const-class v2, Lcom/narvii/blog/post/StoryPostActivity;

    invoke-virtual {p0, p1, v2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 187
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    :cond_1b
    if-ne v0, v7, :cond_1c

    const-string/jumbo v10, "topic"

    .line 191
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x0

    goto :goto_d

    :cond_1c
    move v10, v0

    :goto_d
    if-ne v10, v7, :cond_1d

    .line 196
    iget v0, p0, Lcom/narvii/app/incubator/IncubatorNavigator;->communityId:I

    if-eqz v0, :cond_1f

    :cond_1d
    if-nez v10, :cond_1e

    goto :goto_e

    :cond_1e
    const/4 v2, 0x0

    :cond_1f
    :goto_e
    move-object v0, p0

    move-object v1, p1

    .line 197
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/app/BaseNavigator;->pathMapping(Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eq v10, v7, :cond_20

    .line 199
    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_20
    return-object v0
.end method

.method public rawHttpMapping(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ndc://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 77
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    .line 78
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/app/BaseNavigator;->pathMapping(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string p3, "__communityId"

    .line 80
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
