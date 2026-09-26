.class public final Lkotlinx/coroutines/l1$d;
.super Lkotlinx/coroutines/internal/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/q0<",
        "Lkotlinx/coroutines/l1$c;",
        ">;"
    }
.end annotation


# instance fields
.field public timeNow:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/internal/q0;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lkotlinx/coroutines/l1$d;->timeNow:J

    .line 6
    return-void
.end method
