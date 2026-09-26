.class public abstract Lk7/b$d;
.super Lk7/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lk7/b;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    return-void
.end method


# virtual methods
.method public abstract d()Lio/ktor/utils/io/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
