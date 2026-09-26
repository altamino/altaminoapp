.class public Lcom/narvii/share/ShareLinkHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/share/ShareLinkHelper$ShareCallback;
    }
.end annotation


# static fields
.field public static final LINK_TRANSLATION_TARGET_DEFAULT:I = 0x1

.field public static final LINK_TRANSLATION_TARGET_FANCLUB:I = 0xa

.field public static final SHARE_TO_CLIPBOARD:I = 0xf1

.field public static final SHARE_TO_EMAIL:I = 0x1

.field public static final SHARE_TO_FACEBOOK:I = 0xa

.field public static final SHARE_TO_INSTAGRAM:I = 0xd

.field public static final SHARE_TO_OTHERS:I = 0xff

.field public static final SHARE_TO_SMS:I = 0x2

.field public static final SHARE_TO_TUMBLR:I = 0xc

.field public static final SHARE_TO_TWITTER:I = 0xb

.field static final cache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Lcom/narvii/share/LinkInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field static final userProfileCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Lcom/narvii/share/LinkInfoV2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final callbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/share/LinkInfoV2;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected context:Lcom/narvii/app/NVContext;

.field private final running:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/http/ApiRequest;",
            ">;"
        }
    .end annotation
.end field

.field public sbb:Z

.field shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

.field protected shareCommunitySubject:Ljava/lang/String;

.field protected shareCommunityText:Ljava/lang/String;

.field protected shareSource:Ljava/lang/String;

.field protected shareUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/collection/LruCache;

    .line 3
    .line 4
    const/16 v1, 0x10

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/share/ShareLinkHelper;->cache:Landroidx/collection/LruCache;

    .line 10
    .line 11
    new-instance v0, Landroidx/collection/LruCache;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/share/ShareLinkHelper;->userProfileCache:Landroidx/collection/LruCache;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->running:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->callbacks:Ljava/util/HashMap;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 23
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/share/ShareLinkHelper;->callbacks:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/share/ShareLinkHelper;->running:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/share/ShareLinkHelper;Lcom/narvii/model/NVObject;ILcom/narvii/share/LinkInfoV2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/share/ShareLinkHelper;->cacheLinkInfo(Lcom/narvii/model/NVObject;ILcom/narvii/share/LinkInfoV2;)V

    return-void
.end method

.method private cacheLinkInfo(Lcom/narvii/model/NVObject;ILcom/narvii/share/LinkInfoV2;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    move-object v0, p1

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/User;

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/narvii/model/User;->isGlobal:Z

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    sget-object v0, Lcom/narvii/share/ShareLinkHelper;->userProfileCache:Landroidx/collection/LruCache;

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/share/ShareLinkHelper;->getCacheId(Lcom/narvii/model/NVObject;IZ)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget-object v0, Lcom/narvii/share/ShareLinkHelper;->cache:Landroidx/collection/LruCache;

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/share/ShareLinkHelper;->getCacheId(Lcom/narvii/model/NVObject;IZ)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, p3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_2
    :goto_0
    return-void
.end method

.method private getCacheId(Lcom/narvii/model/NVObject;IZ)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    const-string v0, "_"

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    iget-object p3, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v1, "config"

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p3

    .line 13
    .line 14
    check-cast p3, Lcom/narvii/config/ConfigService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 18
    move-result p3

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string/jumbo v2, "x"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    .line 55
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    return-object p1
.end method

.method private getCachedLinkInfo(Lcom/narvii/model/NVObject;I)Lcom/narvii/share/LinkInfoV2;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/narvii/model/User;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/share/ShareLinkHelper;->userProfileCache:Landroidx/collection/LruCache;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/share/ShareLinkHelper;->getCacheId(Lcom/narvii/model/NVObject;IZ)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/share/LinkInfoV2;

    .line 22
    return-object p1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_2
    sget-object v0, Lcom/narvii/share/ShareLinkHelper;->cache:Landroidx/collection/LruCache;

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/share/ShareLinkHelper;->getCacheId(Lcom/narvii/model/NVObject;IZ)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    move-object v0, p1

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/share/LinkInfoV2;

    .line 44
    :goto_0
    return-object v0
.end method

.method private getTitle(Lcom/narvii/model/NVObject;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Feed;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Feed;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "title"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p1

    .line 30
    .line 31
    :catch_0
    const-string p1, ""

    .line 32
    return-object p1
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private shareToAll(Lcom/narvii/share/ShareLink;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "android.intent.action.SEND"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "text/plain"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/narvii/share/ShareLink;->subject:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p1, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, ": "

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2, p1, v3}, Lcom/narvii/share/ShareLinkHelper;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string v2, "android.intent.extra.SUBJECT"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    const-string v1, "android.intent.extra.TEXT"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    const-string p1, "android.intent.extra.STREAM"

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 43
    .line 44
    const-string p1, "_noMapping"

    .line 45
    const/4 v1, 0x1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Lcom/narvii/share/ShareLinkHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method private shareToClipboard(Lcom/narvii/share/ShareLink;)Z
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "clipboard"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/content/ClipboardManager;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :catch_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method private shareToFacebook(Lcom/narvii/share/ShareLink;)Z
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "android.intent.action.SEND"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "text/plain"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "android.intent.extra.TEXT"

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 52
    .line 53
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 54
    .line 55
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    const-string v4, "com.facebook.katana"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    move-result v3

    .line 68
    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 72
    .line 73
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    const-string p1, "_noMapping"

    .line 79
    const/4 v1, 0x1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    .line 84
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v0}, Lcom/narvii/share/ShareLinkHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 88
    :cond_1
    return v1
.end method

.method private shareToTumblr(Lcom/narvii/share/ShareLink;)Z
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "android.intent.action.SEND"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "text/plain"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "\n"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/share/ShareLinkHelper;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    const-string v2, "android.intent.extra.TEXT"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    const-string v1, "android.intent.extra.SUBJECT"

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/share/ShareLink;->subject:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const-string p1, "image/*"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    const-string p1, "android.intent.extra.STREAM"

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 61
    move-result-object p1

    .line 62
    const/4 v1, 0x0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v2

    .line 75
    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 83
    .line 84
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 85
    .line 86
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    const-string v4, "com.tumblr"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    move-result v3

    .line 99
    .line 100
    if-eqz v3, :cond_1

    .line 101
    .line 102
    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 103
    .line 104
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    .line 109
    const-string p1, "_noMapping"

    .line 110
    const/4 v1, 0x1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    .line 115
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 116
    .line 117
    .line 118
    invoke-static {p1, v0}, Lcom/narvii/share/ShareLinkHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 119
    :cond_2
    return v1
.end method

.method private shareToTwitter(Lcom/narvii/share/ShareLink;)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "\n"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/share/ShareLinkHelper;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v1, "android.intent.action.SEND"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    const-string v1, "*/*"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    const-string v1, "android.intent.extra.TEXT"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    const-string p1, "android.intent.extra.STREAM"

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    move-result-object p1

    .line 45
    const/4 v1, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 66
    .line 67
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 68
    .line 69
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 70
    .line 71
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    const-string v4, "com.twitter"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    move-result v3

    .line 82
    .line 83
    if-eqz v3, :cond_0

    .line 84
    .line 85
    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 86
    .line 87
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    const-string p1, "_noMapping"

    .line 93
    const/4 v1, 0x1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v0}, Lcom/narvii/share/ShareLinkHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 102
    :cond_1
    return v1
.end method

.method private urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    :try_start_0
    const-string v0, "UTF-8"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    return-object p1
.end method


# virtual methods
.method protected abort(Lcom/narvii/model/NVObject;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->running:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/util/http/ApiRequest;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    const-string v2, "api"

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->running:Ljava/util/HashMap;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->callbacks:Ljava/util/HashMap;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method protected getLink(Lcom/narvii/model/NVObject;Lcom/narvii/share/LinkInfoV2;I)Lcom/narvii/share/ShareLink;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    new-instance v2, Lcom/narvii/share/ShareLink;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2}, Lcom/narvii/share/ShareLink;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->getTitle(Lcom/narvii/model/NVObject;)Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    iput-object v3, v2, Lcom/narvii/share/ShareLink;->subject:Ljava/lang/String;

    .line 23
    .line 24
    sget v3, Lcom/narvii/lib/R$string;->share_template_1:I

    .line 25
    const/4 v4, 0x1

    .line 26
    .line 27
    new-array v5, v4, [Ljava/lang/Object;

    .line 28
    const/4 v6, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    aput-object v1, v5, v6

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iput-object v0, v2, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/narvii/share/LinkInfoV2;->getInnerLinkInfo()Lcom/narvii/share/LinkInfo;

    .line 44
    move-result-object p2

    .line 45
    const/4 v0, 0x0

    .line 46
    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    iget-object v1, p2, Lcom/narvii/share/LinkInfo;->shareURLShortCode:Ljava/lang/String;

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-object v1, v0

    .line 52
    .line 53
    :goto_0
    iput-object v1, v2, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    .line 54
    .line 55
    if-eq p3, v4, :cond_2

    .line 56
    const/4 p2, 0x2

    .line 57
    .line 58
    if-eq p3, p2, :cond_1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->getTitle(Lcom/narvii/model/NVObject;)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iput-object p1, v2, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_2
    const-string p3, "hi"

    .line 69
    .line 70
    iput-object p3, v2, Lcom/narvii/share/ShareLink;->subject:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->getTitle(Lcom/narvii/model/NVObject;)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    iput-object p1, v2, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    iget-object v0, p2, Lcom/narvii/share/LinkInfo;->shareURLFullPath:Ljava/lang/String;

    .line 81
    .line 82
    :cond_3
    iput-object v0, v2, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    .line 83
    :goto_1
    return-object v2
.end method

.method protected joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const-string p2, ""

    .line 11
    :cond_0
    return-object p2

    .line 12
    .line 13
    :cond_1
    if-eqz p2, :cond_3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    :cond_3
    :goto_0
    return-object p1
.end method

.method public setCallbacks(Lcom/narvii/share/ShareLinkHelper$ShareCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    return-void
.end method

.method public setShareUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    return-void
.end method

.method public share(Lcom/narvii/share/ShareLink;I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eq p2, v1, :cond_8

    .line 11
    const/4 v3, 0x2

    .line 12
    .line 13
    if-eq p2, v3, :cond_6

    .line 14
    .line 15
    const/16 v3, 0xf1

    .line 16
    .line 17
    if-eq p2, v3, :cond_4

    .line 18
    .line 19
    .line 20
    packed-switch p2, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToAll(Lcom/narvii/share/ShareLink;)V

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    .line 28
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToInstagram(Lcom/narvii/share/ShareLink;)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    const/16 p2, 0xd

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    sget p1, Lcom/narvii/lib/R$string;->share_app_not_installed:I

    .line 36
    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    sget v3, Lcom/narvii/lib/R$string;->share_instagram:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    aput-object v3, v1, v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    .line 59
    .line 60
    if-eqz p1, :cond_a

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareFailed(I)V

    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    .line 68
    .line 69
    if-eqz p1, :cond_a

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareSuccessful(I)V

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    .line 77
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToTumblr(Lcom/narvii/share/ShareLink;)Z

    .line 78
    move-result p1

    .line 79
    .line 80
    const/16 p2, 0xc

    .line 81
    .line 82
    if-nez p1, :cond_1

    .line 83
    .line 84
    sget p1, Lcom/narvii/lib/R$string;->share_app_not_installed:I

    .line 85
    .line 86
    new-array v1, v1, [Ljava/lang/Object;

    .line 87
    .line 88
    sget v3, Lcom/narvii/lib/R$string;->share_tumblr:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    aput-object v3, v1, v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 106
    .line 107
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    .line 108
    .line 109
    if-eqz p1, :cond_a

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareFailed(I)V

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :cond_1
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    .line 117
    .line 118
    if-eqz p1, :cond_a

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareSuccessful(I)V

    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    .line 126
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToTwitter(Lcom/narvii/share/ShareLink;)Z

    .line 127
    move-result p1

    .line 128
    .line 129
    const/16 p2, 0xb

    .line 130
    .line 131
    if-nez p1, :cond_2

    .line 132
    .line 133
    sget p1, Lcom/narvii/lib/R$string;->share_app_not_installed:I

    .line 134
    .line 135
    new-array v1, v1, [Ljava/lang/Object;

    .line 136
    .line 137
    sget v3, Lcom/narvii/lib/R$string;->share_twitter:I

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    aput-object v3, v1, v2

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    .line 150
    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 155
    .line 156
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    .line 157
    .line 158
    if-eqz p1, :cond_a

    .line 159
    .line 160
    .line 161
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareFailed(I)V

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_2
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    .line 166
    .line 167
    if-eqz p1, :cond_a

    .line 168
    .line 169
    .line 170
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareSuccessful(I)V

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    .line 175
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToFacebook(Lcom/narvii/share/ShareLink;)Z

    .line 176
    move-result p1

    .line 177
    .line 178
    const/16 p2, 0xa

    .line 179
    .line 180
    if-nez p1, :cond_3

    .line 181
    .line 182
    sget p1, Lcom/narvii/lib/R$string;->share_app_not_installed:I

    .line 183
    .line 184
    new-array v1, v1, [Ljava/lang/Object;

    .line 185
    .line 186
    sget v3, Lcom/narvii/lib/R$string;->share_facebook:I

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 190
    move-result-object v3

    .line 191
    .line 192
    aput-object v3, v1, v2

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    .line 199
    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 200
    move-result-object p1

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 204
    .line 205
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    .line 206
    .line 207
    if-eqz p1, :cond_a

    .line 208
    .line 209
    .line 210
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareFailed(I)V

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_3
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    .line 215
    .line 216
    if-eqz p1, :cond_a

    .line 217
    .line 218
    .line 219
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareSuccessful(I)V

    .line 220
    goto :goto_0

    .line 221
    .line 222
    .line 223
    :cond_4
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToClipboard(Lcom/narvii/share/ShareLink;)Z

    .line 224
    move-result p1

    .line 225
    .line 226
    if-eqz p1, :cond_5

    .line 227
    .line 228
    sget p1, Lcom/narvii/lib/R$string;->share_copy_to_clipboard_success:I

    .line 229
    .line 230
    .line 231
    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 232
    move-result-object p1

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 236
    .line 237
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    .line 238
    .line 239
    if-eqz p1, :cond_a

    .line 240
    .line 241
    .line 242
    invoke-interface {p1, v3}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareSuccessful(I)V

    .line 243
    goto :goto_0

    .line 244
    .line 245
    :cond_5
    sget p1, Lcom/narvii/lib/R$string;->share_copy_to_clipboard_fail:I

    .line 246
    .line 247
    .line 248
    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 249
    move-result-object p1

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 253
    .line 254
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    .line 255
    .line 256
    if-eqz p1, :cond_a

    .line 257
    .line 258
    .line 259
    invoke-interface {p1, v3}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareFailed(I)V

    .line 260
    goto :goto_0

    .line 261
    .line 262
    .line 263
    :cond_6
    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToSms(Lcom/narvii/share/ShareLink;)Z

    .line 264
    move-result p1

    .line 265
    .line 266
    if-nez p1, :cond_7

    .line 267
    .line 268
    sget p1, Lcom/narvii/lib/R$string;->share_fail:I

    .line 269
    .line 270
    .line 271
    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 272
    move-result-object p1

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 276
    .line 277
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    .line 278
    .line 279
    if-eqz p1, :cond_a

    .line 280
    .line 281
    .line 282
    invoke-interface {p1, v3}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareFailed(I)V

    .line 283
    goto :goto_0

    .line 284
    .line 285
    :cond_7
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    .line 286
    .line 287
    if-eqz p1, :cond_a

    .line 288
    .line 289
    .line 290
    invoke-interface {p1, v3}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareSuccessful(I)V

    .line 291
    goto :goto_0

    .line 292
    .line 293
    .line 294
    :cond_8
    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToEmail(Lcom/narvii/share/ShareLink;)Z

    .line 295
    move-result p1

    .line 296
    .line 297
    if-nez p1, :cond_9

    .line 298
    .line 299
    sget p1, Lcom/narvii/lib/R$string;->share_fail:I

    .line 300
    .line 301
    .line 302
    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 303
    move-result-object p1

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 307
    .line 308
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    .line 309
    .line 310
    if-eqz p1, :cond_a

    .line 311
    .line 312
    .line 313
    invoke-interface {p1, v1}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareFailed(I)V

    .line 314
    goto :goto_0

    .line 315
    .line 316
    :cond_9
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    .line 317
    .line 318
    if-eqz p1, :cond_a

    .line 319
    .line 320
    .line 321
    invoke-interface {p1, v1}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareSuccessful(I)V

    .line 322
    :cond_a
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected shareToEmail(Lcom/narvii/share/ShareLink;)Z
    .locals 9

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    .line 5
    .line 6
    const-string v2, "\n"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/share/ShareLinkHelper;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v6

    .line 11
    .line 12
    new-instance v3, Lcom/narvii/share/ShareUtils;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v0}, Lcom/narvii/share/ShareUtils;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    iget-object v5, p1, Lcom/narvii/share/ShareLink;->subject:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v7, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    sget v0, Lcom/narvii/lib/R$string;->share_chooser_link:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object v8

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/share/ShareUtils;->shareEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 38
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return p1

    .line 40
    :catch_0
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method protected shareToInstagram(Lcom/narvii/share/ShareLink;)Z
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "android.intent.action.SEND"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v1, "image/*"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    const-string v1, "android.intent.extra.TEXT"

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    const-string p1, "android.intent.extra.STREAM"

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    move-result-object p1

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v2

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 58
    .line 59
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 60
    .line 61
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    const-string v4, "com.instagram.android"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    move-result v3

    .line 74
    .line 75
    if-eqz v3, :cond_0

    .line 76
    .line 77
    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 78
    .line 79
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    .line 84
    const-string p1, "_noMapping"

    .line 85
    const/4 v1, 0x1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v0}, Lcom/narvii/share/ShareLinkHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 94
    :cond_1
    return v1
.end method

.method protected shareToSms(Lcom/narvii/share/ShareLink;)Z
    .locals 4

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "\n"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/share/ShareLinkHelper;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    new-instance v1, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v2, "android.intent.action.SEND"

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    const-string v2, "android.intent.extra.STREAM"

    .line 30
    .line 31
    iget-object v3, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    .line 36
    const-string v2, "image/*"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    const-string v2, "android.intent.extra.TEXT"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1}, Lcom/narvii/share/ShareLinkHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :catch_0
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public startLinkTranslation(Lcom/narvii/model/NVObject;Lcom/narvii/util/Callback;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/NVObject;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/share/LinkInfoV2;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 9
    :cond_0
    return-void

    .line 10
    .line 11
    .line 12
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/narvii/share/ShareLinkHelper;->getCachedLinkInfo(Lcom/narvii/model/NVObject;I)Lcom/narvii/share/LinkInfoV2;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 21
    :cond_2
    return-void

    .line 22
    .line 23
    :cond_3
    if-eqz p2, :cond_5

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->callbacks:Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/share/ShareLinkHelper;->callbacks:Ljava/util/HashMap;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    :cond_5
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->running:Ljava/util/HashMap;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    return-void

    .line 68
    .line 69
    :cond_6
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 70
    .line 71
    const-string v1, "config"

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 81
    move-result v0

    .line 82
    .line 83
    if-nez v0, :cond_7

    .line 84
    .line 85
    instance-of v1, p1, Lcom/narvii/model/Feed;

    .line 86
    .line 87
    if-eqz v1, :cond_7

    .line 88
    move-object v0, p1

    .line 89
    .line 90
    check-cast v0, Lcom/narvii/model/Feed;

    .line 91
    .line 92
    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 93
    .line 94
    .line 95
    :cond_7
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    const-string v2, "/link-resolution"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    const-string v2, "objectId"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    if-nez p3, :cond_8

    .line 119
    const/4 v2, 0x1

    .line 120
    goto :goto_0

    .line 121
    :cond_8
    move v2, p3

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    .line 128
    const-string/jumbo v3, "targetCode"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    .line 136
    move-result v2

    .line 137
    .line 138
    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object v2

    .line 141
    .line 142
    const-string v3, "objectType"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 154
    move-result-object v0

    .line 155
    .line 156
    iget-object v1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 157
    .line 158
    const-string v2, "api"

    .line 159
    .line 160
    .line 161
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 165
    .line 166
    new-instance v8, Lcom/narvii/share/ShareLinkHelper$1;

    .line 167
    .line 168
    const-class v4, Lcom/narvii/share/LinkV2TranslationResponse;

    .line 169
    move-object v2, v8

    .line 170
    move-object v3, p0

    .line 171
    move-object v5, p1

    .line 172
    move v6, p3

    .line 173
    move-object v7, p2

    .line 174
    .line 175
    .line 176
    invoke-direct/range {v2 .. v7}, Lcom/narvii/share/ShareLinkHelper$1;-><init>(Lcom/narvii/share/ShareLinkHelper;Ljava/lang/Class;Lcom/narvii/model/NVObject;ILcom/narvii/util/Callback;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v0, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 180
    return-void
.end method
