.class public final Lorg/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/a/a/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 5
    check-cast p1, Lorg/a/a/d;

    check-cast p2, Lorg/a/a/d;

    .line 1009
    invoke-interface {p2}, Lorg/a/a/d;->c()I

    move-result v0

    invoke-interface {p1}, Lorg/a/a/d;->c()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1012
    invoke-interface {p1}, Lorg/a/a/d;->a()I

    move-result p1

    invoke-interface {p2}, Lorg/a/a/d;->a()I

    move-result p2

    sub-int v0, p1, p2

    :cond_0
    return v0
.end method
