.class public Loa/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY_DESCRIPTION:Loa/e;

.field public static final HTML:I = 0x1

.field public static final MARKDOWN:I = 0x2

.field public static final PLAIN_TEXT:I = 0x3


# instance fields
.field private final content:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Loa/e;

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    const/4 v2, 0x3

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Loa/e;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Loa/e;->EMPTY_DESCRIPTION:Loa/e;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p2, p0, Loa/e;->type:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    iput-object p1, p0, Loa/e;->content:Ljava/lang/String;

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iput-object p1, p0, Loa/e;->content:Ljava/lang/String;

    .line 15
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    check-cast p1, Loa/e;

    .line 21
    .line 22
    iget v2, p0, Loa/e;->type:I

    .line 23
    .line 24
    iget v3, p1, Loa/e;->type:I

    .line 25
    .line 26
    if-ne v2, v3, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Loa/e;->content:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p1, Loa/e;->content:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v0, v1

    .line 39
    :goto_0
    return v0

    .line 40
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    iget-object v2, p0, Loa/e;->content:Ljava/lang/String;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    iget v1, p0, Loa/e;->type:I

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 21
    move-result v0

    .line 22
    return v0
.end method
