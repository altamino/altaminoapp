.class public final Lh8/d$a;
.super Lh8/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh8/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh8/d$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lh8/d;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh8/d$a;-><init>()V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lh8/d$a$a;->INSTANCE:Lh8/d$a$a;

    .line 3
    return-object v0
.end method


# virtual methods
.method public b(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lh8/d;->a()Lh8/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lh8/d;->b(I)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public c()D
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lh8/d;->a()Lh8/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lh8/d;->c()D

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public d()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lh8/d;->a()Lh8/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lh8/d;->d()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public e(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lh8/d;->a()Lh8/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lh8/d;->e(I)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public f(II)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lh8/d;->a()Lh8/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lh8/d;->f(II)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public g()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lh8/d;->a()Lh8/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lh8/d;->g()J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public h(J)J
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lh8/d;->a()Lh8/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lh8/d;->h(J)J

    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method public i(JJ)J
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lh8/d;->a()Lh8/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Lh8/d;->i(JJ)J

    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method
