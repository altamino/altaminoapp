.class public Lcom/narvii/util/log/LogEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public error:Ljava/lang/Throwable;

.field public level:I

.field public message:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/util/log/LogEntry;->time:J

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/util/log/LogEntry;->level:I

    .line 8
    const/4 v1, 0x2

    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    const/4 v1, 0x3

    .line 12
    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    const/4 v1, 0x4

    .line 15
    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    const/4 v1, 0x5

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    const/4 v1, 0x6

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const/16 v0, 0x3f

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    const/16 v0, 0x45

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    const/16 v0, 0x57

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_2
    const/16 v0, 0x49

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_3
    const/16 v0, 0x44

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_4
    const/16 v0, 0x56

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/log/LogEntry;->tag:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    const-string v1, "narvii"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v0

    .line 68
    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    const/16 v0, 0x28

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/util/log/LogEntry;->tag:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const/16 v0, 0x29

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    :cond_5
    const/16 v0, 0x3a

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/util/log/LogEntry;->message:Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const/16 v0, 0xa

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/util/log/LogEntry;->error:Ljava/lang/Throwable;

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    new-instance v1, Ljava/io/StringWriter;

    .line 106
    .line 107
    .line 108
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 109
    .line 110
    new-instance v2, Ljava/io/PrintWriter;

    .line 111
    .line 112
    .line 113
    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 114
    .line 115
    iget-object v3, p0, Lcom/narvii/util/log/LogEntry;->error:Ljava/lang/Throwable;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    :cond_6
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/util/log/LogEntry;->level:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/util/log/LogEntry;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/util/log/LogEntry;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/util/log/LogEntry;->error:Ljava/lang/Throwable;

    return-void
.end method
