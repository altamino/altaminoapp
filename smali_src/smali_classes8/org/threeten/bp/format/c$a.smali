.class Lorg/threeten/bp/format/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/threeten/bp/temporal/j<",
        "Lorg/threeten/bp/r;",
        ">;"
    }
.end annotation


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
.method public bridge synthetic a(Lorg/threeten/bp/temporal/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/format/c$a;->b(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/r;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/r;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/temporal/i;->g()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/e;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lorg/threeten/bp/r;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    instance-of v0, p1, Lorg/threeten/bp/s;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return-object p1
.end method
