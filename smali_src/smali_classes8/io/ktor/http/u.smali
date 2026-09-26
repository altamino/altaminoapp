.class public final Lio/ktor/http/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/u$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/u$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HTTP_1_0:Lio/ktor/http/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HTTP_1_1:Lio/ktor/http/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HTTP_2_0:Lio/ktor/http/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final QUIC:Lio/ktor/http/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SPDY_3:Lio/ktor/http/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final major:I

.field private final minor:I

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lio/ktor/http/u$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lio/ktor/http/u$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lio/ktor/http/u;->Companion:Lio/ktor/http/u$a;

    .line 9
    .line 10
    new-instance v0, Lio/ktor/http/u;

    .line 11
    .line 12
    const-string v1, "HTTP"

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3}, Lio/ktor/http/u;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    sput-object v0, Lio/ktor/http/u;->HTTP_2_0:Lio/ktor/http/u;

    .line 20
    .line 21
    new-instance v0, Lio/ktor/http/u;

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2, v2}, Lio/ktor/http/u;-><init>(Ljava/lang/String;II)V

    .line 26
    .line 27
    sput-object v0, Lio/ktor/http/u;->HTTP_1_1:Lio/ktor/http/u;

    .line 28
    .line 29
    new-instance v0, Lio/ktor/http/u;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2, v3}, Lio/ktor/http/u;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    sput-object v0, Lio/ktor/http/u;->HTTP_1_0:Lio/ktor/http/u;

    .line 35
    .line 36
    new-instance v0, Lio/ktor/http/u;

    .line 37
    .line 38
    const-string v1, "SPDY"

    .line 39
    const/4 v4, 0x3

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1, v4, v3}, Lio/ktor/http/u;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    sput-object v0, Lio/ktor/http/u;->SPDY_3:Lio/ktor/http/u;

    .line 45
    .line 46
    new-instance v0, Lio/ktor/http/u;

    .line 47
    .line 48
    const-string v1, "QUIC"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1, v2, v3}, Lio/ktor/http/u;-><init>(Ljava/lang/String;II)V

    .line 52
    .line 53
    sput-object v0, Lio/ktor/http/u;->QUIC:Lio/ktor/http/u;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "name"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lio/ktor/http/u;->name:Ljava/lang/String;

    .line 11
    .line 12
    iput p2, p0, Lio/ktor/http/u;->major:I

    .line 13
    .line 14
    iput p3, p0, Lio/ktor/http/u;->minor:I

    .line 15
    return-void
.end method

.method public static final synthetic a()Lio/ktor/http/u;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/u;->HTTP_1_1:Lio/ktor/http/u;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/http/u;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/ktor/http/u;

    iget-object v1, p0, Lio/ktor/http/u;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/ktor/http/u;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lio/ktor/http/u;->major:I

    iget v3, p1, Lio/ktor/http/u;->major:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lio/ktor/http/u;->minor:I

    iget p1, p1, Lio/ktor/http/u;->minor:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/ktor/http/u;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/ktor/http/u;->major:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/ktor/http/u;->minor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lio/ktor/http/u;->name:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const/16 v1, 0x2f

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget v1, p0, Lio/ktor/http/u;->major:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const/16 v1, 0x2e

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget v1, p0, Lio/ktor/http/u;->minor:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
