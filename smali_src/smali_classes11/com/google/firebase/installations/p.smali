.class public final Lcom/google/firebase/installations/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final API_KEY_FORMAT:Ljava/util/regex/Pattern;

.field private static final APP_ID_IDENTIFICATION_SUBSTRING:Ljava/lang/String; = ":"

.field public static final AUTH_TOKEN_EXPIRATION_BUFFER_IN_SECS:J

.field private static singleton:Lcom/google/firebase/installations/p;


# instance fields
.field private final clock:Lr4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 3
    .line 4
    const-wide/16 v1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    sput-wide v0, Lcom/google/firebase/installations/p;->AUTH_TOKEN_EXPIRATION_BUFFER_IN_SECS:J

    .line 11
    .line 12
    const-string v0, "\\AA[\\w-]{38}\\z"

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Lcom/google/firebase/installations/p;->API_KEY_FORMAT:Ljava/util/regex/Pattern;

    .line 19
    return-void
.end method

.method private constructor <init>(Lr4/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/installations/p;->clock:Lr4/a;

    .line 6
    return-void
.end method

.method public static c()Lcom/google/firebase/installations/p;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lr4/b;->a()Lr4/b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/firebase/installations/p;->d(Lr4/a;)Lcom/google/firebase/installations/p;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static d(Lr4/a;)Lcom/google/firebase/installations/p;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/installations/p;->singleton:Lcom/google/firebase/installations/p;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/google/firebase/installations/p;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/google/firebase/installations/p;-><init>(Lr4/a;)V

    .line 10
    .line 11
    sput-object v0, Lcom/google/firebase/installations/p;->singleton:Lcom/google/firebase/installations/p;

    .line 12
    .line 13
    :cond_0
    sget-object p0, Lcom/google/firebase/installations/p;->singleton:Lcom/google/firebase/installations/p;

    .line 14
    return-object p0
.end method

.method static g(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/installations/p;->API_KEY_FORMAT:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method static h(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, ":"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/installations/p;->clock:Lr4/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lr4/a;->currentTimeMillis()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public b()J
    .locals 3

    .line 1
    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/installations/p;->a()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public e()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 10
    mul-double/2addr v0, v2

    .line 11
    double-to-long v0, v0

    .line 12
    return-wide v0
.end method

.method public f(Lq4/d;)Z
    .locals 8
    .param p1    # Lq4/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lq4/d;->b()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lq4/d;->h()J

    .line 16
    move-result-wide v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lq4/d;->c()J

    .line 20
    move-result-wide v4

    .line 21
    add-long/2addr v2, v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/firebase/installations/p;->b()J

    .line 25
    move-result-wide v4

    .line 26
    .line 27
    sget-wide v6, Lcom/google/firebase/installations/p;->AUTH_TOKEN_EXPIRATION_BUFFER_IN_SECS:J

    .line 28
    add-long/2addr v4, v6

    .line 29
    .line 30
    cmp-long p1, v2, v4

    .line 31
    .line 32
    if-gez p1, :cond_1

    .line 33
    return v1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return p1
.end method
