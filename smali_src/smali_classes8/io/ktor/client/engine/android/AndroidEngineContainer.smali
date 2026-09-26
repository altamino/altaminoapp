.class public final Lio/ktor/client/engine/android/AndroidEngineContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/client/c;


# instance fields
.field private final factory:Lio/ktor/client/engine/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/client/engine/h<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lio/ktor/client/engine/android/a;->INSTANCE:Lio/ktor/client/engine/android/a;

    .line 6
    .line 7
    iput-object v0, p0, Lio/ktor/client/engine/android/AndroidEngineContainer;->factory:Lio/ktor/client/engine/h;

    .line 8
    return-void
.end method


# virtual methods
.method public a()Lio/ktor/client/engine/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/client/engine/h<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/engine/android/AndroidEngineContainer;->factory:Lio/ktor/client/engine/h;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Android"

    return-object v0
.end method
