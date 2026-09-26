.class public abstract Lcom/narvii/chat/ChatTipBroadcastHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTO_HIDE_DURATION:I = 0xbb8

.field public static final AUTO_HIDE_DURATION_WHEN_HAS_NEXT:I = 0x3e8


# instance fields
.field animInRunnable:Ljava/lang/Runnable;

.field context:Landroid/content/Context;

.field hideRunnable:Ljava/lang/Runnable;

.field isActive:Z

.field private final nvContext:Lcom/narvii/app/NVContext;

.field pendingAnimIn:Z

.field preloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

.field showingTip:Z

.field startHideRunnableTime:J

.field private tipLog:Lcom/narvii/tipping/model/TipLog;

.field tipLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/tipping/model/TipLog;",
            ">;"
        }
    .end annotation
.end field

.field private tipView:Landroid/view/View;

.field tipViewParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
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
    iput-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/chat/ChatTipBroadcastHelper$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatTipBroadcastHelper$1;-><init>(Lcom/narvii/chat/ChatTipBroadcastHelper;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->hideRunnable:Ljava/lang/Runnable;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatTipBroadcastHelper$2;-><init>(Lcom/narvii/chat/ChatTipBroadcastHelper;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->animInRunnable:Ljava/lang/Runnable;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipViewParent:Landroid/view/ViewGroup;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p1}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->preloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    .line 46
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/ChatTipBroadcastHelper;)Lcom/narvii/tipping/model/TipLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLog:Lcom/narvii/tipping/model/TipLog;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/ChatTipBroadcastHelper;Lcom/narvii/tipping/model/TipLog;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->getCoinsToAdd(Lcom/narvii/tipping/model/TipLog;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/chat/ChatTipBroadcastHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->removeCurrentTip()V

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/chat/ChatTipBroadcastHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->tryShowNext()V

    return-void
.end method

.method private getCoinsToAdd(Lcom/narvii/tipping/model/TipLog;)I
    .locals 0

    .line 1
    .line 2
    iget p1, p1, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    .line 3
    return p1
.end method

.method private removeCurrentTip()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->showingTip:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->pendingAnimIn:Z

    .line 25
    .line 26
    iput-object v1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLog:Lcom/narvii/tipping/model/TipLog;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipViewParent:Landroid/view/ViewGroup;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 34
    .line 35
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->hideRunnable:Ljava/lang/Runnable;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->animInRunnable:Ljava/lang/Runnable;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method private showTip(Lcom/narvii/tipping/model/TipLog;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipViewParent:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->showingTip:Z

    .line 15
    .line 16
    iget-object v1, p1, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    iget-object v3, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipViewParent:Landroid/view/ViewGroup;

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    .line 28
    const v5, 0x7f0d0748

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v5, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    iput-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    .line 35
    .line 36
    new-instance v3, Lcom/narvii/chat/ChatTipBroadcastHelper$3;

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, p0, v1}, Lcom/narvii/chat/ChatTipBroadcastHelper$3;-><init>(Lcom/narvii/chat/ChatTipBroadcastHelper;Lcom/narvii/model/User;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    .line 45
    .line 46
    .line 47
    const v3, 0x7f0a033b

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    check-cast v2, Landroid/widget/TextView;

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    const-string/jumbo v4, "x"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    iget v4, p1, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    .line 78
    .line 79
    .line 80
    const v3, 0x7f0a0f36

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 90
    .line 91
    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    .line 92
    .line 93
    .line 94
    const v3, 0x7f0a09f9

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    check-cast v2, Landroid/widget/TextView;

    .line 101
    .line 102
    if-eqz v1, :cond_1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 106
    move-result-object v3

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_1
    const-string v3, ""

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    .line 115
    .line 116
    .line 117
    const v3, 0x7f0a061b

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object v2

    .line 122
    .line 123
    check-cast v2, Landroid/widget/TextView;

    .line 124
    .line 125
    iget-object v3, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    .line 126
    .line 127
    iget p1, p1, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    .line 128
    .line 129
    .line 130
    const v4, 0x7f1207d7

    .line 131
    .line 132
    .line 133
    const v5, 0x7f1207d8

    .line 134
    .line 135
    .line 136
    invoke-static {v3, p1, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    .line 143
    .line 144
    new-instance v2, Lcom/narvii/chat/video/ChatTipBroadcastBackground;

    .line 145
    .line 146
    .line 147
    const v3, -0x81e401

    .line 148
    .line 149
    .line 150
    invoke-direct {v2, v3}, Lcom/narvii/chat/video/ChatTipBroadcastBackground;-><init>(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 154
    .line 155
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipViewParent:Landroid/view/ViewGroup;

    .line 156
    .line 157
    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 161
    .line 162
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    .line 163
    .line 164
    const/16 v2, 0x8

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    if-eqz v1, :cond_2

    .line 170
    .line 171
    iget-object p1, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 172
    .line 173
    if-eqz p1, :cond_2

    .line 174
    .line 175
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    move-result-object p1

    .line 180
    .line 181
    .line 182
    const v2, 0x7f07051a

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 186
    move-result p1

    .line 187
    .line 188
    iget-object v1, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 189
    const/4 v2, 0x0

    .line 190
    .line 191
    .line 192
    invoke-static {v1, v2, p1, p1}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    iget-object v3, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->preloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v1, p1, v2}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->preloadIcon(Ljava/lang/String;ILcom/narvii/util/Callback;)V

    .line 199
    .line 200
    :cond_2
    iput-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->pendingAnimIn:Z

    .line 201
    .line 202
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->animInRunnable:Ljava/lang/Runnable;

    .line 203
    .line 204
    const-wide/16 v0, 0x3e8

    .line 205
    .line 206
    .line 207
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 208
    :cond_3
    :goto_1
    return-void
.end method

.method private tryShowNext()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->showingTip:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->isActive:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    return-void

    .line 20
    .line 21
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/tipping/model/TipLog;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLog:Lcom/narvii/tipping/model/TipLog;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLog:Lcom/narvii/tipping/model/TipLog;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->showTip(Lcom/narvii/tipping/model/TipLog;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected abstract applyTipCoins(I)V
.end method

.method public clearPendingTipLog()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLog:Lcom/narvii/tipping/model/TipLog;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    iput v1, v0, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->pendingAnimIn:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->removeCurrentTip()V

    .line 20
    :cond_0
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->isActive:Z

    .line 3
    .line 4
    if-nez p1, :cond_2

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLog:Lcom/narvii/tipping/model/TipLog;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->getCoinsToAdd(Lcom/narvii/tipping/model/TipLog;)I

    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Lcom/narvii/tipping/model/TipLog;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->getCoinsToAdd(Lcom/narvii/tipping/model/TipLog;)I

    .line 36
    move-result v1

    .line 37
    add-int/2addr p1, v1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->applyTipCoins(I)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->removeCurrentTip()V

    .line 50
    :cond_2
    return-void
.end method

.method protected abstract onClickTipBroadcast(Lcom/narvii/model/User;)V
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->removeCurrentTip()V

    .line 4
    return-void
.end method

.method public onNewTipLog(Lcom/narvii/tipping/model/TipLog;)V
    .locals 8

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->isActive:Z

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    const-string v1, "account"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 18
    .line 19
    iget-object v1, p1, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v1, p1, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    :goto_0
    iget-wide v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->startHideRunnableTime:J

    .line 52
    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    cmp-long p1, v0, v2

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->hideRunnable:Ljava/lang/Runnable;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->hideRunnable:Ljava/lang/Runnable;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 70
    move-result-wide v4

    .line 71
    .line 72
    iget-wide v6, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->startHideRunnableTime:J

    .line 73
    sub-long/2addr v4, v6

    .line 74
    .line 75
    const-wide/16 v6, 0x3e8

    .line 76
    sub-long/2addr v6, v4

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 80
    move-result-wide v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    .line 85
    .line 86
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->tryShowNext()V

    .line 87
    goto :goto_1

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->getCoinsToAdd(Lcom/narvii/tipping/model/TipLog;)I

    .line 91
    move-result p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->applyTipCoins(I)V

    .line 95
    :goto_1
    return-void
.end method
