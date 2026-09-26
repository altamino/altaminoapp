.class public abstract Lcom/narvii/app/BaseNavigator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/navigator/Navigator;


# static fields
.field protected static final RAW_HTTP_PATTERN:Ljava/util/regex/Pattern;

.field private static final TYPE_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UUID_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field protected context:Lcom/narvii/app/NVContext;

.field protected final myScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "/web/x(\\d+)+/([\\d\\w]+)/([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})"

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/app/BaseNavigator;->RAW_HTTP_PATTERN:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    const-string v0, "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Lcom/narvii/app/BaseNavigator;->UUID_REGEX:Ljava/util/regex/Pattern;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    sput-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_MAP:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v1, Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    sput-object v1, Lcom/narvii/app/BaseNavigator;->TYPE_ID_MAP:Ljava/util/HashMap;

    .line 32
    .line 33
    const-string v1, "0"

    .line 34
    .line 35
    const-string v2, "user"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    const-string v1, "1"

    .line 41
    .line 42
    const-string v2, "blog"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    const-string v1, "2"

    .line 48
    .line 49
    const-string v2, "item"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    const-string v1, "131"

    .line 55
    .line 56
    const-string v2, "announcement"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    const-string v1, "109"

    .line 62
    .line 63
    const-string v2, "photo"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v1

    .line 79
    .line 80
    if-eqz v1, :cond_0

    .line 81
    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    .line 88
    sget-object v2, Lcom/narvii/app/BaseNavigator;->TYPE_ID_MAP:Ljava/util/HashMap;

    .line 89
    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    check-cast v3, Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    check-cast v1, Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const-string p2, "ndc"

    .line 10
    .line 11
    :cond_0
    iput-object p2, p0, Lcom/narvii/app/BaseNavigator;->myScheme:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v0, "navigator inited with schemes "

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p2, "://"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getMyScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/BaseNavigator;->myScheme:Ljava/lang/String;

    return-object v0
.end method

.method protected getObjectTypeId(Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_MAP:Ljava/util/HashMap;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    .line 23
    :cond_0
    sget-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_ID_MAP:Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_1
    const/4 p1, -0x1

    .line 38
    return p1
.end method

.method protected httpMapping(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "http"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v1, "https"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 34
    .line 35
    .line 36
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    sget-object v1, Lcom/narvii/app/BaseNavigator;->RAW_HTTP_PATTERN:Ljava/util/regex/Pattern;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    const/4 v1, 0x1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 76
    move-result v1

    .line 77
    const/4 v2, 0x2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    const/4 v3, 0x3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v1, v2, v0}, Lcom/narvii/app/BaseNavigator;->rawHttpMapping(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    return-object v0

    .line 94
    .line 95
    :catch_0
    :cond_2
    :goto_0
    const-string v0, "__forward"

    .line 96
    const/4 v1, 0x0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 100
    move-result v0

    .line 101
    .line 102
    const-class v1, Lcom/narvii/app/ForwardActivity;

    .line 103
    .line 104
    if-nez v0, :cond_3

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    .line 111
    invoke-static {v2}, Lcom/narvii/app/ForwardActivity;->translateLinkQuery(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    if-eqz v2, :cond_3

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 118
    goto :goto_1

    .line 119
    .line 120
    :cond_3
    if-nez v0, :cond_5

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    .line 128
    move-result v0

    .line 129
    .line 130
    if-nez v0, :cond_4

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    .line 137
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    .line 138
    move-result v0

    .line 139
    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    .line 143
    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 144
    goto :goto_1

    .line 145
    .line 146
    :cond_5
    const-class v0, Lcom/narvii/app/AminoWebViewFragment;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 150
    :goto_1
    return-object p1
.end method

.method public intentMapping(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/app/BaseNavigator;->noMapping(Landroid/content/Intent;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/BaseNavigator;->isMyScheme(Ljava/lang/String;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/BaseNavigator;->pathMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 31
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .line 35
    const-string v1, "path mapping error: "

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/app/BaseNavigator;->isHttpScheme(Ljava/lang/String;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    .line 48
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/narvii/app/BaseNavigator;->httpMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 49
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    .line 53
    const-string v1, "http mapping error: "

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :cond_2
    :goto_0
    return-object p1
.end method

.method protected isHttpScheme(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "http"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "https"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method protected isMyScheme(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/BaseNavigator;->myScheme:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "ndc"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method protected isObjectType(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    sget-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_MAP:Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_ID_MAP:Ljava/util/HashMap;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    :cond_1
    const/4 v1, 0x1

    .line 32
    :cond_2
    return v1
.end method

.method protected isUUID(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    sget-object v0, Lcom/narvii/app/BaseNavigator;->UUID_REGEX:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method protected noMapping(Landroid/content/Intent;)Z
    .locals 4

    .line 1
    .line 2
    const-string v0, "_noMapping"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return v2

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    return v2

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    return v2

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    if-nez p1, :cond_3

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    return v1

    .line 64
    :cond_4
    :goto_0
    return v2
.end method

.method protected abstract pathMapping(Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method protected pathMapping(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/app/BaseNavigator;->pathMapping(Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected pathMapping(Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8

    const-string v0, "__interactionScope"

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "fragment"

    .line 3
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ndc"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p1, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-class v1, Lcom/narvii/app/FragmentWrapperActivity;

    .line 5
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_1
    const-string v1, "home"

    .line 6
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "news-feed"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "default"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "relogin"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-class v1, Lcom/narvii/amino/MainActivity;

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_3
    const-string v1, "app-upgrade"

    .line 8
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v1, Lcom/narvii/util/AppUpgradeFragment;

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_4
    const-string v1, "comment-list"

    .line 10
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "parent-id"

    const-string v3, "parent-type"

    const-string v4, "g-comment-list"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_5

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 11
    :cond_5
    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isObjectType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p5}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->getObjectTypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    :cond_6
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz p2, :cond_7

    goto :goto_0

    :cond_7
    move v1, v6

    goto :goto_1

    :cond_8
    :goto_0
    move v1, v5

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class v1, Lcom/narvii/comment/list/CommentListFragment;

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_9
    const-string v1, "comment"

    .line 16
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "g-comment"

    if-nez v4, :cond_a

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_a
    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "comment-id"

    .line 17
    invoke-virtual {p1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz p2, :cond_b

    goto :goto_2

    :cond_b
    move v4, v6

    goto :goto_3

    :cond_c
    :goto_2
    move v4, v5

    :goto_3
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0, p5}, Lcom/narvii/app/BaseNavigator;->isObjectType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p6}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 20
    invoke-virtual {p0, p5}, Lcom/narvii/app/BaseNavigator;->getObjectTypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_d
    const-class v0, Lcom/narvii/comment/CommentDetailFragment;

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_e
    const-string v0, "user-profile"

    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-class v2, Lcom/narvii/user/profile/UserProfileFragment;

    const-string v3, "id"

    if-eqz v0, :cond_14

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 24
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "fan-club"

    .line 25
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-class v0, Lcom/narvii/influencer/FansListFragment;

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_4

    :cond_f
    const-string v0, "bio"

    .line 27
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-class v0, Lcom/narvii/user/profile/BioDetailFragment;

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_4

    :cond_10
    const-string v0, "tab"

    if-eqz p2, :cond_12

    .line 29
    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_11
    const-class v0, Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_4

    .line 32
    :cond_12
    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    :cond_13
    invoke-virtual {p0, p1, v2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_14
    :goto_4
    const-string v0, "shared-folder"

    .line 35
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-class v4, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    if-eqz v1, :cond_19

    const-string v1, "albums"

    .line 36
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-class v1, Lcom/narvii/sharedfolder/SharedAlbumFragment;

    .line 37
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_5

    :cond_15
    const-string v1, "photos"

    .line 38
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-class v1, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    .line 39
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_5

    .line 40
    :cond_16
    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 41
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, p1, v4}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_5

    .line 43
    :cond_17
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v7, "notification-id"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;

    .line 45
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_5

    :cond_18
    const-class v1, Lcom/narvii/sharedfolder/SharedFolderFragment;

    .line 46
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 47
    :cond_19
    :goto_5
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 48
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, p1, v4}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_1a
    const-string v0, "shared-file"

    .line 50
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 51
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_1b
    const-string v0, "item"

    .line 53
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 54
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v0, Lcom/narvii/item/detail/ItemDetailFragment;

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_1c
    const-string v0, "blog"

    .line 56
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 57
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v0, Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_1d
    const-string v0, "announcement"

    .line 59
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 60
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isAnnouncement"

    .line 61
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class v0, Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_1e
    const-string v0, "chat-thread"

    .line 63
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "description"

    .line 64
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 65
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v0, Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_6

    .line 67
    :cond_1f
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v0, Lcom/narvii/chat/ChatFragment;

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_20
    :goto_6
    const-string v0, "chat-message"

    .line 69
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "threadId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 72
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p6, "messageId"

    .line 73
    invoke-virtual {p1, p6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p6, Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 74
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_7

    .line 75
    :cond_21
    invoke-virtual {p0, p6}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 76
    invoke-virtual {p1, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p6, "messageId"

    .line 77
    invoke-virtual {p1, p6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p6, Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 78
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_22
    :goto_7
    const-string p6, "description"

    .line 79
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    const-string v0, "account"

    if-eqz p6, :cond_23

    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 80
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    const-class p2, Lcom/narvii/master/CommunityDetailFragment;

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const-string p3, "inviteCode"

    invoke-virtual {p2, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "inviteCode"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    :cond_23
    const-string p6, "chat-thread-settings"

    .line 83
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_24

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_24

    .line 84
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p6, Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 85
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_24
    const-string p6, "item-category"

    .line 86
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_25

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_25

    const-class p6, Lcom/narvii/catalog/CatalogFragment;

    .line 87
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    const-string p6, "categoryId"

    .line 88
    invoke-virtual {p1, p6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_25
    const-string p6, "blog-category"

    .line 89
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_26

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_26

    const-class p6, Lcom/narvii/feed/BlogInCategoryListFragment;

    .line 90
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 91
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_26
    const-string p6, "achievement"

    .line 92
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_27

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_27

    const-class p6, Lcom/narvii/achievements/AchievementsFragment;

    .line 93
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 94
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_27
    const-string p6, "my-chats"

    .line 95
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_29

    if-eqz p2, :cond_28

    const-class p6, Lcom/narvii/chat/global/chat/AggregationChatFragment;

    .line 96
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_8

    :cond_28
    const-class p6, Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 97
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_29
    :goto_8
    const-string p6, "all-ranks"

    .line 98
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2a

    const-class p6, Lcom/narvii/achievements/AllRanksFragment;

    .line 99
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_2a
    const-string p6, "online-members"

    .line 100
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2b

    const-class p6, Lcom/narvii/onlinestatus/OnlineMembersFragment;

    .line 101
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_2b
    const-string p6, "all-members"

    .line 102
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2c

    const-class p6, Lcom/narvii/members/PeopleListFragment;

    .line 103
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_2c
    const-string p6, "search"

    .line 104
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    const-string v1, "title"

    if-eqz p6, :cond_30

    .line 105
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_2e

    if-eqz p2, :cond_2d

    const-class p6, Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 106
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_9

    :cond_2d
    const-class p6, Lcom/narvii/search/SearchKeywordTabFragment;

    .line 107
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_9

    :cond_2e
    if-eqz p2, :cond_2f

    const-string p6, "hashTag"

    .line 108
    invoke-virtual {p1, p6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p6, Lcom/narvii/master/search/GlobalHashTagFragment;

    .line 110
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_9

    :cond_2f
    const-string p6, "q"

    .line 111
    invoke-virtual {p1, p6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p6, Lcom/narvii/search/SearchPagesFragment;

    .line 113
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_30
    :goto_9
    const-string p6, "store"

    .line 114
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_32

    .line 115
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p6

    const-string v4, "sectionGroupId"

    invoke-virtual {p6, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    const-string v4, "items"

    .line 116
    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    const-string v4, "sectionGroupId"

    .line 117
    invoke-virtual {p1, v4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-static {p6}, Lcom/narvii/monetization/store/data/StoreSection;->getSectionFragment(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_a

    :cond_31
    const-class p6, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 119
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_32
    :goto_a
    const-string p6, "sticker-collection"

    .line 120
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_33

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_33

    .line 121
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p6, Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment;

    .line 122
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_33
    const-string p6, "chat-bubble"

    .line 123
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_34

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_34

    .line 124
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p6, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 125
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_34
    const-string p6, "avatar-frame"

    .line 126
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_35

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_35

    .line 127
    invoke-virtual {p1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p6, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 128
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_35
    const-string p6, "user-me"

    .line 129
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_36

    iget-object p6, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 130
    invoke-interface {p6, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/narvii/account/AccountService;

    .line 131
    invoke-virtual {p6}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p6

    if-eqz p6, :cond_36

    .line 132
    iget-object v4, p6, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "user"

    .line 133
    invoke-static {p6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, v4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, p1, v2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_36
    const-string p6, "catalog"

    .line 135
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_37

    .line 136
    new-instance p6, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p6, v2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 137
    invoke-virtual {p6}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    move-result p6

    xor-int/2addr p6, v5

    const-string v2, "isAllEntry"

    invoke-virtual {p1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class p6, Lcom/narvii/catalog/CatalogFragment;

    .line 138
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_37
    const-string p6, "leaderboards"

    .line 139
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_38

    const-class p6, Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 140
    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_38
    const-string p6, "notifications"

    .line 141
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_3a

    if-eqz p2, :cond_39

    const-class p2, Lcom/narvii/notice/AggregationNoticeFragment;

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    const-string p2, "targetCidTab"

    .line 143
    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_b

    :cond_39
    const-class p2, Lcom/narvii/notice/NoticeListFragment;

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_3a
    :goto_b
    const-string p2, "login"

    .line 145
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    const-class p2, Lcom/narvii/account/LoginActivity;

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_3b
    const-string p2, "activation"

    .line 147
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    const-string p2, "update-email"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    const-string p2, "reset-password"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3d

    :cond_3c
    const-class p2, Lcom/narvii/prefs/AccountSettingFragment;

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_3d
    const-string p2, "community"

    .line 149
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    invoke-static {p4, v6}, Lcom/narvii/util/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_3e

    .line 150
    invoke-static {p4, v6}, Lcom/narvii/util/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class p2, Lcom/narvii/master/CommunityDetailFragment;

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_3e
    const-string p2, "topic"

    .line 152
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    const-class p2, Lcom/narvii/topic/TopicTabFragment;

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :try_start_0
    const-string p2, "key_topic_id"

    .line 154
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p1, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p2, "key_default_tab"

    if-nez p5, :cond_3f

    const-string p5, "COMMUNITY"

    .line 155
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c

    :cond_3f
    const-string p6, "communities"

    .line 156
    invoke-virtual {p6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_40

    const-string p5, "COMMUNITY"

    .line 157
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c

    :cond_40
    const-string p6, "chats"

    .line 158
    invoke-virtual {p6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_41

    const-string p5, "CHAT"

    .line 159
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_41
    :goto_c
    const-string p2, "tos"

    .line 160
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p5, "url"

    if-eqz p2, :cond_42

    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 161
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f1211e0

    invoke-virtual {p2, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p2, Lcom/narvii/app/AminoWebViewFragment;

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_42
    const-string p2, "privacy"

    .line 163
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 164
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f120f4f

    invoke-virtual {p2, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p2, Lcom/narvii/app/AminoWebViewFragment;

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_43
    const-string p2, "guidelines"

    .line 166
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_44

    const-string p2, "guideline"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45

    :cond_44
    const-class p2, Lcom/narvii/guideline/GuidelineFragment;

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_45
    const-string p2, "help-center"

    .line 168
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 169
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f12080c

    invoke-virtual {p2, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p2, Lcom/narvii/webview/WebViewFragment;

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_46
    const-string p2, "settings"

    .line 171
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_48

    .line 172
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_47

    const-class p2, Lcom/narvii/prefs/AccountSettingFragment;

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_d

    :cond_47
    const-class p2, Lcom/narvii/prefs/SettingsFragment;

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_48
    :goto_d
    const-string p2, "public-chats"

    .line 175
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_49

    const-class p2, Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_49
    const-string p2, "quizzes"

    .line 177
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    const-string p2, "best"

    .line 178
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4a

    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 179
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p5, 0x7f120e3d

    invoke-virtual {p2, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p2, Lcom/narvii/feed/quizzes/BestQuizzesListFragment;

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_e

    :cond_4a
    const-string p2, "trending"

    .line 181
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4b

    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 182
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p5, 0x7f120e50

    invoke-virtual {p2, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p2, Lcom/narvii/feed/quizzes/TrendingQuizListFragment;

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_e

    :cond_4b
    const-string p2, "latest"

    .line 184
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4c

    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 185
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p5, 0x7f120e46

    invoke-virtual {p2, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p2, Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment;

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_e

    :cond_4c
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 187
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p5, 0x7f120e4e

    invoke-virtual {p2, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p2, Lcom/narvii/feed/quizzes/QuizzesListFragment;

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_4d
    :goto_e
    const-string p2, "following-feed"

    .line 189
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4e

    const-class p2, Lcom/narvii/feed/BlogFollowingListFragment;

    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_4e
    const-string p2, "latest-posts"

    .line 191
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4f

    const-class p2, Lcom/narvii/feed/BlogAllListFragment;

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_4f
    const-string p2, "recommended-posts"

    .line 193
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_50

    const-class p2, Lcom/narvii/feed/BlogRecommendedListFragment;

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_50
    const-string p2, "link-posts"

    .line 195
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-class p5, Lcom/narvii/feed/SubTypeFeedListFragment;

    const-string p6, "type"

    if-eqz p2, :cond_51

    const-string p2, "links-recent"

    .line 196
    invoke-virtual {p1, p6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 197
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120e48

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, p1, p5}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_51
    const-string p2, "blogs"

    .line 199
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    const-string p2, "blogs-recent"

    .line 200
    invoke-virtual {p1, p6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 201
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120e3e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, p1, p5}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_52
    const-string p2, "polls"

    .line 203
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_53

    const-string p2, "polls-recent"

    .line 204
    invoke-virtual {p1, p6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 205
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120e4b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, p1, p5}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_53
    const-string p2, "featured"

    .line 207
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_54

    const-class p2, Lcom/narvii/feed/FrontFeedListFragment;

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_54
    const-string p2, "questions"

    .line 209
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_55

    const-string p2, "questions-recent"

    .line 210
    invoke-virtual {p1, p6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 211
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120e4d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, p1, p5}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_55
    const-string p2, "image-posts"

    .line 213
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_56

    const-string p2, "images-recent"

    .line 214
    invoke-virtual {p1, p6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 215
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120e44

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, p1, p5}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_56
    const-string p2, "external-posts"

    .line 217
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_58

    .line 218
    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_57

    const-string p2, "KEY_EXTERNAL_SOURCE_ID"

    .line 219
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p2, Lcom/narvii/feed/ExternalPostListFragment;

    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_f

    :cond_57
    const-string p2, "external-posts-recent"

    .line 221
    invoke-virtual {p1, p6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 222
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f120e3f

    invoke-virtual {p2, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, p1, p5}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_58
    :goto_f
    const-string p2, "paid-out-log"

    .line 224
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_59

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_59

    const-string p2, "paidOutId"

    .line 225
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p2, Lcom/narvii/wallet/PaidOutDetailFragment;

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_59
    const-string p2, "membership"

    .line 227
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5a

    const-class p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_5a
    const-string p2, "wallet"

    .line 229
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5b

    const-class p2, Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_5b
    const-string p2, "subscription"

    .line 231
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5c

    const-class p2, Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_5c
    const-string p2, "blog-categories"

    .line 233
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5d

    const-class p2, Lcom/narvii/feed/BlogCategoryListFragment;

    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_5d
    const-string p2, "coupon"

    .line 235
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5e

    const-class p2, Lcom/narvii/monetization/coupons/CouponListFragment;

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_5e
    return-object p1
.end method

.method protected abstract rawHttpMapping(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method protected setClass(Landroid/content/Intent;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    :try_start_0
    const-string v1, "WRAPPER_ACTIVITY"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    move-object v0, v1

    .line 23
    .line 24
    :catch_0
    iget-object v1, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const-class v0, Lcom/narvii/app/FragmentWrapperActivity;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    const-string v0, "fragment"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    :goto_0
    return-void
.end method
