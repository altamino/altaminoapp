.class public abstract Lcom/google/android/datatransport/runtime/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
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


# virtual methods
.method public abstract a()Lcom/google/android/datatransport/runtime/p;
.end method

.method public abstract b(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/p$a;
.end method

.method public abstract c([B)Lcom/google/android/datatransport/runtime/p$a;
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract d(Lf2/d;)Lcom/google/android/datatransport/runtime/p$a;
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end method
