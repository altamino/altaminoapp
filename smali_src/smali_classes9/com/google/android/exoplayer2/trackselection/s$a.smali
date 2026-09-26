.class public final Lcom/google/android/exoplayer2/trackselection/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ETSDefinition"


# instance fields
.field public final group:Lcom/google/android/exoplayer2/source/f1;

.field public final tracks:[I

.field public final type:I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/f1;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/trackselection/s$a;-><init>(Lcom/google/android/exoplayer2/source/f1;[II)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/f1;[II)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p2

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v1, "ETSDefinition"

    const-string v2, "Empty tracks are not allowed"

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/s$a;->group:Lcom/google/android/exoplayer2/source/f1;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/s$a;->tracks:[I

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/s$a;->type:I

    return-void
.end method
