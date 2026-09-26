.class public final Lcom/narvii/util/debug/model/FailAttestation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final shouldFail:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/util/debug/model/FailAttestation;->shouldFail:Z

    .line 6
    return-void
.end method

.method public static synthetic copy$default(Lcom/narvii/util/debug/model/FailAttestation;ZILjava/lang/Object;)Lcom/narvii/util/debug/model/FailAttestation;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/narvii/util/debug/model/FailAttestation;->shouldFail:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/debug/model/FailAttestation;->copy(Z)Lcom/narvii/util/debug/model/FailAttestation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/debug/model/FailAttestation;->shouldFail:Z

    return v0
.end method

.method public final copy(Z)Lcom/narvii/util/debug/model/FailAttestation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/narvii/util/debug/model/FailAttestation;

    invoke-direct {v0, p1}, Lcom/narvii/util/debug/model/FailAttestation;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/narvii/util/debug/model/FailAttestation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/narvii/util/debug/model/FailAttestation;

    iget-boolean v1, p0, Lcom/narvii/util/debug/model/FailAttestation;->shouldFail:Z

    iget-boolean p1, p1, Lcom/narvii/util/debug/model/FailAttestation;->shouldFail:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getShouldFail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/debug/model/FailAttestation;->shouldFail:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/debug/model/FailAttestation;->shouldFail:Z

    invoke-static {v0}, Landroidx/compose/foundation/c;->a(Z)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Lcom/narvii/util/debug/model/FailAttestation;->shouldFail:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FailAttestation(shouldFail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
