.class public Lio/ktor/client/engine/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private pipelining:Z

.field private proxy:Ljava/net/Proxy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private threadsCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    .line 6
    iput v0, p0, Lio/ktor/client/engine/g;->threadsCount:I

    .line 7
    return-void
.end method


# virtual methods
.method public final a()Ljava/net/Proxy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/engine/g;->proxy:Ljava/net/Proxy;

    return-object v0
.end method
