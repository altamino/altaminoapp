.class Lcom/narvii/util/logging/DetailLogging$LogEntry;
.super Ljava/lang/Object;
.source "DetailLogging.java"


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

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/StringBuilder;Ljava/util/Date;Ljava/text/DateFormat;)V
    .locals 2

    .line 205
    iget-wide v0, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->time:J

    invoke-virtual {p2, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 206
    invoke-virtual {p3, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    .line 207
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    iget p3, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->level:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_2

    const/4 v0, 0x5

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-eq p3, v0, :cond_0

    const/16 p3, 0x3f

    .line 225
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 p3, 0x45

    .line 222
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p3, 0x57

    .line 219
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 p3, 0x49

    .line 216
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 p3, 0x44

    .line 213
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/16 p3, 0x56

    .line 210
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p3, 0x2f

    .line 228
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    iget-object p3, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->tag:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x3a

    .line 230
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    iget-object p2, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object p2, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->error:Ljava/lang/Throwable;

    if-eqz p2, :cond_5

    const/16 p2, 0xa

    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 236
    new-instance p3, Ljava/io/PrintWriter;

    invoke-direct {p3, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 237
    iget-object v0, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->error:Ljava/lang/Throwable;

    invoke-virtual {v0, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 238
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 239
    invoke-virtual {p3}, Ljava/io/PrintWriter;->close()V

    .line 240
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->level:I

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->tag:Ljava/lang/String;

    .line 200
    iput-object v0, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->message:Ljava/lang/String;

    .line 201
    iput-object v0, p0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->error:Ljava/lang/Throwable;

    return-void
.end method
