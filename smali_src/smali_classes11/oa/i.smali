.class public Loa/i;
.super Lx9/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loa/i$a;
    }
.end annotation


# instance fields
.field private ageLimit:I

.field private audioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Loa/a;",
            ">;"
        }
    .end annotation
.end field

.field private category:Ljava/lang/String;

.field private dashMpdUrl:Ljava/lang/String;

.field private description:Loa/e;

.field private dislikeCount:J

.field private duration:J

.field private hlsUrl:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private language:Ljava/util/Locale;

.field private licence:Ljava/lang/String;

.field private likeCount:J

.field private metaInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx9/n;",
            ">;"
        }
    .end annotation
.end field

.field private previewFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Loa/f;",
            ">;"
        }
    .end annotation
.end field

.field private privacy:Loa/h$a;

.field private relatedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx9/e;",
            ">;"
        }
    .end annotation
.end field

.field private shortFormContent:Z

.field private startPosition:J

.field private streamSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Loa/n;",
            ">;"
        }
    .end annotation
.end field

.field private streamType:Loa/o;

.field private subChannelAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation
.end field

.field private subChannelName:Ljava/lang/String;

.field private subChannelUrl:Ljava/lang/String;

.field private subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Loa/q;",
            ">;"
        }
    .end annotation
.end field

.field private supportInfo:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textualUploadDate:Ljava/lang/String;

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation
.end field

.field private uploadDate:Lorg/schabi/newpipe/extractor/localization/e;

.field private uploaderAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;

.field private uploaderSubscriberCount:J

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z

.field private videoOnlyStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Loa/s;",
            ">;"
        }
    .end annotation
.end field

.field private videoStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Loa/s;",
            ">;"
        }
    .end annotation
.end field

.field private viewCount:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Loa/o;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move-object v2, p5

    .line 4
    move-object v3, p2

    .line 5
    move-object v4, p3

    .line 6
    move-object v5, p6

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v5}, Lx9/d;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Loa/i;->thumbnails:Ljava/util/List;

    .line 16
    .line 17
    const-wide/16 p1, -0x1

    .line 18
    .line 19
    iput-wide p1, p0, Loa/i;->duration:J

    .line 20
    .line 21
    iput-wide p1, p0, Loa/i;->viewCount:J

    .line 22
    .line 23
    iput-wide p1, p0, Loa/i;->likeCount:J

    .line 24
    .line 25
    iput-wide p1, p0, Loa/i;->dislikeCount:J

    .line 26
    .line 27
    const-string p3, ""

    .line 28
    .line 29
    iput-object p3, p0, Loa/i;->uploaderName:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p3, p0, Loa/i;->uploaderUrl:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 35
    move-result-object p5

    .line 36
    .line 37
    iput-object p5, p0, Loa/i;->uploaderAvatars:Ljava/util/List;

    .line 38
    const/4 p5, 0x0

    .line 39
    .line 40
    iput-boolean p5, p0, Loa/i;->uploaderVerified:Z

    .line 41
    .line 42
    iput-wide p1, p0, Loa/i;->uploaderSubscriberCount:J

    .line 43
    .line 44
    iput-object p3, p0, Loa/i;->subChannelName:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p3, p0, Loa/i;->subChannelUrl:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iput-object p1, p0, Loa/i;->subChannelAvatars:Ljava/util/List;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    iput-object p1, p0, Loa/i;->videoStreams:Ljava/util/List;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    iput-object p1, p0, Loa/i;->audioStreams:Ljava/util/List;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    iput-object p1, p0, Loa/i;->videoOnlyStreams:Ljava/util/List;

    .line 71
    .line 72
    iput-object p3, p0, Loa/i;->dashMpdUrl:Ljava/lang/String;

    .line 73
    .line 74
    iput-object p3, p0, Loa/i;->hlsUrl:Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    iput-object p1, p0, Loa/i;->relatedItems:Ljava/util/List;

    .line 81
    .line 82
    const-wide/16 p1, 0x0

    .line 83
    .line 84
    iput-wide p1, p0, Loa/i;->startPosition:J

    .line 85
    .line 86
    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    iput-object p1, p0, Loa/i;->subtitles:Ljava/util/List;

    .line 91
    .line 92
    iput-object p3, p0, Loa/i;->host:Ljava/lang/String;

    .line 93
    .line 94
    iput-object p3, p0, Loa/i;->category:Ljava/lang/String;

    .line 95
    .line 96
    iput-object p3, p0, Loa/i;->licence:Ljava/lang/String;

    .line 97
    .line 98
    iput-object p3, p0, Loa/i;->supportInfo:Ljava/lang/String;

    .line 99
    const/4 p1, 0x0

    .line 100
    .line 101
    iput-object p1, p0, Loa/i;->language:Ljava/util/Locale;

    .line 102
    .line 103
    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    iput-object p1, p0, Loa/i;->tags:Ljava/util/List;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    iput-object p1, p0, Loa/i;->streamSegments:Ljava/util/List;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    iput-object p1, p0, Loa/i;->metaInfo:Ljava/util/List;

    .line 120
    .line 121
    iput-boolean p5, p0, Loa/i;->shortFormContent:Z

    .line 122
    .line 123
    .line 124
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    iput-object p1, p0, Loa/i;->previewFrames:Ljava/util/List;

    .line 128
    .line 129
    iput-object p4, p0, Loa/i;->streamType:Loa/o;

    .line 130
    .line 131
    iput p7, p0, Loa/i;->ageLimit:I

    .line 132
    return-void
.end method

.method private static c(Loa/h;)Loa/i;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->n()Ljava/lang/String;

    .line 4
    move-result-object v2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Loa/h;->H()Loa/o;

    .line 8
    move-result-object v4

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lx9/b;->g()Ljava/lang/String;

    .line 12
    move-result-object v5

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lx9/b;->i()Ljava/lang/String;

    .line 16
    move-result-object v6

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Loa/h;->p()I

    .line 20
    move-result v7

    .line 21
    .line 22
    sget-object v0, Loa/o;->NONE:Loa/o;

    .line 23
    .line 24
    if-eq v4, v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-static {v5}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    const/4 v0, -0x1

    .line 40
    .line 41
    if-eq v7, v0, :cond_0

    .line 42
    .line 43
    new-instance v8, Loa/i;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lx9/b;->l()I

    .line 47
    move-result v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lx9/b;->j()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    move-object v0, v8

    .line 53
    .line 54
    .line 55
    invoke-direct/range {v0 .. v7}, Loa/i;-><init>(ILjava/lang/String;Ljava/lang/String;Loa/o;Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    return-object v8

    .line 57
    .line 58
    :cond_0
    new-instance p0, Laa/d;

    .line 59
    .line 60
    const-string v0, "Some important stream information was not given."

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v0}, Laa/d;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0
.end method

.method private static d(Loa/i;Loa/h;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Loa/h;->P()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Loa/i;->K(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Loa/h;->A()J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Loa/i;->q(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 20
    goto :goto_1

    .line 21
    :catch_1
    move-exception v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Loa/h;->U()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Loa/i;->N(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 32
    goto :goto_2

    .line 33
    :catch_2
    move-exception v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Loa/h;->W()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Loa/i;->P(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 44
    goto :goto_3

    .line 45
    :catch_3
    move-exception v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Loa/h;->T()Ljava/util/List;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Loa/i;->M(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 56
    goto :goto_4

    .line 57
    :catch_4
    move-exception v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :goto_4
    :try_start_5
    invoke-virtual {p1}, Loa/h;->b0()Z

    .line 64
    move-result v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Loa/i;->Q(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 68
    goto :goto_5

    .line 69
    :catch_5
    move-exception v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_5
    :try_start_6
    invoke-virtual {p1}, Loa/h;->V()J

    .line 76
    move-result-wide v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0, v1}, Loa/i;->O(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 80
    goto :goto_6

    .line 81
    :catch_6
    move-exception v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :goto_6
    :try_start_7
    invoke-virtual {p1}, Loa/h;->J()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Loa/i;->E(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 92
    goto :goto_7

    .line 93
    :catch_7
    move-exception v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :goto_7
    :try_start_8
    invoke-virtual {p1}, Loa/h;->K()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Loa/i;->F(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 104
    goto :goto_8

    .line 105
    :catch_8
    move-exception v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_8
    :try_start_9
    invoke-virtual {p1}, Loa/h;->I()Ljava/util/List;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Loa/i;->D(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 116
    goto :goto_9

    .line 117
    :catch_9
    move-exception v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :goto_9
    :try_start_a
    invoke-virtual {p1}, Loa/h;->t()Loa/e;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Loa/i;->o(Loa/e;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 128
    goto :goto_a

    .line 129
    :catch_a
    move-exception v0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    :goto_a
    :try_start_b
    invoke-virtual {p1}, Loa/h;->Z()J

    .line 136
    move-result-wide v0

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0, v1}, Loa/i;->T(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 140
    goto :goto_b

    .line 141
    :catch_b
    move-exception v0

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :goto_b
    :try_start_c
    invoke-virtual {p1}, Loa/h;->O()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v0}, Loa/i;->J(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 152
    goto :goto_c

    .line 153
    :catch_c
    move-exception v0

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    :goto_c
    :try_start_d
    invoke-virtual {p1}, Loa/h;->S()Lorg/schabi/newpipe/extractor/localization/e;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v0}, Loa/i;->L(Lorg/schabi/newpipe/extractor/localization/e;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 164
    goto :goto_d

    .line 165
    :catch_d
    move-exception v0

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    :goto_d
    :try_start_e
    invoke-virtual {p1}, Loa/h;->Q()J

    .line 172
    move-result-wide v0

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0, v1}, Loa/i;->B(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 176
    goto :goto_e

    .line 177
    :catch_e
    move-exception v0

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 181
    .line 182
    .line 183
    :goto_e
    :try_start_f
    invoke-virtual {p1}, Loa/h;->C()J

    .line 184
    move-result-wide v0

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0, v1}, Loa/i;->v(J)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 188
    goto :goto_f

    .line 189
    :catch_f
    move-exception v0

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    :goto_f
    :try_start_10
    invoke-virtual {p1}, Loa/h;->u()J

    .line 196
    move-result-wide v0

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v0, v1}, Loa/i;->p(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 200
    goto :goto_10

    .line 201
    :catch_10
    move-exception v0

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 205
    .line 206
    .line 207
    :goto_10
    :try_start_11
    invoke-virtual {p1}, Loa/h;->L()Ljava/util/List;

    .line 208
    move-result-object v0

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v0}, Loa/i;->G(Ljava/util/List;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 212
    goto :goto_11

    .line 213
    :catch_11
    move-exception v0

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    :goto_11
    :try_start_12
    invoke-virtual {p1}, Loa/h;->y()Ljava/lang/String;

    .line 220
    move-result-object v0

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v0}, Loa/i;->s(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 224
    goto :goto_12

    .line 225
    :catch_12
    move-exception v0

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 229
    .line 230
    .line 231
    :goto_12
    :try_start_13
    invoke-virtual {p1}, Loa/h;->E()Loa/h$a;

    .line 232
    move-result-object v0

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v0}, Loa/i;->y(Loa/h$a;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    .line 236
    goto :goto_13

    .line 237
    :catch_13
    move-exception v0

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 241
    .line 242
    .line 243
    :goto_13
    :try_start_14
    invoke-virtual {p1}, Loa/h;->r()Ljava/lang/String;

    .line 244
    move-result-object v0

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, v0}, Loa/i;->m(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    .line 248
    goto :goto_14

    .line 249
    :catch_14
    move-exception v0

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 253
    .line 254
    .line 255
    :goto_14
    :try_start_15
    invoke-virtual {p1}, Loa/h;->B()Ljava/lang/String;

    .line 256
    move-result-object v0

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v0}, Loa/i;->u(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    .line 260
    goto :goto_15

    .line 261
    :catch_15
    move-exception v0

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 265
    .line 266
    .line 267
    :goto_15
    :try_start_16
    invoke-virtual {p1}, Loa/h;->z()Ljava/util/Locale;

    .line 268
    move-result-object v0

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v0}, Loa/i;->t(Ljava/util/Locale;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    .line 272
    goto :goto_16

    .line 273
    :catch_16
    move-exception v0

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 277
    .line 278
    .line 279
    :goto_16
    :try_start_17
    invoke-virtual {p1}, Loa/h;->N()Ljava/util/List;

    .line 280
    move-result-object v0

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, v0}, Loa/i;->I(Ljava/util/List;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    .line 284
    goto :goto_17

    .line 285
    :catch_17
    move-exception v0

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 289
    .line 290
    .line 291
    :goto_17
    :try_start_18
    invoke-virtual {p1}, Loa/h;->M()Ljava/lang/String;

    .line 292
    move-result-object v0

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, v0}, Loa/i;->H(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    .line 296
    goto :goto_18

    .line 297
    :catch_18
    move-exception v0

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 301
    .line 302
    .line 303
    :goto_18
    :try_start_19
    invoke-virtual {p1}, Loa/h;->G()Ljava/util/List;

    .line 304
    move-result-object v0

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v0}, Loa/i;->C(Ljava/util/List;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    .line 308
    goto :goto_19

    .line 309
    :catch_19
    move-exception v0

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 313
    .line 314
    .line 315
    :goto_19
    :try_start_1a
    invoke-virtual {p1}, Loa/h;->D()Ljava/util/List;

    .line 316
    move-result-object v0

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v0}, Loa/i;->w(Ljava/util/List;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 320
    goto :goto_1a

    .line 321
    :catch_1a
    move-exception v0

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 325
    .line 326
    .line 327
    :goto_1a
    :try_start_1b
    invoke-virtual {p1}, Loa/h;->w()Ljava/util/List;

    .line 328
    move-result-object v0

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, v0}, Loa/i;->x(Ljava/util/List;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 332
    goto :goto_1b

    .line 333
    :catch_1b
    move-exception v0

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 337
    .line 338
    .line 339
    :goto_1b
    :try_start_1c
    invoke-virtual {p1}, Loa/h;->a0()Z

    .line 340
    move-result v0

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, v0}, Loa/i;->A(Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 344
    goto :goto_1c

    .line 345
    :catch_1c
    move-exception v0

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 349
    .line 350
    .line 351
    :goto_1c
    invoke-static {p0, p1}, Lqa/a;->a(Loa/i;Loa/h;)Ljava/util/List;

    .line 352
    move-result-object p1

    .line 353
    .line 354
    .line 355
    invoke-virtual {p0, p1}, Loa/i;->z(Ljava/util/List;)V

    .line 356
    return-void
.end method

.method private static e(Loa/i;Loa/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Loa/h;->s()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Loa/i;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    .line 11
    new-instance v1, Laa/d;

    .line 12
    .line 13
    const-string v2, "Couldn\'t get DASH manifest"

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2, v0}, Laa/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Loa/h;->x()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Loa/i;->r(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    goto :goto_1

    .line 28
    :catch_1
    move-exception v0

    .line 29
    .line 30
    new-instance v1, Laa/d;

    .line 31
    .line 32
    const-string v2, "Couldn\'t get HLS manifest"

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2, v0}, Laa/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Loa/h;->q()Ljava/util/List;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Loa/i;->l(Ljava/util/List;)V
    :try_end_2
    .catch Laa/c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 46
    goto :goto_3

    .line 47
    :catch_2
    move-exception v0

    .line 48
    goto :goto_2

    .line 49
    :catch_3
    move-exception p0

    .line 50
    goto :goto_7

    .line 51
    .line 52
    :goto_2
    new-instance v1, Laa/d;

    .line 53
    .line 54
    const-string v2, "Couldn\'t get audio streams"

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2, v0}, Laa/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Loa/h;->Y()Ljava/util/List;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Loa/i;->S(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 68
    goto :goto_4

    .line 69
    :catch_4
    move-exception v0

    .line 70
    .line 71
    new-instance v1, Laa/d;

    .line 72
    .line 73
    const-string v2, "Couldn\'t get video streams"

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v2, v0}, Laa/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Loa/h;->X()Ljava/util/List;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Loa/i;->R(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 87
    goto :goto_5

    .line 88
    :catch_5
    move-exception p1

    .line 89
    .line 90
    new-instance v0, Laa/d;

    .line 91
    .line 92
    const-string v1, "Couldn\'t get video only streams"

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v1, p1}, Laa/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lx9/d;->b(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    :goto_5
    iget-object p1, p0, Loa/i;->videoStreams:Ljava/util/List;

    .line 101
    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 104
    move-result p1

    .line 105
    .line 106
    if-eqz p1, :cond_1

    .line 107
    .line 108
    iget-object p0, p0, Loa/i;->audioStreams:Ljava/util/List;

    .line 109
    .line 110
    .line 111
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 112
    move-result p0

    .line 113
    .line 114
    if-nez p0, :cond_0

    .line 115
    goto :goto_6

    .line 116
    .line 117
    :cond_0
    new-instance p0, Loa/i$a;

    .line 118
    .line 119
    const-string p1, "Could not get any stream. See error variable to get further details."

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, p1}, Loa/i$a;-><init>(Ljava/lang/String;)V

    .line 123
    throw p0

    .line 124
    :cond_1
    :goto_6
    return-void

    .line 125
    :goto_7
    throw p0
.end method

.method public static g(Ljava/lang/String;)Loa/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lx9/p;->d(Ljava/lang/String;)Lx9/s;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p0}, Loa/i;->i(Lx9/s;Ljava/lang/String;)Loa/i;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static h(Loa/h;)Loa/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->b()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0}, Loa/i;->c(Loa/h;)Loa/i;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Loa/i;->e(Loa/i;Loa/h;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p0}, Loa/i;->d(Loa/i;Loa/h;)V
    :try_end_0
    .catch Laa/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Loa/h;->v()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    throw v0

    .line 27
    .line 28
    :cond_0
    new-instance v1, Laa/b;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0, v0}, Laa/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    throw v1
.end method

.method public static i(Lx9/s;Ljava/lang/String;)Loa/i;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lx9/s;->g(Ljava/lang/String;)Loa/h;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Loa/i;->h(Loa/h;)Loa/i;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Loa/i;->shortFormContent:Z

    return-void
.end method

.method public B(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Loa/i;->startPosition:J

    return-void
.end method

.method public C(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Loa/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Loa/i;->streamSegments:Ljava/util/List;

    return-void
.end method

.method public D(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Loa/i;->subChannelAvatars:Ljava/util/List;

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->subChannelName:Ljava/lang/String;

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->subChannelUrl:Ljava/lang/String;

    return-void
.end method

.method public G(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Loa/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Loa/i;->subtitles:Ljava/util/List;

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->supportInfo:Ljava/lang/String;

    return-void
.end method

.method public I(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Loa/i;->tags:Ljava/util/List;

    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->textualUploadDate:Ljava/lang/String;

    return-void
.end method

.method public K(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Loa/i;->thumbnails:Ljava/util/List;

    return-void
.end method

.method public L(Lorg/schabi/newpipe/extractor/localization/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->uploadDate:Lorg/schabi/newpipe/extractor/localization/e;

    return-void
.end method

.method public M(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Loa/i;->uploaderAvatars:Ljava/util/List;

    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public O(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Loa/i;->uploaderSubscriberCount:J

    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->uploaderUrl:Ljava/lang/String;

    return-void
.end method

.method public Q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Loa/i;->uploaderVerified:Z

    return-void
.end method

.method public R(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Loa/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Loa/i;->videoOnlyStreams:Ljava/util/List;

    return-void
.end method

.method public S(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Loa/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Loa/i;->videoStreams:Ljava/util/List;

    return-void
.end method

.method public T(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Loa/i;->viewCount:J

    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loa/i;->audioStreams:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loa/i;->videoOnlyStreams:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loa/i;->videoStreams:Ljava/util/List;

    return-object v0
.end method

.method public l(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Loa/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Loa/i;->audioStreams:Ljava/util/List;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->category:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->dashMpdUrl:Ljava/lang/String;

    return-void
.end method

.method public o(Loa/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->description:Loa/e;

    return-void
.end method

.method public p(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Loa/i;->dislikeCount:J

    return-void
.end method

.method public q(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Loa/i;->duration:J

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->hlsUrl:Ljava/lang/String;

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->host:Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/util/Locale;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->language:Ljava/util/Locale;

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->licence:Ljava/lang/String;

    return-void
.end method

.method public v(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Loa/i;->likeCount:J

    return-void
.end method

.method public w(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx9/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Loa/i;->metaInfo:Ljava/util/List;

    return-void
.end method

.method public x(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Loa/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Loa/i;->previewFrames:Ljava/util/List;

    return-void
.end method

.method public y(Loa/h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/i;->privacy:Loa/h$a;

    return-void
.end method

.method public z(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx9/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Loa/i;->relatedItems:Ljava/util/List;

    return-void
.end method
