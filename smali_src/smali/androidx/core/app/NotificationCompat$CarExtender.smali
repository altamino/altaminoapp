.class public final Landroidx/core/app/NotificationCompat$CarExtender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    }
.end annotation


# static fields
.field static final EXTRA_CAR_EXTENDER:Ljava/lang/String; = "android.car.EXTENSIONS"
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field

.field private static final EXTRA_COLOR:Ljava/lang/String; = "app_color"

.field private static final EXTRA_CONVERSATION:Ljava/lang/String; = "car_conversation"

.field static final EXTRA_INVISIBLE_ACTIONS:Ljava/lang/String; = "invisible_actions"
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field

.field private static final EXTRA_LARGE_ICON:Ljava/lang/String; = "large_icon"

.field private static final KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_ON_READ:Ljava/lang/String; = "on_read"

.field private static final KEY_ON_REPLY:Ljava/lang/String; = "on_reply"

.field private static final KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field private static final KEY_REMOTE_INPUT:Ljava/lang/String; = "remote_input"

.field private static final KEY_TEXT:Ljava/lang/String; = "text"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private mColor:I

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 2
    .param p1    # Landroid/app/Notification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    .line 3
    invoke-static {p1}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.car.EXTENSIONS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "large_icon"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    const-string v1, "app_color"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mColor:I

    const-string v0, "car_conversation"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$CarExtender;->a(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    :cond_1
    return-void
.end method

.method private static a(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 21
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    const-string v2, "messages"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eqz v2, :cond_4

    .line 16
    array-length v4, v2

    .line 17
    .line 18
    new-array v5, v4, [Ljava/lang/String;

    .line 19
    move v6, v3

    .line 20
    .line 21
    :goto_0
    if-ge v6, v4, :cond_3

    .line 22
    .line 23
    aget-object v7, v2, v6

    .line 24
    .line 25
    instance-of v8, v7, Landroid/os/Bundle;

    .line 26
    .line 27
    if-nez v8, :cond_1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_1
    check-cast v7, Landroid/os/Bundle;

    .line 31
    .line 32
    const-string/jumbo v8, "text"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v7

    .line 37
    .line 38
    aput-object v7, v5, v6

    .line 39
    .line 40
    if-nez v7, :cond_2

    .line 41
    :goto_1
    return-object v1

    .line 42
    .line 43
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    move-object v8, v5

    .line 46
    goto :goto_2

    .line 47
    :cond_4
    move-object v8, v1

    .line 48
    .line 49
    :goto_2
    const-string v2, "on_read"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 53
    move-result-object v2

    .line 54
    move-object v11, v2

    .line 55
    .line 56
    check-cast v11, Landroid/app/PendingIntent;

    .line 57
    .line 58
    const-string v2, "on_reply"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 62
    move-result-object v2

    .line 63
    move-object v10, v2

    .line 64
    .line 65
    check-cast v10, Landroid/app/PendingIntent;

    .line 66
    .line 67
    const-string v2, "remote_input"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    check-cast v2, Landroid/app/RemoteInput;

    .line 74
    .line 75
    const-string v4, "participants"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 79
    move-result-object v12

    .line 80
    .line 81
    if-eqz v12, :cond_8

    .line 82
    array-length v4, v12

    .line 83
    const/4 v5, 0x1

    .line 84
    .line 85
    if-eq v4, v5, :cond_5

    .line 86
    goto :goto_3

    .line 87
    .line 88
    :cond_5
    if-eqz v2, :cond_7

    .line 89
    .line 90
    new-instance v1, Landroidx/core/app/RemoteInput;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    .line 94
    move-result-object v14

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    .line 98
    move-result-object v15

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    .line 102
    move-result-object v16

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    .line 106
    move-result v17

    .line 107
    .line 108
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 109
    .line 110
    const/16 v5, 0x1d

    .line 111
    .line 112
    if-lt v4, v5, :cond_6

    .line 113
    .line 114
    .line 115
    invoke-static {v2}, Landroidx/core/app/s;->a(Landroid/app/RemoteInput;)I

    .line 116
    move-result v3

    .line 117
    .line 118
    :cond_6
    move/from16 v18, v3

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    .line 122
    move-result-object v19

    .line 123
    .line 124
    const/16 v20, 0x0

    .line 125
    move-object v13, v1

    .line 126
    .line 127
    .line 128
    invoke-direct/range {v13 .. v20}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    .line 129
    :cond_7
    move-object v9, v1

    .line 130
    .line 131
    new-instance v1, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;

    .line 132
    .line 133
    const-string/jumbo v2, "timestamp"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 137
    move-result-wide v13

    .line 138
    move-object v7, v1

    .line 139
    .line 140
    .line 141
    invoke-direct/range {v7 .. v14}, Landroidx/core/app/NotificationCompat$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroidx/core/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    .line 142
    :cond_8
    :goto_3
    return-object v1
.end method
