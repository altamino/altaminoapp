.class public Lcom/narvii/feed/vote/VoteAnimationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static count:I

.field private static sessionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
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

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getSessionId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/feed/vote/VoteAnimationHelper;->sessionId:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getSessionId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    sput v0, Lcom/narvii/feed/vote/VoteAnimationHelper;->sessionId:I

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    sput v0, Lcom/narvii/feed/vote/VoteAnimationHelper;->count:I

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lcom/narvii/util/particles/ParticlesHelper;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lcom/narvii/util/particles/ParticlesHelper;-><init>()V

    .line 23
    const/4 v1, 0x4

    .line 24
    .line 25
    if-ne p2, v1, :cond_6

    .line 26
    .line 27
    sget v2, Lcom/narvii/feed/vote/VoteAnimationHelper;->count:I

    .line 28
    .line 29
    add-int/lit8 v3, v2, 0x1

    .line 30
    .line 31
    sput v3, Lcom/narvii/feed/vote/VoteAnimationHelper;->count:I

    .line 32
    const/4 v4, 0x3

    .line 33
    rem-int/2addr v3, v4

    .line 34
    .line 35
    if-nez v3, :cond_5

    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x6

    .line 38
    .line 39
    div-int/lit8 v2, v2, 0x6

    .line 40
    const/4 p2, 0x1

    .line 41
    .line 42
    if-eq v2, p2, :cond_4

    .line 43
    const/4 p2, 0x2

    .line 44
    .line 45
    if-eq v2, p2, :cond_3

    .line 46
    .line 47
    if-eq v2, v4, :cond_2

    .line 48
    .line 49
    if-eq v2, v1, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->l5()Lcom/narvii/util/particles/ParticlesHelper;

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->l4()Lcom/narvii/util/particles/ParticlesHelper;

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->l3()Lcom/narvii/util/particles/ParticlesHelper;

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->l2()Lcom/narvii/util/particles/ParticlesHelper;

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->l1()Lcom/narvii/util/particles/ParticlesHelper;

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_5
    invoke-static {p2}, Lcom/narvii/widget/VoteIcon;->voteIconRes(I)I

    .line 73
    move-result p2

    .line 74
    .line 75
    iput p2, v0, Lcom/narvii/util/particles/ParticlesHelper;->resId:I

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->l0()Lcom/narvii/util/particles/ParticlesHelper;

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_6
    invoke-static {p2}, Lcom/narvii/widget/VoteIcon;->voteIconRes(I)I

    .line 83
    move-result p2

    .line 84
    .line 85
    iput p2, v0, Lcom/narvii/util/particles/ParticlesHelper;->resId:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->l0()Lcom/narvii/util/particles/ParticlesHelper;

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/util/particles/ParticlesHelper;->emit(Landroid/view/View;)V

    .line 92
    .line 93
    if-eqz p3, :cond_7

    .line 94
    .line 95
    new-instance p2, Lcom/narvii/feed/vote/VoteAnimationHelper$1;

    .line 96
    .line 97
    .line 98
    invoke-direct {p2, p0, p1, p3}, Lcom/narvii/feed/vote/VoteAnimationHelper$1;-><init>(Lcom/narvii/feed/vote/VoteAnimationHelper;Landroid/view/View;Lcom/narvii/util/Callback;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/narvii/util/particles/ParticlesHelper;->duration()J

    .line 102
    move-result-wide v0

    .line 103
    .line 104
    .line 105
    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 106
    :cond_7
    return-void
.end method
