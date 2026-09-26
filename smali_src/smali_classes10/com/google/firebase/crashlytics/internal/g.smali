.class public Lcom/google/firebase/crashlytics/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT_LOGGER:Lcom/google/firebase/crashlytics/internal/g;

.field public static final TAG:Ljava/lang/String; = "FirebaseCrashlytics"


# instance fields
.field private logLevel:I

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/g;

    .line 3
    .line 4
    const-string v1, "FirebaseCrashlytics"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/google/firebase/crashlytics/internal/g;->DEFAULT_LOGGER:Lcom/google/firebase/crashlytics/internal/g;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/g;->tag:Ljava/lang/String;

    .line 6
    const/4 p1, 0x4

    .line 7
    .line 8
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/g;->logLevel:I

    .line 9
    return-void
.end method

.method private a(I)Z
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/g;->logLevel:I

    .line 3
    .line 4
    if-le v0, p1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/g;->tag:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method public static f()Lcom/google/firebase/crashlytics/internal/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/internal/g;->DEFAULT_LOGGER:Lcom/google/firebase/crashlytics/internal/g;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/g;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/g;->a(I)Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/g;->tag:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/g;->a(I)Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/g;->tag:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/g;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/g;->a(I)Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/g;->tag:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/g;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/g;->a(I)Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/g;->tag:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/g;->a(I)Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/g;->tag:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_0
    return-void
.end method
