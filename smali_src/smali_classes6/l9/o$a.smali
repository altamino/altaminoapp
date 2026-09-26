.class public abstract Ll9/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll9/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ll9/o$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private keyAndMask:I

.field private layerAddress:I

.field private treeAddress:J

.field private final type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ll9/o$a;->layerAddress:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ll9/o$a;->treeAddress:J

    iput v0, p0, Ll9/o$a;->keyAndMask:I

    iput p1, p0, Ll9/o$a;->type:I

    return-void
.end method

.method static synthetic a(Ll9/o$a;)I
    .locals 0

    .line 1
    iget p0, p0, Ll9/o$a;->layerAddress:I

    return p0
.end method

.method static synthetic b(Ll9/o$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Ll9/o$a;->treeAddress:J

    return-wide v0
.end method

.method static synthetic c(Ll9/o$a;)I
    .locals 0

    .line 1
    iget p0, p0, Ll9/o$a;->type:I

    return p0
.end method

.method static synthetic d(Ll9/o$a;)I
    .locals 0

    .line 1
    iget p0, p0, Ll9/o$a;->keyAndMask:I

    return p0
.end method


# virtual methods
.method protected abstract e()Ll9/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected f(I)Ll9/o$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Ll9/o$a;->keyAndMask:I

    invoke-virtual {p0}, Ll9/o$a;->e()Ll9/o$a;

    move-result-object p1

    return-object p1
.end method

.method protected g(I)Ll9/o$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Ll9/o$a;->layerAddress:I

    invoke-virtual {p0}, Ll9/o$a;->e()Ll9/o$a;

    move-result-object p1

    return-object p1
.end method

.method protected h(J)Ll9/o$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Ll9/o$a;->treeAddress:J

    invoke-virtual {p0}, Ll9/o$a;->e()Ll9/o$a;

    move-result-object p1

    return-object p1
.end method
