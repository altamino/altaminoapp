.class Lorg/threeten/bp/temporal/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/i;
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
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/i$d;->b(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/r;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/r;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/i;->ZONE_ID:Lorg/threeten/bp/temporal/j;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/e;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lorg/threeten/bp/r;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/i;->OFFSET:Lorg/threeten/bp/temporal/j;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/e;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    move-object v0, p1

    .line 19
    .line 20
    check-cast v0, Lorg/threeten/bp/r;

    .line 21
    :goto_0
    return-object v0
.end method
