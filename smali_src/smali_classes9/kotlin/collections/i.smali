.class public abstract Lkotlin/collections/i;
.super Lkotlin/collections/a;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/a<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/collections/i$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/collections/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/i$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lkotlin/collections/i;->Companion:Lkotlin/collections/i$a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/collections/a;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_1
    sget-object v0, Lkotlin/collections/i;->Companion:Lkotlin/collections/i$a;

    .line 13
    .line 14
    check-cast p1, Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0, p1}, Lkotlin/collections/i$a;->a(Ljava/util/Set;Ljava/util/Set;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlin/collections/i;->Companion:Lkotlin/collections/i$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lkotlin/collections/i$a;->b(Ljava/util/Collection;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
