.class final Lorg/jsoup/parser/Token$Doctype;
.super Lorg/jsoup/parser/Token;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Doctype"
.end annotation


# instance fields
.field forceQuirks:Z

.field final name:Ljava/lang/StringBuilder;

.field pubSysKey:Ljava/lang/String;

.field final publicIdentifier:Ljava/lang/StringBuilder;

.field final systemIdentifier:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$1;)V

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    iput-object v1, p0, Lorg/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->publicIdentifier:Ljava/lang/StringBuilder;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 31
    .line 32
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    .line 33
    .line 34
    iput-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    .line 35
    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method getPubSysKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    return-object v0
.end method

.method getPublicIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->publicIdentifier:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSystemIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isForceQuirks()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    return v0
.end method

.method reset()Lorg/jsoup/parser/Token;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->publicIdentifier:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lorg/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    .line 14
    .line 15
    iget-object v0, p0, Lorg/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lorg/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 22
    return-object p0
.end method
