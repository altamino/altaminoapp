.class public final Lcom/google/android/play/integrity/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/integrity/internal/j;


# static fields
.field private static final a:Lcom/google/android/play/integrity/internal/k;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/integrity/internal/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/play/integrity/internal/k;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/play/integrity/internal/k;->a:Lcom/google/android/play/integrity/internal/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/integrity/internal/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/android/play/integrity/internal/j;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/play/integrity/internal/k;

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/play/integrity/internal/k;-><init>(Ljava/lang/Object;)V

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 11
    .line 12
    const-string v0, "instance cannot be null"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/k;->b:Ljava/lang/Object;

    return-object v0
.end method
