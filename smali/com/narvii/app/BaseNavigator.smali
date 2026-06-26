.class public abstract Lcom/narvii/app/BaseNavigator;
.super Ljava/lang/Object;
.source "BaseNavigator.java"

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

    const/4 v0, 0x2

    const-string v1, "/web/x(\\d+)+/([\\d\\w]+)/([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})"

    .line 164
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/narvii/app/BaseNavigator;->RAW_HTTP_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}"

    .line 769
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/narvii/app/BaseNavigator;->UUID_REGEX:Ljava/util/regex/Pattern;

    .line 778
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_MAP:Ljava/util/HashMap;

    .line 779
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_ID_MAP:Ljava/util/HashMap;

    .line 782
    sget-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "0"

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    sget-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "1"

    const-string v2, "blog"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    sget-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "2"

    const-string v2, "item"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    sget-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "131"

    const-string v2, "announcement"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    sget-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "109"

    const-string/jumbo v2, "photo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    sget-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 788
    sget-object v2, Lcom/narvii/app/BaseNavigator;->TYPE_ID_MAP:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    if-nez p2, :cond_0

    const-string p2, "ndc"

    .line 100
    :cond_0
    iput-object p2, p0, Lcom/narvii/app/BaseNavigator;->myScheme:Ljava/lang/String;

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "navigator inited with schemes "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->myScheme:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "://"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMyScheme()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/narvii/app/BaseNavigator;->myScheme:Ljava/lang/String;

    return-object v0
.end method

.method protected getObjectTypeId(Ljava/lang/String;)I
    .locals 1

    .line 800
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 801
    sget-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 803
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 805
    :cond_0
    sget-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 807
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected httpMapping(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .line 173
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "http"

    .line 174
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    new-instance v1, Lcom/narvii/util/PackageUtils;

    iget-object v2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/narvii/app/BaseNavigator;->RAW_HTTP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 184
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 185
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 186
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v1, v2, v0}, Lcom/narvii/app/BaseNavigator;->rawHttpMapping(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return-object v0

    :catch_0
    nop

    :cond_2
    :goto_0
    const/4 v0, 0x0

    const-string v1, "__forward"

    .line 196
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 197
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/app/ForwardActivity;->translateLinkQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 198
    const-class v0, Lcom/narvii/app/ForwardActivity;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_5

    .line 199
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 200
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 201
    :cond_4
    const-class v0, Lcom/narvii/app/ForwardActivity;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_1

    .line 203
    :cond_5
    const-class v0, Lcom/narvii/app/AminoWebViewFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :goto_1
    return-object p1
.end method

.method public intentMapping(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 142
    invoke-virtual {p0, p1}, Lcom/narvii/app/BaseNavigator;->noMapping(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/narvii/app/BaseNavigator;->isMyScheme(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/BaseNavigator;->pathMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "path mapping error: "

    .line 151
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/app/BaseNavigator;->isHttpScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/narvii/app/BaseNavigator;->httpMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "http mapping error: "

    .line 157
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method protected isHttpScheme(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected isMyScheme(Ljava/lang/String;)Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/narvii/app/BaseNavigator;->myScheme:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ndc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected isObjectType(Ljava/lang/String;)Z
    .locals 2

    .line 793
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 795
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 796
    sget-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/narvii/app/BaseNavigator;->TYPE_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected isUUID(Ljava/lang/String;)Z
    .locals 1

    .line 773
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 775
    :cond_0
    sget-object v0, Lcom/narvii/app/BaseNavigator;->UUID_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method protected noMapping(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "_noMapping"

    .line 122
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    return v2

    .line 130
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 134
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

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

    .line 214
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/app/BaseNavigator;->pathMapping(Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected pathMapping(Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    const-string v0, "__interactionScope"

    .line 219
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "fragment"

    .line 224
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ndc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p4, :cond_0

    .line 226
    invoke-virtual {p1, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    :cond_0
    const-class v1, Lcom/narvii/app/FragmentWrapperActivity;

    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_1
    const-string v1, "home"

    .line 235
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

    const-string/jumbo v1, "relogin"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    :cond_2
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_3

    const v1, 0x10008000

    .line 237
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    :cond_3
    const-class v1, Lcom/narvii/amino/MainActivity;

    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_4
    const-string v1, "app-upgrade"

    .line 244
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 245
    const-class v1, Lcom/narvii/util/AppUpgradeFragment;

    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_5
    const-string v1, "comment-list"

    .line 252
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "parent-id"

    const-string/jumbo v3, "parent-type"

    const-string v4, "g-comment-list"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 253
    :cond_6
    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isObjectType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p5}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 254
    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->getObjectTypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    invoke-virtual {p1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    :cond_7
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    :cond_9
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    const-class v1, Lcom/narvii/comment/list/CommentListFragment;

    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_a
    const-string v1, "comment"

    .line 264
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "g-comment"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_b
    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "comment-id"

    .line 265
    invoke-virtual {p1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "g-comment"

    .line 266
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    if-eqz p2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v4, 0x0

    goto :goto_3

    :cond_d
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, p5}, Lcom/narvii/app/BaseNavigator;->isObjectType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p6}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 268
    invoke-virtual {p0, p5}, Lcom/narvii/app/BaseNavigator;->getObjectTypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    invoke-virtual {p1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    :cond_e
    const-class v0, Lcom/narvii/comment/CommentDetailFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_f
    const-string/jumbo v0, "user-profile"

    .line 278
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "id"

    if-eqz v0, :cond_15

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 279
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "fan-club"

    .line 280
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 281
    const-class v0, Lcom/narvii/influencer/FansListFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_4

    :cond_10
    const-string v0, "bio"

    .line 282
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 283
    const-class v0, Lcom/narvii/user/profile/BioDetailFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_4

    :cond_11
    if-eqz p2, :cond_13

    .line 285
    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "tab"

    .line 286
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    :cond_12
    const-class v0, Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_4

    .line 290
    :cond_13
    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "tab"

    .line 291
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    :cond_14
    const-class v0, Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_15
    :goto_4
    const-string/jumbo v0, "shared-folder"

    .line 302
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "albums"

    .line 303
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 304
    const-class v0, Lcom/narvii/sharedfolder/SharedAlbumFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_5

    :cond_16
    const-string/jumbo v0, "photos"

    .line 305
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 306
    const-class v0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_5

    .line 307
    :cond_17
    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 308
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-class v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_5

    .line 310
    :cond_18
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "notification-id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 311
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "notification-id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-class v0, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_5

    .line 314
    :cond_19
    const-class v0, Lcom/narvii/sharedfolder/SharedFolderFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_1a
    :goto_5
    const-string/jumbo v0, "shared-folder"

    .line 318
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 319
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-class v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_1b
    const-string/jumbo v0, "shared-file"

    .line 324
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 325
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-class v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_1c
    const-string v0, "item"

    .line 330
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 331
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-class v0, Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_1d
    const-string v0, "blog"

    .line 336
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 337
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 339
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "displayMode"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fullscreenplay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 340
    const-class v0, Lcom/narvii/story/StoryListFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_6

    .line 342
    :cond_1e
    const-class v0, Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_1f
    :goto_6
    const-string v0, "announcement"

    .line 347
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 348
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isAnnouncement"

    .line 349
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 350
    const-class v0, Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_20
    const-string v0, "chat-thread"

    .line 355
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "description"

    .line 356
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 357
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-class v0, Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_7

    .line 360
    :cond_21
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-class v0, Lcom/narvii/chat/ChatFragment;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_22
    :goto_7
    const-string v0, "chat-message"

    .line 367
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 368
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "threadId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p0, v0}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 370
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p6, "messageId"

    .line 371
    invoke-virtual {p1, p6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-class p6, Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_8

    .line 373
    :cond_23
    invoke-virtual {p0, p6}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 374
    invoke-virtual {p1, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p6, "messageId"

    .line 375
    invoke-virtual {p1, p6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-class p6, Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_24
    :goto_8
    const-string p6, "description"

    .line 381
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    const-string v0, "account"

    if-eqz p6, :cond_25

    .line 382
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 383
    const-class p2, Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 384
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const-string p3, "inviteCode"

    invoke-virtual {p2, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "inviteCode"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    :cond_25
    const-string p6, "chat-thread-settings"

    .line 390
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_26

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_26

    .line 391
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-class p6, Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_26
    const-string p6, "item-category"

    .line 396
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_27

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_27

    .line 397
    const-class p6, Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    const-string p6, "categoryId"

    .line 398
    invoke-virtual {p1, p6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_27
    const-string p6, "blog-category"

    .line 402
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_28

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_28

    .line 403
    const-class p6, Lcom/narvii/feed/BlogInCategoryListFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 404
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_28
    const-string p6, "achievement"

    .line 409
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_29

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_29

    .line 410
    const-class p6, Lcom/narvii/achievements/AchievementsFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    .line 411
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_29
    const-string p6, "my-chats"

    .line 415
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2b

    if-eqz p2, :cond_2a

    .line 417
    const-class p6, Lcom/narvii/chat/global/chat/AggregationChatFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_9

    .line 419
    :cond_2a
    const-class p6, Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_2b
    :goto_9
    const-string p6, "all-ranks"

    .line 424
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2c

    .line 425
    const-class p6, Lcom/narvii/achievements/AllRanksFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_2c
    const-string p6, "online-members"

    .line 429
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2d

    .line 430
    const-class p6, Lcom/narvii/onlinestatus/OnlineMembersFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_2d
    const-string p6, "all-members"

    .line 434
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2e

    .line 435
    const-class p6, Lcom/narvii/members/PeopleListFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_2e
    const-string/jumbo p6, "search"

    .line 440
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    const-string/jumbo v1, "title"

    if-eqz p6, :cond_32

    .line 441
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_30

    if-eqz p2, :cond_2f

    .line 443
    const-class p6, Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_a

    .line 445
    :cond_2f
    const-class p6, Lcom/narvii/search/SearchKeywordTabFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_a

    :cond_30
    if-eqz p2, :cond_31

    const-string p6, "hashTag"

    .line 449
    invoke-virtual {p1, p6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-class p6, Lcom/narvii/master/search/GlobalHashTagFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_a

    :cond_31
    const-string/jumbo p6, "q"

    .line 453
    invoke-virtual {p1, p6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-class p6, Lcom/narvii/search/SearchPagesFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_32
    :goto_a
    const-string/jumbo p6, "store"

    .line 462
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_34

    .line 463
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p6

    const-string/jumbo v3, "sectionGroupId"

    invoke-virtual {p6, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    const-string v3, "items"

    .line 464
    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    const-string/jumbo v3, "sectionGroupId"

    .line 465
    invoke-virtual {p1, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    invoke-static {p6}, Lcom/narvii/monetization/store/data/StoreSection;->getSectionFragment(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_b

    .line 468
    :cond_33
    const-class p6, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_34
    :goto_b
    const-string/jumbo p6, "sticker-collection"

    .line 473
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_35

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_35

    .line 474
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-class p6, Lcom/narvii/monetization/sticker/collection/StickerCollectionDispatchFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_35
    const-string p6, "chat-bubble"

    .line 479
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_36

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_36

    .line 480
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-class p6, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_36
    const-string p6, "avatar-frame"

    .line 492
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_37

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_37

    .line 493
    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-class p6, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_37
    const-string/jumbo p6, "user-me"

    .line 499
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_38

    .line 500
    iget-object p6, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p6, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/narvii/account/AccountService;

    .line 501
    invoke-virtual {p6}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p6

    if-eqz p6, :cond_38

    .line 503
    iget-object v3, p6, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-static {p6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-class p6, Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_38
    const-string p6, "catalog"

    .line 510
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_39

    .line 511
    new-instance p6, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v3, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p6, v3}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 512
    invoke-virtual {p6}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    move-result p6

    xor-int/2addr p6, v5

    const-string v3, "isAllEntry"

    invoke-virtual {p1, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 513
    const-class p6, Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_39
    const-string p6, "leaderboards"

    .line 518
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_3a

    .line 519
    const-class p6, Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-virtual {p0, p1, p6}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_3a
    const-string p6, "notifications"

    .line 523
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_3c

    if-eqz p2, :cond_3b

    .line 525
    const-class p2, Lcom/narvii/notice/AggregationNoticeFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    const-string/jumbo p2, "targetCidTab"

    .line 526
    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_c

    .line 528
    :cond_3b
    const-class p2, Lcom/narvii/notice/NoticeListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_3c
    :goto_c
    const-string p2, "login"

    .line 533
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 534
    const-class p2, Lcom/narvii/account/LoginActivity;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_3d
    const-string p2, "activation"

    .line 540
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3e

    const-string/jumbo p2, "update-email"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3e

    const-string/jumbo p2, "reset-password"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 541
    :cond_3e
    const-class p2, Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_3f
    const-string p2, "community"

    .line 545
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_40

    invoke-static {p4, v6}, Lcom/narvii/util/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_40

    .line 546
    invoke-static {p4, v6}, Lcom/narvii/util/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 547
    const-class p2, Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_40
    const-string/jumbo p2, "topic"

    .line 571
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 572
    const-class p2, Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :try_start_0
    const-string p2, "key_topic_id"

    .line 574
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p1, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    nop

    :goto_d
    if-nez p5, :cond_41

    goto :goto_e

    :cond_41
    const-string p2, "discover"

    .line 579
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p6, "key_default_tab"

    if-eqz p2, :cond_42

    const-string p2, "DISCOVER"

    .line 580
    invoke-virtual {p1, p6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e

    :cond_42
    const-string/jumbo p2, "stories"

    .line 581
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    const-string p2, "STORY"

    .line 582
    invoke-virtual {p1, p6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e

    :cond_43
    const-string p2, "communities"

    .line 583
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_44

    const-string p2, "COMMUNITY"

    .line 584
    invoke-virtual {p1, p6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e

    :cond_44
    const-string p2, "chats"

    .line 585
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45

    const-string p2, "CHAT"

    .line 586
    invoke-virtual {p1, p6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_45
    :goto_e
    const-string/jumbo p2, "tos"

    .line 590
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string/jumbo p5, "url"

    if-eqz p2, :cond_46

    .line 591
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f0f10d4

    invoke-virtual {p2, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-class p2, Lcom/narvii/app/AminoWebViewFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_46
    const-string/jumbo p2, "privacy"

    .line 596
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_47

    .line 597
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f0f0e24

    invoke-virtual {p2, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-class p2, Lcom/narvii/app/AminoWebViewFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_47
    const-string p2, "guidelines"

    .line 602
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_48

    const-string p2, "guideline"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 603
    :cond_48
    const-class p2, Lcom/narvii/guideline/GuidelineFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_49
    const-string p2, "help-center"

    .line 607
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 608
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f0f075f

    invoke-virtual {p2, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    const-class p2, Lcom/narvii/webview/WebViewFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_4a
    const-string/jumbo p2, "settings"

    .line 613
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 614
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 615
    const-class p2, Lcom/narvii/prefs/AccountSettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_f

    .line 617
    :cond_4b
    const-class p2, Lcom/narvii/prefs/SettingsFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_4c
    :goto_f
    const-string/jumbo p2, "public-chats"

    .line 622
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 623
    const-class p2, Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_4d
    const-string/jumbo p2, "quizzes"

    .line 630
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_51

    const-string p2, "best"

    .line 631
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 632
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p5, 0x7f0f0d18

    invoke-virtual {p2, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-class p2, Lcom/narvii/feed/quizzes/BestQuizzesListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_10

    :cond_4e
    const-string/jumbo p2, "trending"

    .line 634
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 635
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p5, 0x7f0f0d2b

    invoke-virtual {p2, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const-class p2, Lcom/narvii/feed/quizzes/TrendingQuizListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_10

    :cond_4f
    const-string p2, "latest"

    .line 637
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_50

    .line 638
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p5, 0x7f0f0d21

    invoke-virtual {p2, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-class p2, Lcom/narvii/feed/quizzes/PlaygroundQuizzesListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_10

    .line 641
    :cond_50
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p5, 0x7f0f0d29

    invoke-virtual {p2, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const-class p2, Lcom/narvii/feed/quizzes/QuizzesListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_51
    :goto_10
    const-string p2, "following-feed"

    .line 647
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 648
    const-class p2, Lcom/narvii/feed/BlogFollowingListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_52
    const-string p2, "latest-posts"

    .line 652
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_53

    .line 653
    const-class p2, Lcom/narvii/feed/BlogAllListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_53
    const-string/jumbo p2, "recommended-posts"

    .line 657
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 658
    const-class p2, Lcom/narvii/feed/BlogRecommendedListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_54
    const-string p2, "link-posts"

    .line 662
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string/jumbo p5, "type"

    if-eqz p2, :cond_55

    const-string p2, "links-recent"

    .line 663
    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f0f0d23

    invoke-virtual {p2, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const-class p2, Lcom/narvii/feed/SubTypeFeedListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_55
    const-string p2, "blogs"

    .line 669
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_56

    const-string p2, "blogs-recent"

    .line 670
    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f0f0d19

    invoke-virtual {p2, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    const-class p2, Lcom/narvii/feed/SubTypeFeedListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_56
    const-string/jumbo p2, "polls"

    .line 676
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_57

    const-string/jumbo p2, "polls-recent"

    .line 677
    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f0f0d26

    invoke-virtual {p2, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-class p2, Lcom/narvii/feed/SubTypeFeedListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_57
    const-string p2, "featured"

    .line 683
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_58

    .line 684
    const-class p2, Lcom/narvii/feed/FrontFeedListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_58
    const-string/jumbo p2, "questions"

    .line 688
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_59

    const-string/jumbo p2, "questions-recent"

    .line 689
    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f0f0d28

    invoke-virtual {p2, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-class p2, Lcom/narvii/feed/SubTypeFeedListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_59
    const-string/jumbo p2, "stories"

    .line 695
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5a

    const-string/jumbo p2, "stories-recent"

    .line 696
    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f0f0d2a

    invoke-virtual {p2, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const-class p2, Lcom/narvii/story/StoryFeedListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_5a
    const-string p2, "image-posts"

    .line 703
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5b

    const-string p2, "images-recent"

    .line 704
    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p6, 0x7f0f0d1f

    invoke-virtual {p2, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-class p2, Lcom/narvii/feed/SubTypeFeedListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_5b
    const-string p2, "external-posts"

    .line 711
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 712
    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5c

    const-string p2, "KEY_EXTERNAL_SOURCE_ID"

    .line 713
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-class p2, Lcom/narvii/feed/ExternalPostListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    goto :goto_11

    :cond_5c
    const-string p2, "external-posts-recent"

    .line 716
    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    iget-object p2, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const p5, 0x7f0f0d1a

    invoke-virtual {p2, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    const-class p2, Lcom/narvii/feed/SubTypeFeedListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_5d
    :goto_11
    const-string/jumbo p2, "paid-out-log"

    .line 723
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5e

    invoke-virtual {p0, p4}, Lcom/narvii/app/BaseNavigator;->isUUID(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5e

    const-string/jumbo p2, "paidOutId"

    .line 724
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    const-class p2, Lcom/narvii/wallet/PaidOutDetailFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_5e
    const-string p2, "membership"

    .line 729
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 730
    const-class p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_5f
    const-string/jumbo p2, "wallet"

    .line 734
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_60

    .line 735
    const-class p2, Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_60
    const-string/jumbo p2, "subscription"

    .line 739
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_61

    .line 740
    const-class p2, Lcom/narvii/influencer/MySubscriptionListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_61
    const-string p2, "blog-categories"

    .line 743
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_62

    .line 744
    const-class p2, Lcom/narvii/feed/BlogCategoryListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_62
    const-string p2, "coupon"

    .line 746
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_63

    .line 747
    const-class p2, Lcom/narvii/monetization/coupons/CouponListFragment;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/BaseNavigator;->setClass(Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_63
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

    .line 754
    const-class v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "WRAPPER_ACTIVITY"

    .line 757
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 758
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    .line 761
    :goto_0
    iget-object v1, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const-class v0, Lcom/narvii/app/FragmentWrapperActivity;

    .line 762
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 761
    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "fragment"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/BaseNavigator;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    return-void
.end method
