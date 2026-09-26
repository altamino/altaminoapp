.class public final Landroidx/core/app/NavUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NavUtils$Api16Impl;
    }
.end annotation


# static fields
.field public static final PARENT_ACTIVITY:Ljava/lang/String; = "android.support.PARENT_ACTIVITY"

.field private static final TAG:Ljava/lang/String; = "NavUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/app/NavUtils$Api16Impl;->a(Landroid/app/Activity;)Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0}, Landroidx/core/app/NavUtils;->c(Landroid/app/Activity;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    return-object v1

    .line 16
    .line 17
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-static {p0, v2}, Landroidx/core/app/NavUtils;->d(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 30
    move-result-object p0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_2
    new-instance p0, Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-object p0

    .line 42
    .line 43
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v2, "getParentActivityIntent: bad parentActivityName \'"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v0, "\' in manifest"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    .line 65
    const-string v0, "NavUtils"

    .line 66
    .line 67
    .line 68
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-object v1
.end method

.method public static b(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils;->d(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    .line 10
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1}, Landroidx/core/app/NavUtils;->d(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    new-instance p0, Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    move-result-object p0

    .line 38
    :goto_0
    return-object p0
.end method

.method public static c(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Landroidx/core/app/NavUtils;->d(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    .line 8
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    throw v0
.end method

.method public static d(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x1d

    .line 9
    .line 10
    if-lt v1, v2, :cond_0

    .line 11
    .line 12
    .line 13
    const v1, 0x100c0280

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const/16 v2, 0x18

    .line 17
    .line 18
    if-lt v1, v2, :cond_1

    .line 19
    .line 20
    .line 21
    const v1, 0xc0280

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    const/16 v1, 0x280

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    return-object v0

    .line 34
    .line 35
    :cond_2
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 36
    const/4 v0, 0x0

    .line 37
    .line 38
    if-nez p1, :cond_3

    .line 39
    return-object v0

    .line 40
    .line 41
    :cond_3
    const-string v1, "android.support.PARENT_ACTIVITY"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    if-nez p1, :cond_4

    .line 48
    return-object v0

    .line 49
    :cond_4
    const/4 v0, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 53
    move-result v0

    .line 54
    .line 55
    const/16 v1, 0x2e

    .line 56
    .line 57
    if-ne v0, v1, :cond_5

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    :cond_5
    return-object p1
.end method

.method public static e(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils$Api16Impl;->b(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 4
    return-void
.end method

.method public static f(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils$Api16Impl;->c(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method
