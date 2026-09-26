.class public final Lh2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh2/e$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lh2/e;


# instance fields
.field private final current_cache_size_bytes_:J

.field private final max_cache_size_bytes_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lh2/e$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lh2/e$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lh2/e$a;->a()Lh2/e;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lh2/e;->DEFAULT_INSTANCE:Lh2/e;

    .line 12
    return-void
.end method

.method constructor <init>(JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lh2/e;->current_cache_size_bytes_:J

    .line 6
    .line 7
    iput-wide p3, p0, Lh2/e;->max_cache_size_bytes_:J

    .line 8
    return-void
.end method

.method public static c()Lh2/e$a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lh2/e$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lh2/e$a;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x1
    .end annotation

    .line 1
    iget-wide v0, p0, Lh2/e;->current_cache_size_bytes_:J

    return-wide v0
.end method

.method public b()J
    .locals 2
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x2
    .end annotation

    .line 1
    iget-wide v0, p0, Lh2/e;->max_cache_size_bytes_:J

    return-wide v0
.end method
