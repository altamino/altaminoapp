.class public final Lcom/google/firebase/sessions/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/g$a;
    }
.end annotation


# static fields
.field private static final AQS_LOG_SOURCE:Ljava/lang/String; = "FIREBASE_APPQUALITY_SESSION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/google/firebase/sessions/g$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EventGDTLogger"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final transportFactoryProvider:Lo4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/b<",
            "Lf2/g;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/g$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/google/firebase/sessions/g;->Companion:Lcom/google/firebase/sessions/g$a;

    return-void
.end method

.method public constructor <init>(Lo4/b;)V
    .locals 1
    .param p1    # Lo4/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/b<",
            "Lf2/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "transportFactoryProvider"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/firebase/sessions/g;->transportFactoryProvider:Lo4/b;

    .line 11
    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/sessions/g;Lcom/google/firebase/sessions/z;)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/g;->c(Lcom/google/firebase/sessions/z;)[B

    move-result-object p0

    return-object p0
.end method

.method private final c(Lcom/google/firebase/sessions/z;)[B
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/sessions/a0;->INSTANCE:Lcom/google/firebase/sessions/a0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/sessions/a0;->c()Lj4/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lj4/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "SessionEvents.SESSION_EVENT_ENCODER.encode(value)"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v1, "Session Event: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-string v1, "EventGDTLogger"

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    sget-object v0, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 43
    move-result-object p1

    .line 44
    .line 45
    const-string v0, "this as java.lang.String).getBytes(charset)"

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/firebase/sessions/z;)V
    .locals 5
    .param p1    # Lcom/google/firebase/sessions/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sessionEvent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/sessions/g;->transportFactoryProvider:Lo4/b;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lo4/b;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lf2/g;

    .line 14
    .line 15
    const-string v1, "json"

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lf2/b;->b(Ljava/lang/String;)Lf2/b;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    new-instance v2, Lcom/google/firebase/sessions/f;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/google/firebase/sessions/f;-><init>(Lcom/google/firebase/sessions/g;)V

    .line 25
    .line 26
    const-string v3, "FIREBASE_APPQUALITY_SESSION"

    .line 27
    .line 28
    const-class v4, Lcom/google/firebase/sessions/z;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v3, v4, v1, v2}, Lf2/g;->a(Ljava/lang/String;Ljava/lang/Class;Lf2/b;Lf2/e;)Lf2/f;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lf2/c;->d(Ljava/lang/Object;)Lf2/c;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p1}, Lf2/f;->b(Lf2/c;)V

    .line 40
    return-void
.end method
