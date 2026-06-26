.class public Lcom/narvii/app/AminoNavigator;
.super Lcom/narvii/app/BaseNavigator;
.source "AminoNavigator.java"


# static fields
.field private static final PATH_X:Ljava/util/regex/Pattern;


# instance fields
.field private myCommunityId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "x(\\d+)"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/narvii/app/AminoNavigator;->PATH_X:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 20
    iput p3, p0, Lcom/narvii/app/AminoNavigator;->myCommunityId:I

    return-void
.end method


# virtual methods
.method protected pathMapping(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 14

    .line 50
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "g"

    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v7

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v7

    .line 63
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v5, v7

    .line 64
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v3, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    :cond_3
    :goto_3
    move-object v10, v2

    move-object v11, v4

    move-object v12, v5

    move-object v13, v7

    goto/16 :goto_b

    :cond_4
    if-eqz v1, :cond_a

    .line 65
    sget-object v2, Lcom/narvii/app/AminoNavigator;->PATH_X:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 66
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 67
    iget-object v2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    const-string v8, "config"

    invoke-interface {v2, v8}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 68
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v8

    if-eq v1, v8, :cond_5

    iget v8, p0, Lcom/narvii/app/AminoNavigator;->myCommunityId:I

    if-eq v1, v8, :cond_5

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore redirect to other community url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    return-object p1

    .line 72
    :cond_5
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 73
    iget v1, p0, Lcom/narvii/app/AminoNavigator;->myCommunityId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v1, v7

    .line 75
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object v2, v7

    .line 76
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_6

    :cond_8
    move-object v4, v7

    .line 77
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_7

    :cond_9
    move-object v5, v7

    .line 78
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v3, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_3

    .line 81
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    goto :goto_8

    :cond_b
    move-object v4, v7

    .line 82
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_c

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_9

    :cond_c
    move-object v2, v7

    .line 83
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_d

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_a

    :cond_d
    move-object v0, v7

    :goto_a
    move-object v13, v0

    move-object v10, v1

    move-object v12, v2

    move-object v11, v4

    move-object v1, v7

    :goto_b
    move-object v8, p0

    move-object v9, p1

    .line 86
    invoke-virtual/range {v8 .. v13}, Lcom/narvii/app/BaseNavigator;->pathMapping(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz v1, :cond_e

    .line 88
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "__communityId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_e
    return-object p1
.end method

.method protected rawHttpMapping(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    .line 25
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

    .line 26
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 28
    iget-object v0, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 29
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/app/BaseNavigator;->pathMapping(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p1

    .line 35
    :cond_0
    new-instance p2, Lcom/narvii/util/PackageUtils;

    iget-object p3, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p2, p1}, Lcom/narvii/util/PackageUtils;->isCommunityInstalled(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 37
    invoke-virtual {p2, p1}, Lcom/narvii/util/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/app/ForwardActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
