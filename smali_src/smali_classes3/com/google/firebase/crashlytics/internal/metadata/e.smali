.class public Lcom/google/firebase/crashlytics/internal/metadata/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/metadata/e$b;
    }
.end annotation


# static fields
.field private static final LOGFILE_NAME:Ljava/lang/String; = "userlog"

.field static final MAX_LOG_SIZE:I = 0x10000

.field private static final NOOP_LOG_STORE:Lcom/google/firebase/crashlytics/internal/metadata/e$b;


# instance fields
.field private currentLog:Lcom/google/firebase/crashlytics/internal/metadata/c;

.field private final fileStore:Le4/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/metadata/e$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/internal/metadata/e$b;-><init>(Lcom/google/firebase/crashlytics/internal/metadata/e$a;)V

    .line 7
    .line 8
    sput-object v0, Lcom/google/firebase/crashlytics/internal/metadata/e;->NOOP_LOG_STORE:Lcom/google/firebase/crashlytics/internal/metadata/e$b;

    .line 9
    return-void
.end method

.method public constructor <init>(Le4/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/metadata/e;->fileStore:Le4/f;

    sget-object p1, Lcom/google/firebase/crashlytics/internal/metadata/e;->NOOP_LOG_STORE:Lcom/google/firebase/crashlytics/internal/metadata/e$b;

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/metadata/e;->currentLog:Lcom/google/firebase/crashlytics/internal/metadata/c;

    return-void
.end method

.method public constructor <init>(Le4/f;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/metadata/e;-><init>(Le4/f;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/metadata/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/e;->fileStore:Le4/f;

    .line 3
    .line 4
    const-string v1, "userlog"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Le4/f;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/e;->currentLog:Lcom/google/firebase/crashlytics/internal/metadata/c;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/metadata/c;->b()V

    .line 6
    return-void
.end method

.method public b()[B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/e;->currentLog:Lcom/google/firebase/crashlytics/internal/metadata/c;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/metadata/c;->a()[B

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/e;->currentLog:Lcom/google/firebase/crashlytics/internal/metadata/c;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/metadata/c;->e()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/e;->currentLog:Lcom/google/firebase/crashlytics/internal/metadata/c;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/metadata/c;->d()V

    .line 6
    .line 7
    sget-object v0, Lcom/google/firebase/crashlytics/internal/metadata/e;->NOOP_LOG_STORE:Lcom/google/firebase/crashlytics/internal/metadata/e$b;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/e;->currentLog:Lcom/google/firebase/crashlytics/internal/metadata/c;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/metadata/e;->d(Ljava/lang/String;)Ljava/io/File;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const/high16 v0, 0x10000

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/metadata/e;->f(Ljava/io/File;I)V

    .line 22
    return-void
.end method

.method f(Ljava/io/File;I)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/metadata/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/metadata/h;-><init>(Ljava/io/File;I)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/e;->currentLog:Lcom/google/firebase/crashlytics/internal/metadata/c;

    .line 8
    return-void
.end method

.method public g(JLjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/e;->currentLog:Lcom/google/firebase/crashlytics/internal/metadata/c;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/metadata/c;->c(JLjava/lang/String;)V

    .line 6
    return-void
.end method
