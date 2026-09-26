.class public final Ll9/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final height:I

.field private final value:[B


# direct methods
.method protected constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll9/u;->height:I

    iput-object p2, p0, Ll9/u;->value:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/u;->height:I

    return v0
.end method

.method public b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/u;->value:[B

    invoke-static {v0}, Ll9/a0;->c([B)[B

    move-result-object v0

    return-object v0
.end method
