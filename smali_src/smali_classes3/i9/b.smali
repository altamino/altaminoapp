.class public Li9/b;
.super Lorg/bouncycastle/crypto/params/a;
.source "SourceFile"


# instance fields
.field private docLength:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/a;-><init>(Z)V

    iput p2, p0, Li9/b;->docLength:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Li9/b;->docLength:I

    return v0
.end method
