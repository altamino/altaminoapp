.class public final Lh2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh2/b$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lh2/b;


# instance fields
.field private final storage_metrics_:Lh2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lh2/b$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lh2/b$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lh2/b$a;->a()Lh2/b;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lh2/b;->DEFAULT_INSTANCE:Lh2/b;

    .line 12
    return-void
.end method

.method constructor <init>(Lh2/e;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lh2/b;->storage_metrics_:Lh2/e;

    .line 6
    return-void
.end method

.method public static b()Lh2/b$a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lh2/b$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lh2/b$a;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Lh2/e;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x1
    .end annotation

    .line 1
    iget-object v0, p0, Lh2/b;->storage_metrics_:Lh2/e;

    return-object v0
.end method
