.class public Lcom/narvii/monetization/bubble/ninePatch/Div;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public start:I

.field public stop:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

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

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 10
    move-result p1

    .line 11
    .line 12
    iput p1, p0, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 13
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/monetization/bubble/ninePatch/Div;->start:I

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/monetization/bubble/ninePatch/Div;->stop:I

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    .line 11
    return-void
.end method
