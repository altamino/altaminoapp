.class Lorg/threeten/bp/zone/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/zone/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final regionArray:[Ljava/lang/String;

.field private final ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final ruleIndices:[S

.field private final versionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[SLjava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[S",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p4, p0, Lorg/threeten/bp/zone/c$a;->ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    .line 7
    iput-object p1, p0, Lorg/threeten/bp/zone/c$a;->versionId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/threeten/bp/zone/c$a;->regionArray:[Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/threeten/bp/zone/c$a;->ruleIndices:[S

    .line 12
    return-void
.end method

.method static synthetic a(Lorg/threeten/bp/zone/c$a;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lorg/threeten/bp/zone/c$a;->versionId:Ljava/lang/String;

    .line 3
    return-object p0
.end method


# virtual methods
.method b(S)Lorg/threeten/bp/zone/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/zone/c$a;->ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v1, v0, [B

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, [B

    .line 13
    .line 14
    new-instance v1, Ljava/io/DataInputStream;

    .line 15
    .line 16
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lorg/threeten/bp/zone/a;->a(Ljava/io/DataInput;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p0, Lorg/threeten/bp/zone/c$a;->ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 32
    .line 33
    :cond_0
    check-cast v0, Lorg/threeten/bp/zone/f;

    .line 34
    return-object v0
.end method

.method c(Ljava/lang/String;)Lorg/threeten/bp/zone/f;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/zone/c$a;->regionArray:[Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    .line 12
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/threeten/bp/zone/c$a;->ruleIndices:[S

    .line 13
    .line 14
    aget-short v0, v1, v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/threeten/bp/zone/c$a;->b(S)Lorg/threeten/bp/zone/f;

    .line 18
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .line 22
    new-instance v1, Lorg/threeten/bp/zone/g;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    const-string v3, "Invalid binary time-zone data: TZDB:"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p1, ", version: "

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-object p1, p0, Lorg/threeten/bp/zone/c$a;->versionId:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p1, v0}, Lorg/threeten/bp/zone/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/zone/c$a;->versionId:Ljava/lang/String;

    return-object v0
.end method
