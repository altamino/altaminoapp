.class Lcom/squareup/seismic/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/seismic/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private head:Lcom/squareup/seismic/a$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method a()Lcom/squareup/seismic/a$b;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/squareup/seismic/a$c;->head:Lcom/squareup/seismic/a$b;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/squareup/seismic/a$b;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/squareup/seismic/a$b;-><init>()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v1, v0, Lcom/squareup/seismic/a$b;->next:Lcom/squareup/seismic/a$b;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/squareup/seismic/a$c;->head:Lcom/squareup/seismic/a$b;

    .line 15
    :goto_0
    return-object v0
.end method

.method b(Lcom/squareup/seismic/a$b;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/squareup/seismic/a$c;->head:Lcom/squareup/seismic/a$b;

    .line 3
    .line 4
    iput-object v0, p1, Lcom/squareup/seismic/a$b;->next:Lcom/squareup/seismic/a$b;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/squareup/seismic/a$c;->head:Lcom/squareup/seismic/a$b;

    .line 7
    return-void
.end method
