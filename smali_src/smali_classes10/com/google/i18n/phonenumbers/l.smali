.class public Lcom/google/i18n/phonenumbers/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private exampleNumber_:Ljava/lang/String;

.field private hasExampleNumber:Z

.field private hasNationalNumberPattern:Z

.field private nationalNumberPattern_:Ljava/lang/String;

.field private possibleLengthLocalOnly_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private possibleLength_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/l;->nationalNumberPattern_:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/l;->possibleLength_:Ljava/util/List;

    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/l;->possibleLengthLocalOnly_:Ljava/util/List;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/l;->exampleNumber_:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/l;->nationalNumberPattern_:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/l;->possibleLength_:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public c()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/l;->possibleLength_:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/l;->possibleLength_:Ljava/util/List;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/l;->possibleLengthLocalOnly_:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/l;->possibleLengthLocalOnly_:Ljava/util/List;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/l;->hasExampleNumber:Z

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/l;->exampleNumber_:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/l;->hasNationalNumberPattern:Z

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/l;->nationalNumberPattern_:Ljava/lang/String;

    return-object p0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/l;->h(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/l;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    .line 21
    :goto_0
    if-ge v2, v0, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/l;->possibleLength_:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 27
    move-result v4

    .line 28
    .line 29
    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    .line 34
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 41
    move-result v0

    .line 42
    .line 43
    :goto_1
    if-ge v1, v0, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/l;->possibleLengthLocalOnly_:Ljava/util/List;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 49
    move-result v3

    .line 50
    .line 51
    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/l;->g(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/l;

    .line 73
    :cond_3
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/l;->hasNationalNumberPattern:Z

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/l;->hasNationalNumberPattern:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/l;->nationalNumberPattern_:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/l;->c()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    .line 25
    :goto_0
    if-ge v2, v0, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/l;->possibleLength_:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    check-cast v3, Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result v3

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/l;->e()I

    .line 47
    move-result v0

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 51
    .line 52
    :goto_1
    if-ge v1, v0, :cond_2

    .line 53
    .line 54
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/l;->possibleLengthLocalOnly_:Ljava/util/List;

    .line 55
    .line 56
    .line 57
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    check-cast v2, Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 64
    move-result v2

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_2
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/l;->hasExampleNumber:Z

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 76
    .line 77
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/l;->hasExampleNumber:Z

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/l;->exampleNumber_:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 85
    :cond_3
    return-void
.end method
