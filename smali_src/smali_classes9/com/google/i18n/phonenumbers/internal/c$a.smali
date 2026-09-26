.class Lcom/google/i18n/phonenumbers/internal/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/i18n/phonenumbers/internal/c$a;->size:I

    .line 6
    .line 7
    new-instance v0, Lcom/google/i18n/phonenumbers/internal/c$a$a;

    .line 8
    .line 9
    mul-int/lit8 p1, p1, 0x4

    .line 10
    .line 11
    div-int/lit8 p1, p1, 0x3

    .line 12
    const/4 v1, 0x1

    .line 13
    add-int/2addr p1, v1

    .line 14
    .line 15
    const/high16 v2, 0x3f400000    # 0.75f

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/i18n/phonenumbers/internal/c$a$a;-><init>(Lcom/google/i18n/phonenumbers/internal/c$a;IFZ)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/internal/c$a;->map:Ljava/util/LinkedHashMap;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/google/i18n/phonenumbers/internal/c$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/i18n/phonenumbers/internal/c$a;->size:I

    .line 3
    return p0
.end method


# virtual methods
.method public declared-synchronized b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/internal/c$a;->map:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/internal/c$a;->map:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method
