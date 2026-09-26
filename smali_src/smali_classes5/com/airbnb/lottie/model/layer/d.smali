.class public Lcom/airbnb/lottie/model/layer/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/layer/d$b;,
        Lcom/airbnb/lottie/model/layer/d$d;,
        Lcom/airbnb/lottie/model/layer/d$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "d"


# instance fields
.field private final composition:Lcom/airbnb/lottie/e;

.field private final inOutKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh0/a<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final layerId:J

.field private final layerName:Ljava/lang/String;

.field private final layerType:Lcom/airbnb/lottie/model/layer/d$c;

.field private final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/g;",
            ">;"
        }
    .end annotation
.end field

.field private final matteType:Lcom/airbnb/lottie/model/layer/d$d;

.field private final parentId:J

.field private final preCompHeight:I

.field private final preCompWidth:I

.field private final refId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/b;",
            ">;"
        }
    .end annotation
.end field

.field private final solidColor:I

.field private final solidHeight:I

.field private final solidWidth:I

.field private final startProgress:F

.field private final text:Lcom/airbnb/lottie/model/animatable/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final textProperties:Lcom/airbnb/lottie/model/animatable/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeRemapping:Lcom/airbnb/lottie/model/animatable/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeStretch:F

.field private final transform:Lcom/airbnb/lottie/model/animatable/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/e;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/d$c;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/l;IIIFFIILcom/airbnb/lottie/model/animatable/j;Lcom/airbnb/lottie/model/animatable/k;Ljava/util/List;Lcom/airbnb/lottie/model/layer/d$d;Lcom/airbnb/lottie/model/animatable/b;)V
    .locals 3
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Lcom/airbnb/lottie/model/animatable/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Lcom/airbnb/lottie/model/animatable/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p23    # Lcom/airbnb/lottie/model/animatable/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/b;",
            ">;",
            "Lcom/airbnb/lottie/e;",
            "Ljava/lang/String;",
            "J",
            "Lcom/airbnb/lottie/model/layer/d$c;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/g;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/l;",
            "IIIFFII",
            "Lcom/airbnb/lottie/model/animatable/j;",
            "Lcom/airbnb/lottie/model/animatable/k;",
            "Ljava/util/List<",
            "Lh0/a<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/airbnb/lottie/model/layer/d$d;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/d;->shapes:Ljava/util/List;

    move-object v1, p2

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/d;->composition:Lcom/airbnb/lottie/e;

    move-object v1, p3

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/d;->layerName:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/airbnb/lottie/model/layer/d;->layerId:J

    move-object v1, p6

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/d;->layerType:Lcom/airbnb/lottie/model/layer/d$c;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/airbnb/lottie/model/layer/d;->parentId:J

    move-object v1, p9

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/d;->refId:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/d;->masks:Ljava/util/List;

    move-object v1, p11

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/d;->transform:Lcom/airbnb/lottie/model/animatable/l;

    move v1, p12

    iput v1, v0, Lcom/airbnb/lottie/model/layer/d;->solidWidth:I

    move/from16 v1, p13

    iput v1, v0, Lcom/airbnb/lottie/model/layer/d;->solidHeight:I

    move/from16 v1, p14

    iput v1, v0, Lcom/airbnb/lottie/model/layer/d;->solidColor:I

    move/from16 v1, p15

    iput v1, v0, Lcom/airbnb/lottie/model/layer/d;->timeStretch:F

    move/from16 v1, p16

    iput v1, v0, Lcom/airbnb/lottie/model/layer/d;->startProgress:F

    move/from16 v1, p17

    iput v1, v0, Lcom/airbnb/lottie/model/layer/d;->preCompWidth:I

    move/from16 v1, p18

    iput v1, v0, Lcom/airbnb/lottie/model/layer/d;->preCompHeight:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/d;->text:Lcom/airbnb/lottie/model/animatable/j;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/d;->textProperties:Lcom/airbnb/lottie/model/animatable/k;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/d;->inOutKeyframes:Ljava/util/List;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/d;->matteType:Lcom/airbnb/lottie/model/layer/d$d;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/d;->timeRemapping:Lcom/airbnb/lottie/model/animatable/b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/e;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/d$c;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/l;IIIFFIILcom/airbnb/lottie/model/animatable/j;Lcom/airbnb/lottie/model/animatable/k;Ljava/util/List;Lcom/airbnb/lottie/model/layer/d$d;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/layer/d$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p23}, Lcom/airbnb/lottie/model/layer/d;-><init>(Ljava/util/List;Lcom/airbnb/lottie/e;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/d$c;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/l;IIIFFIILcom/airbnb/lottie/model/animatable/j;Lcom/airbnb/lottie/model/animatable/k;Ljava/util/List;Lcom/airbnb/lottie/model/layer/d$d;Lcom/airbnb/lottie/model/animatable/b;)V

    return-void
.end method


# virtual methods
.method a()Lcom/airbnb/lottie/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/d;->composition:Lcom/airbnb/lottie/e;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/airbnb/lottie/model/layer/d;->layerId:J

    return-wide v0
.end method

.method c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh0/a<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/d;->inOutKeyframes:Ljava/util/List;

    return-object v0
.end method

.method public d()Lcom/airbnb/lottie/model/layer/d$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/d;->layerType:Lcom/airbnb/lottie/model/layer/d$c;

    return-object v0
.end method

.method e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/d;->masks:Ljava/util/List;

    return-object v0
.end method

.method f()Lcom/airbnb/lottie/model/layer/d$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/d;->matteType:Lcom/airbnb/lottie/model/layer/d$d;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/d;->layerName:Ljava/lang/String;

    return-object v0
.end method

.method h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/airbnb/lottie/model/layer/d;->parentId:J

    return-wide v0
.end method

.method i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/model/layer/d;->preCompHeight:I

    return v0
.end method

.method j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/model/layer/d;->preCompWidth:I

    return v0
.end method

.method k()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/d;->refId:Ljava/lang/String;

    return-object v0
.end method

.method l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/d;->shapes:Ljava/util/List;

    return-object v0
.end method

.method m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/model/layer/d;->solidColor:I

    return v0
.end method

.method n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/model/layer/d;->solidHeight:I

    return v0
.end method

.method o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/model/layer/d;->solidWidth:I

    return v0
.end method

.method p()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/model/layer/d;->startProgress:F

    return v0
.end method

.method q()Lcom/airbnb/lottie/model/animatable/j;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/d;->text:Lcom/airbnb/lottie/model/animatable/j;

    return-object v0
.end method

.method r()Lcom/airbnb/lottie/model/animatable/k;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/d;->textProperties:Lcom/airbnb/lottie/model/animatable/k;

    return-object v0
.end method

.method s()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/d;->timeRemapping:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method t()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/model/layer/d;->timeStretch:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/d;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method u()Lcom/airbnb/lottie/model/animatable/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/d;->transform:Lcom/airbnb/lottie/model/animatable/l;

    return-object v0
.end method

.method public v(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/d;->g()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "\n"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/d;->composition:Lcom/airbnb/lottie/e;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/d;->h()J

    .line 26
    move-result-wide v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3, v4}, Lcom/airbnb/lottie/e;->w(J)Lcom/airbnb/lottie/model/layer/d;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const-string v3, "\t\tParents: "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/d;->g()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/d;->composition:Lcom/airbnb/lottie/e;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/d;->h()J

    .line 50
    move-result-wide v4

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/e;->w(J)Lcom/airbnb/lottie/model/layer/d;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    :goto_0
    if-eqz v2, :cond_0

    .line 57
    .line 58
    const-string v3, "->"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/d;->g()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/d;->composition:Lcom/airbnb/lottie/e;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/d;->h()J

    .line 74
    move-result-wide v4

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/e;->w(J)Lcom/airbnb/lottie/model/layer/d;

    .line 78
    move-result-object v2

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/d;->e()Ljava/util/List;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 93
    move-result v2

    .line 94
    .line 95
    if-nez v2, :cond_2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v2, "\tMasks: "

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/d;->e()Ljava/util/List;

    .line 107
    move-result-object v2

    .line 108
    .line 109
    .line 110
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 111
    move-result v2

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/d;->o()I

    .line 121
    move-result v2

    .line 122
    .line 123
    if-eqz v2, :cond_3

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/d;->n()I

    .line 127
    move-result v2

    .line 128
    .line 129
    if-eqz v2, :cond_3

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v2, "\tBackground: "

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 140
    const/4 v3, 0x3

    .line 141
    .line 142
    new-array v3, v3, [Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/d;->o()I

    .line 146
    move-result v4

    .line 147
    .line 148
    .line 149
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v4

    .line 151
    const/4 v5, 0x0

    .line 152
    .line 153
    aput-object v4, v3, v5

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/d;->n()I

    .line 157
    move-result v4

    .line 158
    .line 159
    .line 160
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    move-result-object v4

    .line 162
    const/4 v5, 0x1

    .line 163
    .line 164
    aput-object v4, v3, v5

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/d;->m()I

    .line 168
    move-result v4

    .line 169
    .line 170
    .line 171
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v4

    .line 173
    const/4 v5, 0x2

    .line 174
    .line 175
    aput-object v4, v3, v5

    .line 176
    .line 177
    const-string v4, "%dx%d %X\n"

    .line 178
    .line 179
    .line 180
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    move-result-object v2

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/d;->shapes:Ljava/util/List;

    .line 187
    .line 188
    .line 189
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 190
    move-result v2

    .line 191
    .line 192
    if-nez v2, :cond_4

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v2, "\tShapes:\n"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/d;->shapes:Ljava/util/List;

    .line 203
    .line 204
    .line 205
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 206
    move-result-object v2

    .line 207
    .line 208
    .line 209
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    move-result v3

    .line 211
    .line 212
    if-eqz v3, :cond_4

    .line 213
    .line 214
    .line 215
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    move-result-object v3

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v4, "\t\t"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    goto :goto_1

    .line 232
    .line 233
    .line 234
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object p1

    .line 236
    return-object p1
.end method
