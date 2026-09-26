.class public Lcom/narvii/util/http/NameValuePair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/http/NameValuePair;->name:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/util/http/NameValuePair;->value:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/NameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/http/NameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method
