.class public final Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;
.super Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# instance fields
.field private final failAttestation:Lcom/narvii/util/debug/model/FailAttestation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/util/debug/model/FailAttestation;)V
    .locals 1
    .param p1    # Lcom/narvii/util/debug/model/FailAttestation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "failAttestation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState;-><init>(Lkotlin/jvm/internal/k;)V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;->failAttestation:Lcom/narvii/util/debug/model/FailAttestation;

    .line 12
    return-void
.end method

.method public static synthetic copy$default(Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;Lcom/narvii/util/debug/model/FailAttestation;ILjava/lang/Object;)Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;->failAttestation:Lcom/narvii/util/debug/model/FailAttestation;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;->copy(Lcom/narvii/util/debug/model/FailAttestation;)Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/narvii/util/debug/model/FailAttestation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;->failAttestation:Lcom/narvii/util/debug/model/FailAttestation;

    return-object v0
.end method

.method public final copy(Lcom/narvii/util/debug/model/FailAttestation;)Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;
    .locals 1
    .param p1    # Lcom/narvii/util/debug/model/FailAttestation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "failAttestation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;

    invoke-direct {v0, p1}, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;-><init>(Lcom/narvii/util/debug/model/FailAttestation;)V

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
    instance-of v1, p1, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;

    iget-object v1, p0, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;->failAttestation:Lcom/narvii/util/debug/model/FailAttestation;

    iget-object p1, p1, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;->failAttestation:Lcom/narvii/util/debug/model/FailAttestation;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getFailAttestation()Lcom/narvii/util/debug/model/FailAttestation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;->failAttestation:Lcom/narvii/util/debug/model/FailAttestation;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;->failAttestation:Lcom/narvii/util/debug/model/FailAttestation;

    invoke-virtual {v0}, Lcom/narvii/util/debug/model/FailAttestation;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;->failAttestation:Lcom/narvii/util/debug/model/FailAttestation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success(failAttestation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
