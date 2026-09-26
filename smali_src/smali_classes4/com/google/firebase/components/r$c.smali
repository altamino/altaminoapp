.class Lcom/google/firebase/components/r$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final anInterface:Lcom/google/firebase/components/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/g0<",
            "*>;"
        }
    .end annotation
.end field

.field private final set:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/components/g0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/g0<",
            "*>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/r$c;->anInterface:Lcom/google/firebase/components/g0;

    iput-boolean p2, p0, Lcom/google/firebase/components/r$c;->set:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/components/g0;ZLcom/google/firebase/components/r$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/components/r$c;-><init>(Lcom/google/firebase/components/g0;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/components/r$c;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/firebase/components/r$c;->set:Z

    .line 3
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/firebase/components/r$c;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/google/firebase/components/r$c;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/google/firebase/components/r$c;->anInterface:Lcom/google/firebase/components/g0;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/firebase/components/r$c;->anInterface:Lcom/google/firebase/components/g0;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/google/firebase/components/g0;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-boolean p1, p1, Lcom/google/firebase/components/r$c;->set:Z

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/google/firebase/components/r$c;->set:Z

    .line 22
    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/r$c;->anInterface:Lcom/google/firebase/components/g0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/components/g0;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0xf4243

    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int/2addr v0, v1

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/google/firebase/components/r$c;->set:Z

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 21
    move-result v1

    .line 22
    xor-int/2addr v0, v1

    .line 23
    return v0
.end method
