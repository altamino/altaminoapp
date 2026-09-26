.class public Lcom/google/i18n/phonenumbers/g;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/g$a;
    }
.end annotation


# instance fields
.field private errorType:Lcom/google/i18n/phonenumbers/g$a;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/g;->message:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/g;->errorType:Lcom/google/i18n/phonenumbers/g$a;

    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/google/i18n/phonenumbers/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/g;->errorType:Lcom/google/i18n/phonenumbers/g$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Error type: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/g;->errorType:Lcom/google/i18n/phonenumbers/g$a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ". "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/g;->message:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
