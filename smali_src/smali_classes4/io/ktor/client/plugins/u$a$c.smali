.class final Lio/ktor/client/plugins/u$a$c;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/u$a;->d(DJJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Lio/ktor/client/plugins/u$b;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $base:D

.field final synthetic $maxDelayMs:J

.field final synthetic $randomizationMs:J

.field final synthetic this$0:Lio/ktor/client/plugins/u$a;


# direct methods
.method constructor <init>(DJLio/ktor/client/plugins/u$a;J)V
    .locals 0

    iput-wide p1, p0, Lio/ktor/client/plugins/u$a$c;->$base:D

    iput-wide p3, p0, Lio/ktor/client/plugins/u$a$c;->$maxDelayMs:J

    iput-object p5, p0, Lio/ktor/client/plugins/u$a$c;->this$0:Lio/ktor/client/plugins/u$a;

    iput-wide p6, p0, Lio/ktor/client/plugins/u$a$c;->$randomizationMs:J

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/ktor/client/plugins/u$b;I)Ljava/lang/Long;
    .locals 3
    .param p1    # Lio/ktor/client/plugins/u$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$delayMillis"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-wide v0, p0, Lio/ktor/client/plugins/u$a$c;->$base:D

    .line 8
    int-to-double p1, p2

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    .line 12
    move-result-wide p1

    .line 13
    double-to-long p1, p1

    .line 14
    .line 15
    const-wide/16 v0, 0x3e8

    .line 16
    mul-long/2addr p1, v0

    .line 17
    .line 18
    iget-wide v0, p0, Lio/ktor/client/plugins/u$a$c;->$maxDelayMs:J

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 22
    move-result-wide p1

    .line 23
    .line 24
    iget-object v0, p0, Lio/ktor/client/plugins/u$a$c;->this$0:Lio/ktor/client/plugins/u$a;

    .line 25
    .line 26
    iget-wide v1, p0, Lio/ktor/client/plugins/u$a$c;->$randomizationMs:J

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lio/ktor/client/plugins/u$a;->a(Lio/ktor/client/plugins/u$a;J)J

    .line 30
    move-result-wide v0

    .line 31
    add-long/2addr p1, v0

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lio/ktor/client/plugins/u$b;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/u$a$c;->a(Lio/ktor/client/plugins/u$b;I)Ljava/lang/Long;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
