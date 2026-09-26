.class public Lcom/linkedin/urls/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/urls/a$a;
    }
.end annotation


# instance fields
.field private end:I

.field private start:I

.field private final type:Lcom/linkedin/urls/a$a;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/linkedin/urls/a$a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/linkedin/urls/a;->start:I

    .line 6
    .line 7
    iput p2, p0, Lcom/linkedin/urls/a;->end:I

    .line 8
    .line 9
    iput-object p3, p0, Lcom/linkedin/urls/a;->value:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/linkedin/urls/a;->type:Lcom/linkedin/urls/a$a;

    .line 12
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/linkedin/urls/a;->end:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/linkedin/urls/a;->start:I

    return v0
.end method

.method public c()Lcom/linkedin/urls/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/linkedin/urls/a;->type:Lcom/linkedin/urls/a$a;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/linkedin/urls/a;->value:Ljava/lang/String;

    return-object v0
.end method
