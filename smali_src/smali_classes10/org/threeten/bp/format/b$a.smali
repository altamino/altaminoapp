.class Lorg/threeten/bp/format/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/threeten/bp/temporal/j<",
        "Lorg/threeten/bp/n;",
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
    invoke-virtual {p0, p1}, Lorg/threeten/bp/format/b$a;->b(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/n;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/n;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/format/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/format/a;

    .line 7
    .line 8
    iget-object p1, p1, Lorg/threeten/bp/format/a;->excessDays:Lorg/threeten/bp/n;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    sget-object p1, Lorg/threeten/bp/n;->ZERO:Lorg/threeten/bp/n;

    .line 12
    return-object p1
.end method
