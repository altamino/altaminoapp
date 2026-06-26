.class public Lcom/narvii/monetization/bubble/ninePatch/Div;
.super Ljava/lang/Object;
.source "Div.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public start:I

.field public stop:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 24
    iput p2, p0, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 36
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget v0, p0, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    .line 30
    iget v0, p0, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    return-void
.end method
