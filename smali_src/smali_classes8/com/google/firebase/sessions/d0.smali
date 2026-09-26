.class public final Lcom/google/firebase/sessions/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/d0$b;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/d0$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private currentSession:Lcom/google/firebase/sessions/y;

.field private final firstSessionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sessionIndex:I

.field private final timeProvider:Lcom/google/firebase/sessions/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uuidGenerator:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/d0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/d0$b;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/google/firebase/sessions/d0;->Companion:Lcom/google/firebase/sessions/d0$b;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/sessions/k0;Le8/a;)V
    .locals 1
    .param p1    # Lcom/google/firebase/sessions/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/k0;",
            "Le8/a<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "timeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuidGenerator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/sessions/d0;->timeProvider:Lcom/google/firebase/sessions/k0;

    iput-object p2, p0, Lcom/google/firebase/sessions/d0;->uuidGenerator:Le8/a;

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/sessions/d0;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/sessions/d0;->firstSessionId:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/firebase/sessions/d0;->sessionIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/sessions/k0;Le8/a;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 3
    sget-object p2, Lcom/google/firebase/sessions/d0$a;->INSTANCE:Lcom/google/firebase/sessions/d0$a;

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/sessions/d0;-><init>(Lcom/google/firebase/sessions/k0;Le8/a;)V

    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/sessions/d0;->uuidGenerator:Le8/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v0, "uuidGenerator().toString()"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    const-string v2, "-"

    .line 20
    .line 21
    const-string v3, ""

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x4

    .line 24
    const/4 v6, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static/range {v1 .. v6}, Lkotlin/text/k;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/firebase/sessions/y;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/firebase/sessions/d0;->sessionIndex:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/google/firebase/sessions/d0;->sessionIndex:I

    .line 7
    .line 8
    new-instance v7, Lcom/google/firebase/sessions/y;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/firebase/sessions/d0;->firstSessionId:Ljava/lang/String;

    .line 13
    :goto_0
    move-object v2, v0

    .line 14
    goto :goto_1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/sessions/d0;->b()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :goto_1
    iget-object v3, p0, Lcom/google/firebase/sessions/d0;->firstSessionId:Ljava/lang/String;

    .line 22
    .line 23
    iget v4, p0, Lcom/google/firebase/sessions/d0;->sessionIndex:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/firebase/sessions/d0;->timeProvider:Lcom/google/firebase/sessions/k0;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Lcom/google/firebase/sessions/k0;->a()J

    .line 29
    move-result-wide v5

    .line 30
    move-object v1, v7

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/sessions/y;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 34
    .line 35
    iput-object v7, p0, Lcom/google/firebase/sessions/d0;->currentSession:Lcom/google/firebase/sessions/y;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/firebase/sessions/d0;->c()Lcom/google/firebase/sessions/y;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public final c()Lcom/google/firebase/sessions/y;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/sessions/d0;->currentSession:Lcom/google/firebase/sessions/y;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "currentSession"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method
