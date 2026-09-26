.class public abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/f;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method static a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.datatransport.events"

    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static c()I
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/t0;->SCHEMA_VERSION:I

    .line 3
    return v0
.end method

.method static d()Lcom/google/android/datatransport/runtime/scheduling/persistence/e;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/e;->DEFAULT:Lcom/google/android/datatransport/runtime/scheduling/persistence/e;

    .line 3
    return-object v0
.end method
