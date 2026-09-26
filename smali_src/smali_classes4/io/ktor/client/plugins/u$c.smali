.class public final Lio/ktor/client/plugins/u$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final request:Li7/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final response:Lio/ktor/client/statement/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final retryCount:I


# direct methods
.method public constructor <init>(Li7/d;Lio/ktor/client/statement/c;Ljava/lang/Throwable;I)V
    .locals 1
    .param p1    # Li7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/statement/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "request"

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
    iput-object p1, p0, Lio/ktor/client/plugins/u$c;->request:Li7/d;

    .line 11
    .line 12
    iput-object p2, p0, Lio/ktor/client/plugins/u$c;->response:Lio/ktor/client/statement/c;

    .line 13
    .line 14
    iput-object p3, p0, Lio/ktor/client/plugins/u$c;->cause:Ljava/lang/Throwable;

    .line 15
    .line 16
    iput p4, p0, Lio/ktor/client/plugins/u$c;->retryCount:I

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Li7/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/u$c;->request:Li7/d;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/client/plugins/u$c;->retryCount:I

    return v0
.end method
