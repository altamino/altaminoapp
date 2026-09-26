.class public interface abstract Lcom/google/android/exoplayer2/mediacodec/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/mediacodec/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/j;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/j;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/l$b;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/l$b;

    .line 8
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/mediacodec/l$a;)Lcom/google/android/exoplayer2/mediacodec/l;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
