.class public final Lio/ktor/util/pipeline/i$a;
.super Lio/ktor/util/pipeline/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/pipeline/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final relativeTo:Lio/ktor/util/pipeline/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/util/pipeline/h;)V
    .locals 1
    .param p1    # Lio/ktor/util/pipeline/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "relativeTo"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/i;-><init>(Lkotlin/jvm/internal/k;)V

    .line 10
    .line 11
    iput-object p1, p0, Lio/ktor/util/pipeline/i$a;->relativeTo:Lio/ktor/util/pipeline/h;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lio/ktor/util/pipeline/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/util/pipeline/i$a;->relativeTo:Lio/ktor/util/pipeline/h;

    return-object v0
.end method
