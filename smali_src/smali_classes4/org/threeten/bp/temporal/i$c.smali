.class Lorg/threeten/bp/temporal/i$c;
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
        "Lorg/threeten/bp/temporal/k;",
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
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/i$c;->b(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/k;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/e;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/temporal/k;

    .line 7
    return-object p1
.end method
