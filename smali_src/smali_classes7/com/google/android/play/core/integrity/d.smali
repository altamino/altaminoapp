.class public abstract Lcom/google/android/play/core/integrity/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/integrity/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/play/core/integrity/d$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/play/core/integrity/p;

    invoke-direct {v0}, Lcom/google/android/play/core/integrity/p;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()Landroid/net/Network;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end method

.method public abstract c()Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
.end method
