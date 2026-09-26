.class public final Lh2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private storage_metrics_:Lh2/e;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lh2/b$a;->storage_metrics_:Lh2/e;

    .line 7
    return-void
.end method


# virtual methods
.method public a()Lh2/b;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lh2/b;

    .line 3
    .line 4
    iget-object v1, p0, Lh2/b$a;->storage_metrics_:Lh2/e;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lh2/b;-><init>(Lh2/e;)V

    .line 8
    return-object v0
.end method

.method public b(Lh2/e;)Lh2/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lh2/b$a;->storage_metrics_:Lh2/e;

    return-object p0
.end method
