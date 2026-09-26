.class public abstract Lorg/bouncycastle/pqc/crypto/lms/k;
.super Lorg/bouncycastle/crypto/params/a;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/c;


# direct methods
.method protected constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
