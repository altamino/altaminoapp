.class final Lorg/threeten/bp/format/c$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/format/c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
.end annotation


# instance fields
.field private final field:Lorg/threeten/bp/temporal/h;

.field private volatile numberPrinterParser:Lorg/threeten/bp/format/c$j;

.field private final provider:Lorg/threeten/bp/format/e;

.field private final textStyle:Lorg/threeten/bp/format/j;


# direct methods
.method constructor <init>(Lorg/threeten/bp/temporal/h;Lorg/threeten/bp/format/j;Lorg/threeten/bp/format/e;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/threeten/bp/format/c$o;->field:Lorg/threeten/bp/temporal/h;

    .line 6
    .line 7
    iput-object p2, p0, Lorg/threeten/bp/format/c$o;->textStyle:Lorg/threeten/bp/format/j;

    .line 8
    .line 9
    iput-object p3, p0, Lorg/threeten/bp/format/c$o;->provider:Lorg/threeten/bp/format/e;

    .line 10
    return-void
.end method

.method private b()Lorg/threeten/bp/format/c$j;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/c$o;->numberPrinterParser:Lorg/threeten/bp/format/c$j;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lorg/threeten/bp/format/c$j;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/threeten/bp/format/c$o;->field:Lorg/threeten/bp/temporal/h;

    .line 9
    .line 10
    const/16 v2, 0x13

    .line 11
    .line 12
    sget-object v3, Lorg/threeten/bp/format/h;->NORMAL:Lorg/threeten/bp/format/h;

    .line 13
    const/4 v4, 0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v4, v2, v3}, Lorg/threeten/bp/format/c$j;-><init>(Lorg/threeten/bp/temporal/h;IILorg/threeten/bp/format/h;)V

    .line 17
    .line 18
    iput-object v0, p0, Lorg/threeten/bp/format/c$o;->numberPrinterParser:Lorg/threeten/bp/format/c$j;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/c$o;->numberPrinterParser:Lorg/threeten/bp/format/c$j;

    .line 21
    return-object v0
.end method


# virtual methods
.method public a(Lorg/threeten/bp/format/d;Ljava/lang/StringBuilder;)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/c$o;->field:Lorg/threeten/bp/temporal/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/d;->f(Lorg/threeten/bp/temporal/h;)Ljava/lang/Long;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lorg/threeten/bp/format/c$o;->provider:Lorg/threeten/bp/format/e;

    .line 13
    .line 14
    iget-object v2, p0, Lorg/threeten/bp/format/c$o;->field:Lorg/threeten/bp/temporal/h;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    move-result-wide v3

    .line 19
    .line 20
    iget-object v5, p0, Lorg/threeten/bp/format/c$o;->textStyle:Lorg/threeten/bp/format/j;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/threeten/bp/format/d;->c()Ljava/util/Locale;

    .line 24
    move-result-object v6

    .line 25
    move-object v0, v1

    .line 26
    move-object v1, v2

    .line 27
    move-wide v2, v3

    .line 28
    move-object v4, v5

    .line 29
    move-object v5, v6

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/h;JLorg/threeten/bp/format/j;Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lorg/threeten/bp/format/c$o;->b()Lorg/threeten/bp/format/c$j;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/format/c$j;->a(Lorg/threeten/bp/format/d;Ljava/lang/StringBuilder;)Z

    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const/4 p1, 0x1

    .line 49
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/c$o;->textStyle:Lorg/threeten/bp/format/j;

    .line 3
    .line 4
    sget-object v1, Lorg/threeten/bp/format/j;->FULL:Lorg/threeten/bp/format/j;

    .line 5
    .line 6
    const-string v2, ")"

    .line 7
    .line 8
    const-string v3, "Text("

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/threeten/bp/format/c$o;->field:Lorg/threeten/bp/temporal/h;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    iget-object v1, p0, Lorg/threeten/bp/format/c$o;->field:Lorg/threeten/bp/temporal/h;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, ","

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    iget-object v1, p0, Lorg/threeten/bp/format/c$o;->textStyle:Lorg/threeten/bp/format/j;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
