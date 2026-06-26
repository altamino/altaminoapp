.class public Lcom/narvii/util/log/LogEntry;
.super Ljava/lang/Object;
.source "LogEntry.java"


# instance fields
.field public error:Ljava/lang/Throwable;

.field public level:I

.field public message:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 24
    iget-wide v0, p0, Lcom/narvii/util/log/LogEntry;->time:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    iget v0, p0, Lcom/narvii/util/log/LogEntry;->level:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v0, 0x3f

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v0, 0x45

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v0, 0x57

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v0, 0x49

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v0, 0x44

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/16 v0, 0x56

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/log/LogEntry;->tag:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, "narvii"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x28

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/util/log/LogEntry;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v0, 0x3a

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    iget-object v0, p0, Lcom/narvii/util/log/LogEntry;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/narvii/util/log/LogEntry;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 52
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 53
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 54
    iget-object v3, p0, Lcom/narvii/util/log/LogEntry;->error:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 55
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 56
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/narvii/util/log/LogEntry;->level:I

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/narvii/util/log/LogEntry;->tag:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/narvii/util/log/LogEntry;->message:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/narvii/util/log/LogEntry;->error:Ljava/lang/Throwable;

    return-void
.end method
