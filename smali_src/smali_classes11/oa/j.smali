.class public Loa/j;
.super Lx9/e;
.source "SourceFile"


# instance fields
.field private duration:J

.field private shortDescription:Ljava/lang/String;

.field private shortFormContent:Z

.field private final streamType:Loa/o;

.field private textualUploadDate:Ljava/lang/String;

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

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z

.field private viewCount:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Loa/o;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lx9/e$a;->STREAM:Lx9/e$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1, p2, p3}, Lx9/e;-><init>(Lx9/e$a;ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    const-wide/16 p1, -0x1

    .line 8
    .line 9
    iput-wide p1, p0, Loa/j;->viewCount:J

    .line 10
    .line 11
    iput-wide p1, p0, Loa/j;->duration:J

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    iput-object p1, p0, Loa/j;->uploaderUrl:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iput-object p1, p0, Loa/j;->uploaderAvatars:Ljava/util/List;

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    iput-boolean p1, p0, Loa/j;->uploaderVerified:Z

    .line 24
    .line 25
    iput-boolean p1, p0, Loa/j;->shortFormContent:Z

    .line 26
    .line 27
    iput-object p4, p0, Loa/j;->streamType:Loa/o;

    .line 28
    return-void
.end method


# virtual methods
.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Loa/j;->uploaderVerified:Z

    return v0
.end method

.method public h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Loa/j;->duration:J

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/j;->shortDescription:Ljava/lang/String;

    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Loa/j;->shortFormContent:Z

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/j;->textualUploadDate:Ljava/lang/String;

    return-void
.end method

.method public l(Lorg/schabi/newpipe/extractor/localization/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/j;->uploadDate:Lorg/schabi/newpipe/extractor/localization/e;

    return-void
.end method

.method public m(Ljava/util/List;)V
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
    iput-object p1, p0, Loa/j;->uploaderAvatars:Ljava/util/List;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/j;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/j;->uploaderUrl:Ljava/lang/String;

    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Loa/j;->uploaderVerified:Z

    return-void
.end method

.method public q(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Loa/j;->viewCount:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Loa/j;->streamType:Loa/o;

    .line 5
    .line 6
    iget-object v2, v0, Loa/j;->uploaderName:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, v0, Loa/j;->textualUploadDate:Ljava/lang/String;

    .line 9
    .line 10
    iget-wide v4, v0, Loa/j;->viewCount:J

    .line 11
    .line 12
    iget-wide v6, v0, Loa/j;->duration:J

    .line 13
    .line 14
    iget-object v8, v0, Loa/j;->uploaderUrl:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lx9/e;->a()Lx9/e$a;

    .line 18
    move-result-object v9

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lx9/e;->c()I

    .line 22
    move-result v10

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Lx9/e;->e()Ljava/lang/String;

    .line 26
    move-result-object v11

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Lx9/e;->b()Ljava/lang/String;

    .line 30
    move-result-object v12

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Lx9/e;->d()Ljava/util/List;

    .line 34
    move-result-object v13

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Loa/j;->g()Z

    .line 38
    move-result v14

    .line 39
    .line 40
    new-instance v15, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    const-string v0, "StreamInfoItem{streamType="

    .line 46
    .line 47
    .line 48
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v0, ", uploaderName=\'"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v0, "\', textualUploadDate=\'"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v0, "\', viewCount="

    .line 70
    .line 71
    .line 72
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, ", duration="

    .line 78
    .line 79
    .line 80
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v0, ", uploaderUrl=\'"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v0, "\', infoType="

    .line 94
    .line 95
    .line 96
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v0, ", serviceId="

    .line 102
    .line 103
    .line 104
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v0, ", url=\'"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v0, "\', name=\'"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v0, "\', thumbnails=\'"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v0, "\', uploaderVerified=\'"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v0, "\'}"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    return-object v0
.end method
