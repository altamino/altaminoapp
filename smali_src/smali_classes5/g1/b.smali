.class public Lg1/b;
.super Lg1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lg1/a<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Exception;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private d:Lg1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/c<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private volatile e:Z
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private volatile f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lg1/a;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lg1/b;->a:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v0, Lg1/c;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lg1/c;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lg1/b;->d:Lg1/c;

    .line 18
    return-void
.end method
