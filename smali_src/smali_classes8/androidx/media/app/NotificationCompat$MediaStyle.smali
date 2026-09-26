.class public Landroidx/media/app/NotificationCompat$MediaStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# static fields
.field private static final MAX_MEDIA_BUTTONS:I = 0x5

.field private static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# instance fields
.field mActionsToShowInCompact:[I

.field mCancelButtonIntent:Landroid/app/PendingIntent;

.field mShowCancelButton:Z

.field mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    .line 3
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->w(Landroidx/core/app/NotificationCompat$Builder;)V

    return-void
.end method

.method private z(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->a()Landroid/app/PendingIntent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 14
    .line 15
    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    sget v3, Landroidx/media/R$layout;->notification_media_action:I

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    sget v2, Landroidx/media/R$id;->action0:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->d()I

    .line 30
    move-result v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->a()Landroid/app/PendingIntent;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->i()Ljava/lang/CharSequence;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2, p1}, Landroidx/media/app/NotificationCompat$Api15Impl;->a(Landroid/widget/RemoteViews;ILjava/lang/CharSequence;)V

    .line 50
    return-object v1
.end method


# virtual methods
.method A(I)I
    .locals 1

    .line 1
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    sget p1, Landroidx/media/R$layout;->notification_template_big_media_narrow:I

    goto :goto_0

    :cond_0
    sget p1, Landroidx/media/R$layout;->notification_template_big_media:I

    :goto_0
    return p1
.end method

.method B()I
    .locals 1

    .line 1
    sget v0, Landroidx/media/R$layout;->notification_template_media:I

    return v0
.end method

.method public b(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->a()Landroid/app/Notification$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/media/app/NotificationCompat$Api21Impl;->a()Landroid/app/Notification$MediaStyle;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroidx/media/app/NotificationCompat$Api21Impl;->b(Landroid/app/Notification$MediaStyle;[ILandroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/app/Notification$MediaStyle;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/media/app/NotificationCompat$Api21Impl;->d(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V

    .line 20
    return-void
.end method

.method public s(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public t(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method x()Landroid/widget/RemoteViews;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/media/app/NotificationCompat$MediaStyle;->A(I)I

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2, v1, v2}, Landroidx/core/app/NotificationCompat$Style;->c(ZIZ)Landroid/widget/RemoteViews;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    sget v3, Landroidx/media/R$id;->media_actions:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 28
    .line 29
    if-lez v0, :cond_0

    .line 30
    move v3, v2

    .line 31
    .line 32
    :goto_0
    if-ge v3, v0, :cond_0

    .line 33
    .line 34
    iget-object v4, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 35
    .line 36
    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    check-cast v4, Landroidx/core/app/NotificationCompat$Action;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v4}, Landroidx/media/app/NotificationCompat$MediaStyle;->z(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    sget v5, Landroidx/media/R$id;->media_actions:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    iget-boolean v0, p0, Landroidx/media/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    sget v0, Landroidx/media/R$id;->cancel_action:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 64
    .line 65
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 66
    .line 67
    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    sget v3, Landroidx/media/R$integer;->cancel_button_image_alpha:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 77
    move-result v2

    .line 78
    .line 79
    const-string v3, "setAlpha"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 83
    .line 84
    iget-object v2, p0, Landroidx/media/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_1
    sget v0, Landroidx/media/R$id;->cancel_action:I

    .line 91
    .line 92
    const/16 v2, 0x8

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 96
    :goto_1
    return-object v1
.end method

.method y()Landroid/widget/RemoteViews;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media/app/NotificationCompat$MediaStyle;->B()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0, v2}, Landroidx/core/app/NotificationCompat$Style;->c(ZIZ)Landroid/widget/RemoteViews;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 13
    .line 14
    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v3

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    move v4, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    array-length v4, v4

    .line 26
    const/4 v5, 0x3

    .line 27
    .line 28
    .line 29
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result v4

    .line 31
    .line 32
    :goto_0
    sget v5, Landroidx/media/R$id;->media_actions:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v5}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 36
    .line 37
    if-lez v4, :cond_2

    .line 38
    move v5, v1

    .line 39
    .line 40
    :goto_1
    if-ge v5, v4, :cond_2

    .line 41
    .line 42
    if-ge v5, v3, :cond_1

    .line 43
    .line 44
    iget-object v6, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 45
    .line 46
    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 47
    .line 48
    iget-object v7, p0, Landroidx/media/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    .line 49
    .line 50
    aget v7, v7, v5

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v6

    .line 55
    .line 56
    check-cast v6, Landroidx/core/app/NotificationCompat$Action;

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v6}, Landroidx/media/app/NotificationCompat$MediaStyle;->z(Landroidx/core/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    .line 60
    move-result-object v6

    .line 61
    .line 62
    sget v7, Landroidx/media/R$id;->media_actions:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 66
    .line 67
    add-int/lit8 v5, v5, 0x1

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 71
    const/4 v4, 0x2

    .line 72
    .line 73
    new-array v4, v4, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    aput-object v5, v4, v1

    .line 80
    sub-int/2addr v3, v2

    .line 81
    .line 82
    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    aput-object v1, v4, v2

    .line 87
    .line 88
    const-string v1, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    throw v0

    .line 97
    .line 98
    :cond_2
    iget-boolean v2, p0, Landroidx/media/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    .line 99
    .line 100
    const/16 v3, 0x8

    .line 101
    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    sget v2, Landroidx/media/R$id;->end_padder:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 108
    .line 109
    sget v2, Landroidx/media/R$id;->cancel_action:I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 113
    .line 114
    iget-object v1, p0, Landroidx/media/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 118
    .line 119
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 120
    .line 121
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    sget v3, Landroidx/media/R$integer;->cancel_button_image_alpha:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 131
    move-result v1

    .line 132
    .line 133
    const-string v3, "setAlpha"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 137
    goto :goto_2

    .line 138
    .line 139
    :cond_3
    sget v2, Landroidx/media/R$id;->end_padder:I

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 143
    .line 144
    sget v1, Landroidx/media/R$id;->cancel_action:I

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 148
    :goto_2
    return-object v0
.end method
