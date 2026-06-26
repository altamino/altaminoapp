.class public Lcom/narvii/share/ShareLinkHelper;
.super Ljava/lang/Object;
.source "ShareLinkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/share/ShareLinkHelper$ShareCallback;
    }
.end annotation


# static fields
.field public static final LINK_TRANSLATION_TARGET_DEFAULT:I = 0x1

.field public static final LINK_TRANSLATION_TARGET_FANCLUB:I = 0xa

.field public static final LINK_TRANSLATION_TARGET_STORY_FULLSCREEN:I = 0xb

.field public static final SHARE_TO_CLIPBOARD:I = 0xf1

.field public static final SHARE_TO_EMAIL:I = 0x1

.field public static final SHARE_TO_FACEBOOK:I = 0xa

.field public static final SHARE_TO_INSTAGRAM:I = 0xd

.field public static final SHARE_TO_OTHERS:I = 0xff

.field public static final SHARE_TO_SMS:I = 0x2

.field public static final SHARE_TO_TUMBLR:I = 0xc

.field public static final SHARE_TO_TWITTER:I = 0xb

.field static final cache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/narvii/share/LinkInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field static final userProfileCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
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

    .line 542
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/narvii/share/ShareLinkHelper;->cache:Landroid/support/v4/util/LruCache;

    .line 545
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/narvii/share/ShareLinkHelper;->userProfileCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->running:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->callbacks:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    .line 65
    iput-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/share/ShareLinkHelper;->running:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/share/ShareLinkHelper;Lcom/narvii/model/NVObject;ILcom/narvii/share/LinkInfoV2;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/share/ShareLinkHelper;->cacheLinkInfo(Lcom/narvii/model/NVObject;ILcom/narvii/share/LinkInfoV2;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/share/ShareLinkHelper;)Ljava/util/HashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/share/ShareLinkHelper;->callbacks:Ljava/util/HashMap;

    return-object p0
.end method

.method private cacheLinkInfo(Lcom/narvii/model/NVObject;ILcom/narvii/share/LinkInfoV2;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    .line 101
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/User;

    iget-boolean v0, v0, Lcom/narvii/model/User;->isGlobal:Z

    if-nez v0, :cond_2

    .line 102
    sget-object v0, Lcom/narvii/share/ShareLinkHelper;->userProfileCache:Landroid/support/v4/util/LruCache;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/share/ShareLinkHelper;->getCacheId(Lcom/narvii/model/NVObject;IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 105
    sget-object v0, Lcom/narvii/share/ShareLinkHelper;->cache:Landroid/support/v4/util/LruCache;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/share/ShareLinkHelper;->getCacheId(Lcom/narvii/model/NVObject;IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private getCacheId(Lcom/narvii/model/NVObject;IZ)Ljava/lang/String;
    .locals 3

    const-string v0, "_"

    if-eqz p3, :cond_0

    .line 111
    iget-object p3, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {p3, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/config/ConfigService;

    .line 112
    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p3

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCachedLinkInfo(Lcom/narvii/model/NVObject;I)Lcom/narvii/share/LinkInfoV2;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 88
    :cond_0
    instance-of v1, p1, Lcom/narvii/model/User;

    if-eqz v1, :cond_1

    .line 89
    sget-object v0, Lcom/narvii/share/ShareLinkHelper;->userProfileCache:Landroid/support/v4/util/LruCache;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/share/ShareLinkHelper;->getCacheId(Lcom/narvii/model/NVObject;IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/share/LinkInfoV2;

    return-object p1

    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/narvii/share/ShareLinkHelper;->cache:Landroid/support/v4/util/LruCache;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/share/ShareLinkHelper;->getCacheId(Lcom/narvii/model/NVObject;IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/narvii/share/LinkInfoV2;

    :goto_0
    return-object v0
.end method

.method private getTitle(Lcom/narvii/model/NVObject;)Ljava/lang/String;
    .locals 2

    .line 557
    instance-of v0, p1, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    .line 558
    check-cast p1, Lcom/narvii/model/Feed;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 561
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 562
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method private shareToAll(Lcom/narvii/share/ShareLink;)V
    .locals 4

    .line 417
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 418
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    iget-object v1, p1, Lcom/narvii/share/ShareLink;->subject:Ljava/lang/String;

    .line 420
    iget-object v2, p1, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    const-string v3, ": "

    invoke-virtual {p0, v2, p1, v3}, Lcom/narvii/share/ShareLinkHelper;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.extra.SUBJECT"

    .line 421
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 422
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "_noMapping"

    const/4 v1, 0x1

    .line 424
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private shareToClipboard(Lcom/narvii/share/ShareLink;)Z
    .locals 2

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    .line 408
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 409
    iget-object p1, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private shareToFacebook(Lcom/narvii/share/ShareLink;)Z
    .locals 6

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 320
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    iget-object p1, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 325
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 326
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 327
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.facebook.katana"

    .line 328
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return v1

    :cond_2
    const-string p1, "_noMapping"

    .line 339
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return v3
.end method

.method private shareToTumblr(Lcom/narvii/share/ShareLink;)Z
    .locals 6

    .line 374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 375
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    iget-object v1, p1, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/share/ShareLinkHelper;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    .line 377
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    iget-object p1, p1, Lcom/narvii/share/ShareLink;->subject:Ljava/lang/String;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    const-string p1, "image/*"

    .line 380
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 386
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 387
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 388
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.tumblr"

    .line 389
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 390
    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    return v1

    :cond_3
    const-string p1, "_noMapping"

    .line 399
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return v3
.end method

.method private shareToTwitter(Lcom/narvii/share/ShareLink;)Z
    .locals 6

    .line 345
    iget-object v0, p1, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/share/ShareLinkHelper;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    .line 347
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 348
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 352
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 353
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 355
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 356
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.twitter"

    .line 357
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return v1

    :cond_2
    const-string p1, "_noMapping"

    .line 368
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return v3
.end method

.method private urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 550
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method


# virtual methods
.method protected abort(Lcom/narvii/model/NVObject;)V
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->running:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    .line 535
    iget-object v1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 536
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->running:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->callbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected getLink(Lcom/narvii/model/NVObject;Lcom/narvii/share/LinkInfoV2;I)Lcom/narvii/share/ShareLink;
    .locals 7

    .line 242
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 243
    new-instance v1, Lcom/narvii/util/PackageUtils;

    invoke-direct {v1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 244
    new-instance v2, Lcom/narvii/share/ShareLink;

    invoke-direct {v2}, Lcom/narvii/share/ShareLink;-><init>()V

    .line 245
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->getTitle(Lcom/narvii/model/NVObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/narvii/share/ShareLink;->subject:Ljava/lang/String;

    .line 246
    sget v3, Lcom/narvii/lib/R$string;->share_template_1:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    .line 248
    invoke-virtual {p2}, Lcom/narvii/share/LinkInfoV2;->getInnerLinkInfo()Lcom/narvii/share/LinkInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 249
    iget-object v1, p2, Lcom/narvii/share/LinkInfo;->shareURLShortCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, v2, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    if-eq p3, v4, :cond_2

    const/4 p2, 0x2

    if-eq p3, p2, :cond_1

    goto :goto_1

    .line 258
    :cond_1
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->getTitle(Lcom/narvii/model/NVObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p3, "hi"

    .line 252
    iput-object p3, v2, Lcom/narvii/share/ShareLink;->subject:Ljava/lang/String;

    .line 253
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->getTitle(Lcom/narvii/model/NVObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 254
    iget-object v0, p2, Lcom/narvii/share/LinkInfo;->shareURLFullPath:Ljava/lang/String;

    :cond_3
    iput-object v0, v2, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    :goto_1
    return-object v2
.end method

.method protected joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    return-object p2

    :cond_1
    if-eqz p2, :cond_3

    .line 268
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 271
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public setCallbacks(Lcom/narvii/share/ShareLinkHelper$ShareCallback;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    return-void
.end method

.method public setShareUri(Landroid/net/Uri;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    return-void
.end method

.method public share(Lcom/narvii/share/ShareLink;I)V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_8

    const/4 v3, 0x2

    if-eq p2, v3, :cond_6

    const/16 v3, 0xf1

    if-eq p2, v3, :cond_4

    packed-switch p2, :pswitch_data_0

    .line 235
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToAll(Lcom/narvii/share/ShareLink;)V

    goto/16 :goto_0

    .line 218
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToInstagram(Lcom/narvii/share/ShareLink;)Z

    move-result p1

    const/16 p2, 0xd

    if-nez p1, :cond_0

    .line 219
    sget p1, Lcom/narvii/lib/R$string;->share_app_not_installed:I

    new-array v1, v1, [Ljava/lang/Object;

    sget v3, Lcom/narvii/lib/R$string;->share_instagram:I

    .line 222
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 221
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 224
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    if-eqz p1, :cond_a

    .line 225
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareFailed(I)V

    goto/16 :goto_0

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    if-eqz p1, :cond_a

    .line 229
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareSuccessful(I)V

    goto/16 :goto_0

    .line 184
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToTumblr(Lcom/narvii/share/ShareLink;)Z

    move-result p1

    const/16 p2, 0xc

    if-nez p1, :cond_1

    .line 185
    sget p1, Lcom/narvii/lib/R$string;->share_app_not_installed:I

    new-array v1, v1, [Ljava/lang/Object;

    sget v3, Lcom/narvii/lib/R$string;->share_tumblr:I

    .line 188
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 187
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 190
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    if-eqz p1, :cond_a

    .line 191
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareFailed(I)V

    goto/16 :goto_0

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    if-eqz p1, :cond_a

    .line 195
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareSuccessful(I)V

    goto/16 :goto_0

    .line 167
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToTwitter(Lcom/narvii/share/ShareLink;)Z

    move-result p1

    const/16 p2, 0xb

    if-nez p1, :cond_2

    .line 168
    sget p1, Lcom/narvii/lib/R$string;->share_app_not_installed:I

    new-array v1, v1, [Ljava/lang/Object;

    sget v3, Lcom/narvii/lib/R$string;->share_twitter:I

    .line 171
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 170
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 173
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    if-eqz p1, :cond_a

    .line 174
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareFailed(I)V

    goto/16 :goto_0

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    if-eqz p1, :cond_a

    .line 178
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareSuccessful(I)V

    goto/16 :goto_0

    .line 150
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToFacebook(Lcom/narvii/share/ShareLink;)Z

    move-result p1

    const/16 p2, 0xa

    if-nez p1, :cond_3

    .line 151
    sget p1, Lcom/narvii/lib/R$string;->share_app_not_installed:I

    new-array v1, v1, [Ljava/lang/Object;

    sget v3, Lcom/narvii/lib/R$string;->share_facebook:I

    .line 154
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 153
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 156
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    if-eqz p1, :cond_a

    .line 157
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareFailed(I)V

    goto/16 :goto_0

    .line 160
    :cond_3
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    if-eqz p1, :cond_a

    .line 161
    invoke-interface {p1, p2}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareSuccessful(I)V

    goto :goto_0

    .line 202
    :cond_4
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToClipboard(Lcom/narvii/share/ShareLink;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 203
    sget p1, Lcom/narvii/lib/R$string;->share_copy_to_clipboard_success:I

    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 205
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    if-eqz p1, :cond_a

    .line 206
    invoke-interface {p1, v3}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareSuccessful(I)V

    goto :goto_0

    .line 209
    :cond_5
    sget p1, Lcom/narvii/lib/R$string;->share_copy_to_clipboard_fail:I

    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 211
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    if-eqz p1, :cond_a

    .line 212
    invoke-interface {p1, v3}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareFailed(I)V

    goto :goto_0

    .line 137
    :cond_6
    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToSms(Lcom/narvii/share/ShareLink;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 138
    sget p1, Lcom/narvii/lib/R$string;->share_fail:I

    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 139
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    if-eqz p1, :cond_a

    .line 140
    invoke-interface {p1, v3}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareFailed(I)V

    goto :goto_0

    .line 143
    :cond_7
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    if-eqz p1, :cond_a

    .line 144
    invoke-interface {p1, v3}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareSuccessful(I)V

    goto :goto_0

    .line 124
    :cond_8
    invoke-virtual {p0, p1}, Lcom/narvii/share/ShareLinkHelper;->shareToEmail(Lcom/narvii/share/ShareLink;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 125
    sget p1, Lcom/narvii/lib/R$string;->share_fail:I

    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 126
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    if-eqz p1, :cond_a

    .line 127
    invoke-interface {p1, v1}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareFailed(I)V

    goto :goto_0

    .line 130
    :cond_9
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareCallback:Lcom/narvii/share/ShareLinkHelper$ShareCallback;

    if-eqz p1, :cond_a

    .line 131
    invoke-interface {p1, v1}, Lcom/narvii/share/ShareLinkHelper$ShareCallback;->onShareSuccessful(I)V

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

    .line 277
    :try_start_0
    iget-object v0, p1, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/share/ShareLinkHelper;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 278
    new-instance v3, Lcom/narvii/share/ShareUtils;

    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v3, v0}, Lcom/narvii/share/ShareUtils;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/narvii/share/ShareLink;->subject:Ljava/lang/String;

    iget-object v7, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    .line 280
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->share_chooser_link:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 279
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/share/ShareUtils;->shareEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method protected shareToInstagram(Lcom/narvii/share/ShareLink;)Z
    .locals 6

    .line 429
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    iget-object p1, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 434
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 435
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 436
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 437
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.instagram.android"

    .line 438
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return v1

    :cond_2
    const-string p1, "_noMapping"

    .line 449
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 450
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return v3
.end method

.method protected shareToSms(Lcom/narvii/share/ShareLink;)Z
    .locals 5

    .line 288
    :try_start_0
    iget-object v0, p1, Lcom/narvii/share/ShareLink;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/share/ShareLink;->url:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/share/ShareLinkHelper;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x13

    const-string v2, "image/*"

    const-string v3, "android.intent.extra.STREAM"

    if-lt v0, v1, :cond_1

    .line 290
    :try_start_1
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    iget-object v4, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 294
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    .line 295
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 303
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "sms:"

    .line 304
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "sms_body"

    .line 305
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    if-eqz p1, :cond_2

    .line 307
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->shareUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 309
    :cond_2
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object p1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

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

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 462
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 467
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/narvii/share/ShareLinkHelper;->getCachedLinkInfo(Lcom/narvii/model/NVObject;I)Lcom/narvii/share/LinkInfoV2;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 469
    invoke-interface {p2, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    if-eqz p2, :cond_5

    .line 475
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->callbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    iget-object v1, p0, Lcom/narvii/share/ShareLinkHelper;->callbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_5
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->running:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 485
    :cond_6
    iget-object v0, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 486
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-nez v0, :cond_7

    .line 487
    instance-of v1, p1, Lcom/narvii/model/Feed;

    if-eqz v1, :cond_7

    .line 488
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Feed;

    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 490
    :cond_7
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/link-resolution"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 491
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    if-nez p3, :cond_8

    const/4 v2, 0x1

    goto :goto_0

    :cond_8
    move v2, p3

    .line 492
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "targetCode"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 493
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "objectType"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/narvii/share/ShareLinkHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 495
    new-instance v8, Lcom/narvii/share/ShareLinkHelper$1;

    const-class v4, Lcom/narvii/share/LinkV2TranslationResponse;

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    move v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/narvii/share/ShareLinkHelper$1;-><init>(Lcom/narvii/share/ShareLinkHelper;Ljava/lang/Class;Lcom/narvii/model/NVObject;ILcom/narvii/util/Callback;)V

    invoke-virtual {v1, v0, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
