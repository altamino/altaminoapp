.class public final Lcom/google/android/play/core/integrity/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/integrity/internal/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/play/integrity/internal/x;

    .line 3
    .line 4
    const-string v1, "IntegrityService"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/play/integrity/internal/x;-><init>(Ljava/lang/String;)V

    .line 8
    return-object v0
.end method
