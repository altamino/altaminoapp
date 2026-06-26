.class public abstract Lcom/narvii/chat/ChatTipBroadcastHelper;
.super Ljava/lang/Object;
.source "ChatTipBroadcastHelper.java"


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

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/narvii/chat/ChatTipBroadcastHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatTipBroadcastHelper$1;-><init>(Lcom/narvii/chat/ChatTipBroadcastHelper;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->hideRunnable:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatTipBroadcastHelper$2;-><init>(Lcom/narvii/chat/ChatTipBroadcastHelper;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->animInRunnable:Ljava/lang/Runnable;

    .line 120
    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipViewParent:Landroid/view/ViewGroup;

    .line 121
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    .line 122
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 123
    new-instance p1, Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v0}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->preloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/ChatTipBroadcastHelper;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->removeCurrentTip()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/ChatTipBroadcastHelper;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->tryShowNext()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/chat/ChatTipBroadcastHelper;)Lcom/narvii/tipping/model/TipLog;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLog:Lcom/narvii/tipping/model/TipLog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/ChatTipBroadcastHelper;Lcom/narvii/tipping/model/TipLog;)I
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->getCoinsToAdd(Lcom/narvii/tipping/model/TipLog;)I

    move-result p0

    return p0
.end method

.method private getCoinsToAdd(Lcom/narvii/tipping/model/TipLog;)I
    .locals 0

    .line 251
    iget p1, p1, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    return p1
.end method

.method private removeCurrentTip()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_1
    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->showingTip:Z

    .line 188
    iput-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->pendingAnimIn:Z

    .line 189
    iput-object v1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    .line 190
    iput-object v1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLog:Lcom/narvii/tipping/model/TipLog;

    .line 191
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 192
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->animInRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showTip(Lcom/narvii/tipping/model/TipLog;)V
    .locals 6

    .line 207
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipViewParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->showingTip:Z

    .line 213
    iget-object v1, p1, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    .line 214
    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0691

    .line 215
    iget-object v4, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipViewParent:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    .line 216
    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    new-instance v3, Lcom/narvii/chat/ChatTipBroadcastHelper$3;

    invoke-direct {v3, p0, v1}, Lcom/narvii/chat/ChatTipBroadcastHelper$3;-><init>(Lcom/narvii/chat/ChatTipBroadcastHelper;Lcom/narvii/model/User;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    const v3, 0x7f090272

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    const v3, 0x7f090c10

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 227
    invoke-virtual {v2, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 228
    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    const v3, 0x7f090764

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    const v3, 0x7f0904cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 231
    iget-object v3, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    iget p1, p1, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    const v4, 0x7f0f072f

    const v5, 0x7f0f0730

    invoke-static {v3, p1, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    new-instance v2, Lcom/narvii/chat/video/ChatTipBroadcastBackground;

    const v3, -0x81e401

    invoke-direct {v2, v3}, Lcom/narvii/chat/video/ChatTipBroadcastBackground;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipViewParent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 235
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_2

    .line 236
    iget-object p1, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 237
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0702d7

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 238
    iget-object v1, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p1}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 239
    iget-object v3, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->preloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    invoke-virtual {v3, v1, p1, v2}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->preloadIcon(Ljava/lang/String;ILcom/narvii/util/Callback;)V

    .line 241
    :cond_2
    iput-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->pendingAnimIn:Z

    .line 242
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->animInRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method private tryShowNext()V
    .locals 2

    .line 149
    iget-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->showingTip:Z

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->isActive:Z

    if-nez v0, :cond_1

    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/tipping/model/TipLog;

    iput-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLog:Lcom/narvii/tipping/model/TipLog;

    .line 159
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLog:Lcom/narvii/tipping/model/TipLog;

    invoke-direct {p0, v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->showTip(Lcom/narvii/tipping/model/TipLog;)V

    return-void
.end method


# virtual methods
.method protected abstract applyTipCoins(I)V
.end method

.method public clearPendingTipLog()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLog:Lcom/narvii/tipping/model/TipLog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 199
    iput v1, v0, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    .line 200
    iget-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->pendingAnimIn:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->removeCurrentTip()V

    :cond_0
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 164
    iput-boolean p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->isActive:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 167
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLog:Lcom/narvii/tipping/model/TipLog;

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0, v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->getCoinsToAdd(Lcom/narvii/tipping/model/TipLog;)I

    move-result v0

    add-int/2addr p1, v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/tipping/model/TipLog;

    .line 171
    invoke-direct {p0, v1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->getCoinsToAdd(Lcom/narvii/tipping/model/TipLog;)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->applyTipCoins(I)V

    .line 174
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 175
    invoke-direct {p0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->removeCurrentTip()V

    :cond_2
    return-void
.end method

.method protected abstract onClickTipBroadcast(Lcom/narvii/model/User;)V
.end method

.method public onDestroy()V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->removeCurrentTip()V

    return-void
.end method

.method public onNewTipLog(Lcom/narvii/tipping/model/TipLog;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->isActive:Z

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 132
    iget-object v1, p1, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_1
    iget-wide v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->startHideRunnableTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    .line 139
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/narvii/chat/ChatTipBroadcastHelper;->startHideRunnableTime:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->tryShowNext()V

    goto :goto_2

    .line 144
    :cond_4
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->getCoinsToAdd(Lcom/narvii/tipping/model/TipLog;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->applyTipCoins(I)V

    :goto_2
    return-void
.end method
