.class Landroidx/core/app/NotificationCompatJellybean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# static fields
.field static final EXTRA_ALLOW_GENERATED_REPLIES:Ljava/lang/String; = "android.support.allowGeneratedReplies"

.field static final EXTRA_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String; = "android.support.dataRemoteInputs"

.field private static final KEY_ACTION_INTENT:Ljava/lang/String; = "actionIntent"

.field private static final KEY_ALLOWED_DATA_TYPES:Ljava/lang/String; = "allowedDataTypes"

.field private static final KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String; = "allowFreeFormInput"

.field private static final KEY_CHOICES:Ljava/lang/String; = "choices"

.field private static final KEY_DATA_ONLY_REMOTE_INPUTS:Ljava/lang/String; = "dataOnlyRemoteInputs"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_ICON:Ljava/lang/String; = "icon"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_REMOTE_INPUTS:Ljava/lang/String; = "remoteInputs"

.field private static final KEY_RESULT_KEY:Ljava/lang/String; = "resultKey"

.field private static final KEY_SEMANTIC_ACTION:Ljava/lang/String; = "semanticAction"

.field private static final KEY_SHOWS_USER_INTERFACE:Ljava/lang/String; = "showsUserInterface"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final TAG:Ljava/lang/String; = "NotificationCompat"

.field private static sActionIconField:Ljava/lang/reflect/Field;

.field private static sActionIntentField:Ljava/lang/reflect/Field;

.field private static sActionTitleField:Ljava/lang/reflect/Field;

.field private static sActionsAccessFailed:Z

.field private static sActionsField:Ljava/lang/reflect/Field;

.field private static final sActionsLock:Ljava/lang/Object;

.field private static sExtrasField:Ljava/lang/reflect/Field;

.field private static sExtrasFieldAccessFailed:Z

.field private static final sExtrasLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    sput-object v0, Landroidx/core/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static a(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput;
    .locals 9

    .line 1
    .line 2
    const-string v0, "allowedDataTypes"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v8, Ljava/util/HashSet;

    .line 9
    .line 10
    .line 11
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    new-instance v0, Landroidx/core/app/RemoteInput;

    .line 36
    .line 37
    const-string v1, "resultKey"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    const-string v1, "label"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    const-string v1, "choices"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    const-string v1, "allowFreeFormInput"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 59
    move-result v5

    .line 60
    const/4 v6, 0x0

    .line 61
    .line 62
    const-string v1, "extras"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 66
    move-result-object v7

    .line 67
    move-object v1, v0

    .line 68
    .line 69
    .line 70
    invoke-direct/range {v1 .. v8}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    .line 71
    return-object v0
.end method

.method private static b([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;
    .locals 3

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    .line 7
    new-array v0, v0, [Landroidx/core/app/RemoteInput;

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    aget-object v2, p0, v1

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Landroidx/core/app/NotificationCompatJellybean;->a(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return-object v0
.end method

.method static c(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;
    .locals 15

    .line 1
    .line 2
    const-string v0, "extras"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v3, "android.support.allowGeneratedReplies"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    move-result v2

    .line 16
    :cond_0
    move v10, v2

    .line 17
    .line 18
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    .line 19
    .line 20
    const-string v2, "icon"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 24
    move-result v4

    .line 25
    .line 26
    const-string v2, "title"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 30
    move-result-object v5

    .line 31
    .line 32
    const-string v2, "actionIntent"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 36
    move-result-object v2

    .line 37
    move-object v6, v2

    .line 38
    .line 39
    check-cast v6, Landroid/app/PendingIntent;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 43
    move-result-object v7

    .line 44
    .line 45
    const-string v0, "remoteInputs"

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0}, Landroidx/core/app/NotificationCompatJellybean;->d(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Landroidx/core/app/NotificationCompatJellybean;->b([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    .line 53
    move-result-object v8

    .line 54
    .line 55
    const-string v0, "dataOnlyRemoteInputs"

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0}, Landroidx/core/app/NotificationCompatJellybean;->d(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Landroidx/core/app/NotificationCompatJellybean;->b([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    .line 63
    move-result-object v9

    .line 64
    .line 65
    const-string v0, "semanticAction"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 69
    move-result v11

    .line 70
    .line 71
    const-string v0, "showsUserInterface"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 75
    move-result v12

    .line 76
    const/4 v13, 0x0

    .line 77
    const/4 v14, 0x0

    .line 78
    move-object v3, v1

    .line 79
    .line 80
    .line 81
    invoke-direct/range {v3 .. v14}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    .line 82
    return-object v1
.end method

.method private static d(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, [Landroid/os/Bundle;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    array-length v1, v0

    .line 13
    .line 14
    const-class v2, [Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, [Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 24
    return-object v0

    .line 25
    .line 26
    :cond_1
    :goto_0
    check-cast v0, [Landroid/os/Bundle;

    .line 27
    return-object v0
.end method

.method static e(Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->e()Landroidx/core/graphics/drawable/IconCompat;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->r()I

    .line 15
    move-result v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    .line 19
    :goto_0
    const-string v2, "icon"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    const-string v1, "title"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->i()Ljava/lang/CharSequence;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    const-string v1, "actionIntent"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->a()Landroid/app/PendingIntent;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->c()Landroid/os/Bundle;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    new-instance v1, Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->c()Landroid/os/Bundle;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    .line 63
    :goto_1
    const-string v2, "android.support.allowGeneratedReplies"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->b()Z

    .line 67
    move-result v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    .line 72
    const-string v2, "extras"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->f()[Landroidx/core/app/RemoteInput;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Landroidx/core/app/NotificationCompatJellybean;->g([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    const-string v2, "remoteInputs"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 89
    .line 90
    const-string v1, "showsUserInterface"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->h()Z

    .line 94
    move-result v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    .line 99
    const-string v1, "semanticAction"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Action;->g()I

    .line 103
    move-result p0

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 107
    return-object v0
.end method

.method private static f(Landroidx/core/app/RemoteInput;)Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->j()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-string v2, "resultKey"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    const-string v1, "label"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->i()Ljava/lang/CharSequence;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    const-string v1, "choices"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->f()[Ljava/lang/CharSequence;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    const-string v1, "allowFreeFormInput"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->d()Z

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    .line 43
    const-string v1, "extras"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->h()Landroid/os/Bundle;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->e()Ljava/util/Set;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 68
    move-result v2

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v2

    .line 80
    .line 81
    if-eqz v2, :cond_0

    .line 82
    .line 83
    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    check-cast v2, Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_0
    const-string p0, "allowedDataTypes"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 97
    :cond_1
    return-object v0
.end method

.method private static g([Landroidx/core/app/RemoteInput;)[Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    .line 7
    new-array v0, v0, [Landroid/os/Bundle;

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    aget-object v2, p0, v1

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Landroidx/core/app/NotificationCompatJellybean;->f(Landroidx/core/app/RemoteInput;)Landroid/os/Bundle;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return-object v0
.end method
