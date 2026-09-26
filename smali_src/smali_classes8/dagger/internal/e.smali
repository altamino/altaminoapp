.class public final Ldagger/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private volatile instance:Ljava/lang/Object;

.field private volatile provider:Ldagger/internal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Ldagger/internal/e;->UNINITIALIZED:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>(Ldagger/internal/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Ldagger/internal/e;->UNINITIALIZED:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Ldagger/internal/e;->instance:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p1, p0, Ldagger/internal/e;->provider:Ldagger/internal/c;

    .line 10
    return-void
.end method

.method public static a(Ldagger/internal/c;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Ldagger/internal/c<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Ldagger/internal/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p0, Ldagger/internal/e;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    instance-of v0, p0, Ldagger/internal/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ldagger/internal/e;

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Ldagger/internal/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    check-cast p0, Ldagger/internal/c;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Ldagger/internal/e;-><init>(Ldagger/internal/c;)V

    .line 21
    return-object v0

    .line 22
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ldagger/internal/e;->instance:Ljava/lang/Object;

    .line 3
    .line 4
    sget-object v1, Ldagger/internal/e;->UNINITIALIZED:Ljava/lang/Object;

    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Ldagger/internal/e;->provider:Ldagger/internal/c;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Ldagger/internal/e;->instance:Ljava/lang/Object;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Ldagger/internal/e;->instance:Ljava/lang/Object;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    iput-object v1, p0, Ldagger/internal/e;->provider:Ldagger/internal/c;

    .line 23
    :cond_1
    :goto_0
    return-object v0
.end method
