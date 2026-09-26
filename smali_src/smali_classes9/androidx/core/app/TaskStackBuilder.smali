.class public final Landroidx/core/app/TaskStackBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/TaskStackBuilder$Api16Impl;,
        Landroidx/core/app/TaskStackBuilder$SupportParentable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskStackBuilder"


# instance fields
.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 13
    return-void
.end method

.method public static e(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/core/app/TaskStackBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/core/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method

.method public b(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    :cond_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/core/app/TaskStackBuilder;->d(Landroid/content/ComponentName;)Landroidx/core/app/TaskStackBuilder;

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/core/app/TaskStackBuilder;->a(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    .line 25
    return-object p0
.end method

.method public c(Landroid/app/Activity;)Landroidx/core/app/TaskStackBuilder;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/core/app/TaskStackBuilder$SupportParentable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Landroidx/core/app/TaskStackBuilder$SupportParentable;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/core/app/TaskStackBuilder$SupportParentable;->getSupportParentActivityIntent()Landroid/content/Intent;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/core/app/NavUtils;->a(Landroid/app/Activity;)Landroid/content/Intent;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    :cond_1
    if-eqz v0, :cond_3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/core/app/TaskStackBuilder;->d(Landroid/content/ComponentName;)Landroidx/core/app/TaskStackBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroidx/core/app/TaskStackBuilder;->a(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    .line 44
    :cond_3
    return-object p0
.end method

.method public d(Landroid/content/ComponentName;)Landroidx/core/app/TaskStackBuilder;
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p1}, Landroidx/core/app/NavUtils;->b(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    :goto_0
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {v1, p1}, Landroidx/core/app/NavUtils;->b(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 29
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    return-object p0

    .line 34
    .line 35
    :goto_1
    const-string v0, "TaskStackBuilder"

    .line 36
    .line 37
    const-string v1, "Bad ComponentName while traversing activity parent metadata"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    throw v0
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/core/app/TaskStackBuilder;->g(Landroid/os/Bundle;)V

    .line 5
    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    new-array v2, v1, [Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, [Landroid/content/Intent;

    .line 20
    .line 21
    new-instance v2, Landroid/content/Intent;

    .line 22
    .line 23
    aget-object v3, v0, v1

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    const v3, 0x1000c000

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    aput-object v2, v0, v1

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0, p1}, Landroidx/core/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    new-instance p1, Landroid/content/Intent;

    .line 46
    array-length v1, v0

    .line 47
    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    aget-object v0, v0, v1

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 54
    .line 55
    const/high16 v0, 0x10000000

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    invoke-static {v0, p1}, Landroidx/core/app/TaskStackBuilder;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 64
    :cond_0
    return-void

    .line 65
    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v0, "No intents added to TaskStackBuilder; cannot startActivities"

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
