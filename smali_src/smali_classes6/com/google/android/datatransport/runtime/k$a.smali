.class final Lcom/google/android/datatransport/runtime/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/datatransport/runtime/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/k;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/k;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/datatransport/runtime/k$a;->INSTANCE:Lcom/google/android/datatransport/runtime/k;

    .line 8
    return-void
.end method

.method static synthetic a()Lcom/google/android/datatransport/runtime/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/k$a;->INSTANCE:Lcom/google/android/datatransport/runtime/k;

    return-object v0
.end method
