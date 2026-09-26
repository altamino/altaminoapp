.class public Lcom/google/i18n/phonenumbers/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private domesticCarrierCodeFormattingRule_:Ljava/lang/String;

.field private format_:Ljava/lang/String;

.field private hasDomesticCarrierCodeFormattingRule:Z

.field private hasFormat:Z

.field private hasNationalPrefixFormattingRule:Z

.field private hasNationalPrefixOptionalWhenFormatting:Z

.field private hasPattern:Z

.field private leadingDigitsPattern_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nationalPrefixFormattingRule_:Ljava/lang/String;

.field private nationalPrefixOptionalWhenFormatting_:Z

.field private pattern_:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i;->pattern_:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i;->format_:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/i;->leadingDigitsPattern_:Ljava/util/List;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/i;->nationalPrefixOptionalWhenFormatting_:Z

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i;->leadingDigitsPattern_:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i;->hasDomesticCarrierCodeFormattingRule:Z

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i;->hasFormat:Z

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i;->format_:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i;->hasNationalPrefixFormattingRule:Z

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i;->nationalPrefixFormattingRule_:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)Lcom/google/i18n/phonenumbers/i;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i;->hasNationalPrefixOptionalWhenFormatting:Z

    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/i;->nationalPrefixOptionalWhenFormatting_:Z

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i;->hasPattern:Z

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i;->pattern_:Ljava/lang/String;

    return-object p0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i;->f(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i;->c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    :goto_0
    if-ge v1, v0, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/i;->leadingDigitsPattern_:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i;->d(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i;

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/i;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i;

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    .line 63
    move-result p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/i;->e(Z)Lcom/google/i18n/phonenumbers/i;

    .line 67
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i;->pattern_:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i;->format_:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i;->a()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    :goto_0
    if-ge v1, v0, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/i;->leadingDigitsPattern_:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i;->hasNationalPrefixFormattingRule:Z

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i;->hasNationalPrefixFormattingRule:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 49
    .line 50
    :cond_1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i;->hasDomesticCarrierCodeFormattingRule:Z

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i;->hasDomesticCarrierCodeFormattingRule:Z

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 63
    .line 64
    :cond_2
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i;->nationalPrefixOptionalWhenFormatting_:Z

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 68
    return-void
.end method
