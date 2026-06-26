.class public Lcom/linkedin/urls/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/urls/Entity$Type;
    }
.end annotation


# instance fields
.field private end:I

.field private start:I

.field private final type:Lcom/linkedin/urls/Entity$Type;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/linkedin/urls/Entity$Type;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/linkedin/urls/Entity;->start:I

    .line 19
    iput p2, p0, Lcom/linkedin/urls/Entity;->end:I

    .line 20
    iput-object p3, p0, Lcom/linkedin/urls/Entity;->value:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/linkedin/urls/Entity;->type:Lcom/linkedin/urls/Entity$Type;

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/linkedin/urls/Entity;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/linkedin/urls/Entity;->start:I

    return v0
.end method

.method public getType()Lcom/linkedin/urls/Entity$Type;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/linkedin/urls/Entity;->type:Lcom/linkedin/urls/Entity$Type;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/linkedin/urls/Entity;->value:Ljava/lang/String;

    return-object v0
.end method
