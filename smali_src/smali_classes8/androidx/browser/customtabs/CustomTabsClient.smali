.class public Landroidx/browser/customtabs/CustomTabsClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsClient"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mService:Landroid/support/customtabs/b;

.field private final mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/customtabs/b;Landroid/content/ComponentName;Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/b;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient;->mApplicationContext:Landroid/content/Context;

    .line 10
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/browser/customtabs/CustomTabsServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;->setApplicationContext(Landroid/content/Context;)V

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v1, "android.support.customtabs.action.CustomTabsService"

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    :cond_0
    const/16 p1, 0x21

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0}, Landroidx/browser/customtabs/CustomTabsClient$1;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {p0, p1, v1}, Landroidx/browser/customtabs/CustomTabsClient;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    .line 17
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return p0

    .line 19
    :catch_0
    return v0
.end method

.method private c(Landroidx/browser/customtabs/CustomTabsCallback;)Landroid/support/customtabs/a$a;
    .locals 1
    .param p1    # Landroidx/browser/customtabs/CustomTabsCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroidx/browser/customtabs/CustomTabsClient$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$2;-><init>(Landroidx/browser/customtabs/CustomTabsClient;Landroidx/browser/customtabs/CustomTabsCallback;)V

    .line 6
    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->e(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, p1

    .line 14
    .line 15
    :goto_0
    new-instance v1, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v2, "http://"

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    const-string v3, "android.intent.action.VIEW"

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    if-nez p2, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 38
    .line 39
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 45
    move-result v0

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    :cond_1
    move-object v0, v1

    .line 60
    .line 61
    :cond_2
    new-instance p1, Landroid/content/Intent;

    .line 62
    .line 63
    const-string p2, "android.support.customtabs.action.CustomTabsService"

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    check-cast v0, Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    if-eqz v1, :cond_3

    .line 92
    return-object v0

    .line 93
    .line 94
    :cond_4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 95
    .line 96
    const/16 p1, 0x1e

    .line 97
    .line 98
    if-lt p0, p1, :cond_5

    .line 99
    .line 100
    const-string p0, "CustomTabsClient"

    .line 101
    .line 102
    const-string p1, "Unable to find any Custom Tabs packages, you may need to add a <queries> element to your manifest. See the docs for CustomTabsClient#getPackageName."

    .line 103
    .line 104
    .line 105
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_5
    const/4 p0, 0x0

    .line 107
    return-object p0
.end method

.method private g(Landroidx/browser/customtabs/CustomTabsCallback;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/CustomTabsSession;
    .locals 3
    .param p1    # Landroidx/browser/customtabs/CustomTabsCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/browser/customtabs/CustomTabsClient;->c(Landroidx/browser/customtabs/CustomTabsCallback;)Landroid/support/customtabs/a$a;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    const-string v2, "android.support.customtabs.extra.SESSION_ID"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/b;

    .line 20
    .line 21
    .line 22
    invoke-interface {v2, p1, v1}, Landroid/support/customtabs/b;->A0(Landroid/support/customtabs/a;Landroid/os/Bundle;)Z

    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/b;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, p1}, Landroid/support/customtabs/b;->a0(Landroid/support/customtabs/a;)Z

    .line 30
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    :goto_0
    if-nez v1, :cond_1

    .line 33
    return-object v0

    .line 34
    .line 35
    :cond_1
    new-instance v0, Landroidx/browser/customtabs/CustomTabsSession;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/b;

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1, p1, v2, p2}, Landroidx/browser/customtabs/CustomTabsSession;-><init>(Landroid/support/customtabs/b;Landroid/support/customtabs/a;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    .line 43
    :catch_0
    return-object v0
.end method


# virtual methods
.method public f(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;
    .locals 1
    .param p1    # Landroidx/browser/customtabs/CustomTabsCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->g(Landroidx/browser/customtabs/CustomTabsCallback;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/CustomTabsSession;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public h(J)Z
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/b;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/b;->V(J)Z

    .line 6
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    const/4 p1, 0x0

    .line 9
    return p1
.end method
