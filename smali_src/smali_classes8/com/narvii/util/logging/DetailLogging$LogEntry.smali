.class Lcom/narvii/util/logging/DetailLogging$LogEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/logging/DetailLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogEntry"
.end annotation


# instance fields
.field public error:Ljava/lang/Throwable;

.field public level:I

.field public message:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public time:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/StringBuilder;Ljava/util/Date;Ljava/text/DateFormat;)V
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->time:J

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const/16 p2, 0x20

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    iget p3, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->level:I

    .line 20
    const/4 v0, 0x2

    .line 21
    .line 22
    if-eq p3, v0, :cond_4

    .line 23
    const/4 v0, 0x3

    .line 24
    .line 25
    if-eq p3, v0, :cond_3

    .line 26
    const/4 v0, 0x4

    .line 27
    .line 28
    if-eq p3, v0, :cond_2

    .line 29
    const/4 v0, 0x5

    .line 30
    .line 31
    if-eq p3, v0, :cond_1

    .line 32
    const/4 v0, 0x6

    .line 33
    .line 34
    if-eq p3, v0, :cond_0

    .line 35
    .line 36
    const/16 p3, 0x3f

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    const/16 p3, 0x45

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    const/16 p3, 0x57

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    const/16 p3, 0x49

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_3
    const/16 p3, 0x44

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_4
    const/16 p3, 0x56

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    :goto_0
    const/16 p3, 0x2f

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    iget-object p3, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->tag:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const/16 p3, 0x3a

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    iget-object p2, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->message:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    iget-object p2, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->error:Ljava/lang/Throwable;

    .line 95
    .line 96
    if-eqz p2, :cond_5

    .line 97
    .line 98
    const/16 p2, 0xa

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    new-instance p2, Ljava/io/StringWriter;

    .line 104
    .line 105
    .line 106
    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 107
    .line 108
    new-instance p3, Ljava/io/PrintWriter;

    .line 109
    .line 110
    .line 111
    invoke-direct {p3, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 112
    .line 113
    iget-object v0, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->error:Ljava/lang/Throwable;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3}, Ljava/io/PrintWriter;->close()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    :cond_5
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->level:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->error:Ljava/lang/Throwable;

    return-void
.end method
