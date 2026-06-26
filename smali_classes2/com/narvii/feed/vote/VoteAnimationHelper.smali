.class public Lcom/narvii/feed/vote/VoteAnimationHelper;
.super Ljava/lang/Object;
.source "VoteAnimationHelper.java"


# static fields
.field private static count:I

.field private static sessionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startAnimation(Landroid/view/View;ILcom/narvii/util/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getSessionId()I

    move-result v0

    sget v1, Lcom/narvii/feed/vote/VoteAnimationHelper;->sessionId:I

    if-eq v0, v1, :cond_0

    .line 27
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getSessionId()I

    move-result v0

    sput v0, Lcom/narvii/feed/vote/VoteAnimationHelper;->sessionId:I

    const/4 v0, 0x0

    .line 28
    sput v0, Lcom/narvii/feed/vote/VoteAnimationHelper;->count:I

    .line 31
    :cond_0
    new-instance v0, Lcom/narvii/util/particles/ParticlesHelper;

    invoke-direct {v0}, Lcom/narvii/util/particles/ParticlesHelper;-><init>()V

    const/4 v1, 0x4

    if-ne p2, v1, :cond_6

    .line 33
    sget v2, Lcom/narvii/feed/vote/VoteAnimationHelper;->count:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/narvii/feed/vote/VoteAnimationHelper;->count:I

    .line 34
    sget v2, Lcom/narvii/feed/vote/VoteAnimationHelper;->count:I

    rem-int/lit8 v4, v2, 0x3

    if-nez v4, :cond_5

    add-int/lit8 v2, v2, 0x5

    .line 35
    div-int/lit8 v2, v2, 0x6

    if-eq v2, v3, :cond_4

    const/4 p2, 0x2

    if-eq v2, p2, :cond_3

    const/4 p2, 0x3

    if-eq v2, p2, :cond_2

    if-eq v2, v1, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->l5()Lcom/narvii/util/particles/ParticlesHelper;

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->l4()Lcom/narvii/util/particles/ParticlesHelper;

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->l3()Lcom/narvii/util/particles/ParticlesHelper;

    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->l2()Lcom/narvii/util/particles/ParticlesHelper;

    goto :goto_0

    .line 37
    :cond_4
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->l1()Lcom/narvii/util/particles/ParticlesHelper;

    goto :goto_0

    .line 53
    :cond_5
    invoke-static {p2}, Lcom/narvii/widget/VoteIcon;->voteIconRes(I)I

    move-result p2

    iput p2, v0, Lcom/narvii/util/particles/ParticlesHelper;->resId:I

    .line 54
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->l0()Lcom/narvii/util/particles/ParticlesHelper;

    goto :goto_0

    .line 57
    :cond_6
    invoke-static {p2}, Lcom/narvii/widget/VoteIcon;->voteIconRes(I)I

    move-result p2

    iput p2, v0, Lcom/narvii/util/particles/ParticlesHelper;->resId:I

    .line 58
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->l0()Lcom/narvii/util/particles/ParticlesHelper;

    .line 61
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/util/particles/ParticlesHelper;->emit(Landroid/view/View;)V

    if-eqz p3, :cond_7

    .line 63
    new-instance p2, Lcom/narvii/feed/vote/VoteAnimationHelper$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/narvii/feed/vote/VoteAnimationHelper$1;-><init>(Lcom/narvii/feed/vote/VoteAnimationHelper;Landroid/view/View;Lcom/narvii/util/Callback;)V

    .line 71
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->duration()J

    move-result-wide v0

    .line 63
    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_7
    return-void
.end method
