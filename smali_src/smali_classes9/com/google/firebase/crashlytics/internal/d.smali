.class public final Lcom/google/firebase/crashlytics/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/d$b;
    }
.end annotation


# static fields
.field private static final MISSING_NATIVE_SESSION_FILE_PROVIDER:Lcom/google/firebase/crashlytics/internal/h;


# instance fields
.field private final availableNativeComponent:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/crashlytics/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field private final deferredNativeComponent:Lo4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/a<",
            "Lcom/google/firebase/crashlytics/internal/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/d$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/internal/d$b;-><init>(Lcom/google/firebase/crashlytics/internal/d$a;)V

    .line 7
    .line 8
    sput-object v0, Lcom/google/firebase/crashlytics/internal/d;->MISSING_NATIVE_SESSION_FILE_PROVIDER:Lcom/google/firebase/crashlytics/internal/h;

    .line 9
    return-void
.end method

.method public constructor <init>(Lo4/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/a<",
            "Lcom/google/firebase/crashlytics/internal/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/d;->availableNativeComponent:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/d;->deferredNativeComponent:Lo4/a;

    .line 14
    .line 15
    new-instance v0, Lcom/google/firebase/crashlytics/internal/b;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/b;-><init>(Lcom/google/firebase/crashlytics/internal/d;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Lo4/a;->a(Lo4/a$a;)V

    .line 22
    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/crashlytics/internal/d;Lo4/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/d;->g(Lo4/b;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/g0;Lo4/b;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/google/firebase/crashlytics/internal/d;->h(Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/g0;Lo4/b;)V

    return-void
.end method

.method private synthetic g(Lo4/b;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "Crashlytics native component now available."

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/d;->availableNativeComponent:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lo4/b;->get()Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/google/firebase/crashlytics/internal/a;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method private static synthetic h(Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/g0;Lo4/b;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-interface {p5}, Lo4/b;->get()Ljava/lang/Object;

    .line 4
    move-result-object p5

    .line 5
    move-object v0, p5

    .line 6
    .line 7
    check-cast v0, Lcom/google/firebase/crashlytics/internal/a;

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-wide v3, p2

    .line 11
    move-object v5, p4

    .line 12
    .line 13
    .line 14
    invoke-interface/range {v0 .. v5}, Lcom/google/firebase/crashlytics/internal/a;->a(Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/g0;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/g0;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/firebase/crashlytics/internal/model/g0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "Deferring native open session: "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->i(Ljava/lang/String;)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/d;->deferredNativeComponent:Lo4/a;

    .line 27
    .line 28
    new-instance v7, Lcom/google/firebase/crashlytics/internal/c;

    .line 29
    move-object v1, v7

    .line 30
    move-object v2, p1

    .line 31
    move-object v3, p2

    .line 32
    move-wide v4, p3

    .line 33
    move-object v6, p5

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/crashlytics/internal/c;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/g0;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v7}, Lo4/a;->a(Lo4/a$a;)V

    .line 40
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/h;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/d;->availableNativeComponent:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/crashlytics/internal/a;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/google/firebase/crashlytics/internal/d;->MISSING_NATIVE_SESSION_FILE_PROVIDER:Lcom/google/firebase/crashlytics/internal/h;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/internal/a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/h;

    .line 17
    move-result-object p1

    .line 18
    :goto_0
    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/d;->availableNativeComponent:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/crashlytics/internal/a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/a;->c()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/d;->availableNativeComponent:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/crashlytics/internal/a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/internal/a;->d(Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method
