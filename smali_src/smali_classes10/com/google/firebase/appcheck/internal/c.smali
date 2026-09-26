.class public final Lcom/google/firebase/appcheck/internal/c;
.super Lx3/d;
.source "SourceFile"


# static fields
.field static final DUMMY_TOKEN:Ljava/lang/String; = "eyJlcnJvciI6IlVOS05PV05fRVJST1IifQ=="
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final error:Lcom/google/firebase/l;

.field private final token:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/firebase/l;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lx3/d;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/c;->token:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/c;->error:Lcom/google/firebase/l;

    .line 11
    return-void
.end method

.method public static a(Lx3/c;)Lcom/google/firebase/appcheck/internal/c;
    .locals 2
    .param p0    # Lx3/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    new-instance v0, Lcom/google/firebase/appcheck/internal/c;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lx3/c;->b()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Lcom/google/firebase/appcheck/internal/c;-><init>(Ljava/lang/String;Lcom/google/firebase/l;)V

    .line 14
    return-object v0
.end method
