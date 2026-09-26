.class public final Lcom/google/firebase/sessions/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/google/firebase/sessions/w$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/w$a;

    invoke-direct {v0}, Lcom/google/firebase/sessions/w$a;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/w$a;->$$INSTANCE:Lcom/google/firebase/sessions/w$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/firebase/sessions/w;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/c;->INSTANCE:Lcom/google/firebase/c;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/firebase/m;->a(Lcom/google/firebase/c;)Lcom/google/firebase/f;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-class v1, Lcom/google/firebase/sessions/w;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "Firebase.app[SessionDatastore::class.java]"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast v0, Lcom/google/firebase/sessions/w;

    .line 20
    return-object v0
.end method
