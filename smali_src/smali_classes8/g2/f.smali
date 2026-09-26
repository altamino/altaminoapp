.class public abstract Lg2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg2/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a()Lg2/f$a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lg2/a$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lg2/a$b;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/i;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
